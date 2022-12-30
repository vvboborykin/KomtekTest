{*******************************************************
* Project: KomtekTest
* Unit: FindFormUnit.pas
* Description: Форма интерфейса пользователя для поиска по фамилии
*
* Created: 28.12.2022 11:11:52
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Search.FrmFindUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, System.Actions, Vcl.ActnList, Vcl.ImgList, cxImageList,
  dxLayoutContainer, cxTextEdit, cxClasses, dxLayoutControl, Search.EngineUnit,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxCheckBox;

type
  TFrmFind = class(TLayoutForm)
    edFind: TcxTextEdit;
    litFind: TdxLayoutItem;
    aclFind: TActionList;
    iml24: TcxImageList;
    actFind: TAction;
    btnFind: TcxButton;
    litFindButton: TdxLayoutItem;
    actClear: TAction;
    btnClear: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    chkPartial: TcxCheckBox;
    litPartial: TdxLayoutItem;
    procedure actClearExecute(Sender: TObject);
    procedure actFindExecute(Sender: TObject);
    procedure edFindKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chkPartialPropertiesEditValueChanged(Sender: TObject);
  strict private
  private
    FHumanSearchEngine: IHumanSearchEngine;
    procedure SetHumanSearchEngine(const Value: IHumanSearchEngine);
  strict protected
    /// <summary>TFrmFind.ClearFindFields
    /// Очистить поля поиска
    /// </summary>
    procedure ClearFindFields; virtual;
    /// <summary>TFrmFind.FindHuman
    /// Провести поиск людей
    /// </summary>
    procedure FindHuman; virtual;
    /// <summary>TFrmFind.GetSearchParamsFromFormControls
    /// Собрать параметры поиска в запись TSearchParameters
    /// </summary>
    /// <returns> TSearchParameters
    /// </returns>
    function GetSearchParamsFromFormControls: TSearchParameters; virtual;
  public
    /// <summary>TFrmFind.HumanSearchEngine
    /// Механизм поиска по фамилии
    /// </summary>
    /// type:IHumanSearchEngine
    property HumanSearchEngine: IHumanSearchEngine read FHumanSearchEngine write
        SetHumanSearchEngine;
  end;

  TFrmFindClass = class of TFrmFind;

  ESearchEngineNotSpecified = class(Exception)
  public
    constructor Create;
  end;

implementation

resourcestring
  SSearchEngineNotAssigned =
    'Для формы поиска по фамилии не задан механизм поиска';
  SHumanNotFound = 'Человек с указанной фамилией в БД не найден';

{$R *.dfm}

procedure TFrmFind.actClearExecute(Sender: TObject);
begin
  inherited;
  ClearFindFields();
  actFind.Execute;
end;

procedure TFrmFind.actFindExecute(Sender: TObject);
begin
  inherited;
  FindHuman();
end;

procedure TFrmFind.chkPartialPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  actFind.Execute;
end;

procedure TFrmFind.ClearFindFields;
begin
  edFind.Text := '';
end;

procedure TFrmFind.edFindKeyUp(Sender: TObject; var Key: Word; Shift:
    TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    Key := 0;
    actFind.Execute;
  end;
end;

procedure TFrmFind.FindHuman;
var
  vParams: TSearchParameters;
  vSurname: string;
begin
  vSurname := edFind.Text;
  if (FHumanSearchEngine <> nil) then
  begin
    vParams := GetSearchParamsFromFormControls();
    if not FHumanSearchEngine.FindHuman(vParams) then
      ShowMessage(SHumanNotFound);
  end
  else
    raise ESearchEngineNotSpecified.Create();
end;

function TFrmFind.GetSearchParamsFromFormControls: TSearchParameters;
begin
  Result.Surname := edFind.Text;
  Result.PartialSearch := chkPartial.Checked;
  Result.MinBirthDate := null;
  Result.MaxBirthDate := null;
  Result.MinCreateDate := null;
  Result.MaxCreateDate := null;
end;

procedure TFrmFind.SetHumanSearchEngine(const Value: IHumanSearchEngine);
begin
  if FHumanSearchEngine <> Value then
  begin
    FHumanSearchEngine := Value;
  end;
end;

constructor ESearchEngineNotSpecified.Create;
begin
  inherited Create(SSearchEngineNotAssigned);
end;

end.

