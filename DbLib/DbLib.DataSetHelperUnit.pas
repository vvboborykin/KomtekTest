
  {*******************************************************
* Project: VistaZslLoader.Vcl
* Unit: DataSetHelper.pas
* Description: Расширение функциональности TDataSet
*
* Created: 24.12.2022 11:09:55
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit DbLib.DataSetHelperUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, Data.DB;

type
  /// <summary>TDataSetHelper
  /// Расширение функциональности TDataSet
  /// </summary>
  TDataSetHelper = class helper for TDataSet
  public
    /// <summary>TDataSetHelper.CloseOpen
    /// Закрыть и открыть DataSet с восстановлением текущей записи
    /// </summary>
    procedure CloseOpen;
    /// <summary>TDataSetHelper.ForEachRecord
    /// Итератор по записям DataSet
    /// </summary>
    /// <param name="AProc"> (TProc) Процедура выполняемая для записей</param>
    /// <param name="ADisableControls"> (Boolean) Отключать обновление визуальных
    /// компоненов подключенных к DataSet</param>
    /// <param name="AFilter"> (TFunc<Boolean>) Предикат отфильтровывающий
    /// обрабатываемые записи</param>
    /// <param name="ABreaker"> (TFunc<Boolean>) Предикат прерывания итерации</param>
    procedure ForEachRecord(AProc: TProc; ADisableControls: Boolean = True;
      AFilter: TFunc<Boolean> = nil; ABreaker: TFunc<Boolean> = nil);
    /// <summary>TDataSetHelper.ForEachField
    /// Итератор по полям DataSet
    /// </summary>
    /// <param name="AProc"> (TProc<TField>) Процедура выполняемая для полей</param>
    /// <param name="AFilter"> (TFunc<TField, Boolean>) Предикат отфильтровывающий
    /// обрабатываемые поля</param>
    /// <param name="ABreaker"> (TFunc<TField, Boolean>) Предикат прерывания
    /// итерации</param>
    procedure ForEachField(AProc: TProc<TField>; AFilter: TFunc<TField, Boolean>
      = nil; ABreaker: TFunc<TField, Boolean> = nil);
    /// <summary>TDataSetHelper.PostIfNeeded
    /// Зафиксировать изменения в DataSet если он в режиме вставки или редактирования
    /// </summary>
    procedure PostIfNeeded;
    procedure CancelIfNeeded;
    /// <summary>TDataSetHelper.EditIfNeeded
    /// Перевести DataSet в режим редактирования если он уже не находится в этом режиме
    /// </summary>
    procedure EditIfNeeded;
    /// <summary>TDataSetHelper.WithRestoreRecno
    /// Выполнить процедуру и восстановить текущую запись
    /// </summary>
    /// <param name="AProc"> (TProc) Процедура для выполнения</param>
    procedure WithRestoreRecno(AProc: TProc);
  end;

  EDataSetIsNotActive = class(Exception)
  public
    constructor Create;
  end;

implementation

resourcestring
  SErrDataSetIsNotActive = 'DataSet не активен';
  SErrForEachRecordAProcIsNil = 'TDataSetHelper.ForEachRecord AProc не задан';

procedure TDataSetHelper.CancelIfNeeded;
begin
  if State <> dsBrowse then
    Cancel;
end;

procedure TDataSetHelper.CloseOpen;
begin
  WithRestoreRecno(
    procedure
    begin
      DisableControls;
      try
        Close;
        Open;
      finally
        EnableControls;
      end;
    end);
end;

procedure TDataSetHelper.EditIfNeeded;
begin
  if State = dsBrowse then
    Edit;
end;

procedure TDataSetHelper.ForEachField(AProc: TProc<TField>; AFilter: TFunc<
  TField, Boolean> = nil; ABreaker: TFunc<TField, Boolean> = nil);
var
  I: Integer;
  vField: TField;
begin
  if not Assigned(AProc) then
    raise EArgumentException.Create(SErrForEachRecordAProcIsNil);

  if not Active then
    raise EDataSetIsNotActive.Create();

  for I := 0 to FieldCount - 1 do
  begin
    vField := Fields[I];

    if not Assigned(AFilter) or AFilter(vField) then
      AProc(vField);

    if Assigned(ABreaker) and ABreaker(vField) then
      Break;
    Next;
  end;
end;

procedure TDataSetHelper.ForEachRecord(AProc: TProc; ADisableControls: Boolean =
  True; AFilter: TFunc<Boolean> = nil; ABreaker: TFunc<Boolean> = nil);
begin
  if not Assigned(AProc) then
    raise EArgumentException.Create(SErrForEachRecordAProcIsNil);

  if not Active then
    raise EDataSetIsNotActive.Create();

  WithRestoreRecno(
    procedure
    begin
      if ADisableControls then
        DisableControls;

      try
        First;
        while not Eof do
        begin
          if not Assigned(AFilter) or AFilter() then
            AProc();

          if Assigned(ABreaker) and ABreaker() then
            Break;
          Next;
        end;
      finally
        if ADisableControls then
          EnableControls;
      end;
    end);
end;

procedure TDataSetHelper.PostIfNeeded;
begin
  if State <> dsBrowse then
    Post;
end;

procedure TDataSetHelper.WithRestoreRecno(AProc: TProc);
var
  vRecno: Integer;
begin
  if not Assigned(AProc) then
    raise EArgumentException.Create(SErrForEachRecordAProcIsNil);

  vRecno := RecNo;

  try
    AProc();
  finally
    if (vRecno >= 0) and (vRecno < RecordCount) then
      RecNo := vRecno;
  end;
end;

constructor EDataSetIsNotActive.Create;
begin
  inherited Create(SErrDataSetIsNotActive);
end;

end.

