{*******************************************************
* Project: KomtekTest
* Unit: VCL.DevExpressVisualValidator.pas
* Description: Класс для отображения ошибок при заполнении полей DataSet в редакторах DevExpress
*
* Created: 30.12.2022 11:47:27
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit VCL.DevExpressVisualValidator;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils, Data.DB,
  VCL.Controls, cxEdit, cxDBEdit, cxDB, System.Generics.Collections, VCL.Graphics;

type
  TValidateFieldEvent = reference to procedure(Sender: TObject; AField: TField;
    var AErrorText: TCaption);

  TDataSetEvents = class
    BeforePost: TDataSetNotifyEvent;
    AfterOpen: TDataSetNotifyEvent;
    procedure SaveEvents(DataSet: TDataSet);
    procedure RestoreEvents(DataSet: TDataSet);
  end;

  /// <summary>TDevExpressVisualValidator
  ///  Класс для отображения ошибок при заполнении полей DataSet в редакторах DevExpress
  /// </summary>
  TDevExpressVisualValidator = class
  strict private
    FFieldBindings: TDictionary<TcxCustomEdit, TField>;
    FEditColors: TDictionary<TcxCustomEdit, TColor>;
    FEditHints: TDictionary<TcxCustomEdit, String>;
    FDataSetEvents: TDictionary<TDataSet, TDataSetEvents>;
    FControlsOwner: TComponent;
    FDataSet: TDataSet;
    FOnValidateField: TValidateFieldEvent;
    FErrorColor: TColor;
    FErrorText: String;
    procedure SetErrorColor(const Value: TColor);
    procedure AddFieldBinding(AField: TField; AEdit: TcxCustomEdit);
    procedure BindDataSet(ADataSet: TDataSet);
    procedure BindEditToValidator(AEdit: TcxCustomEdit);
    procedure ClearDataSetEvents;
    procedure CollectFieldsBindings;
    function GetEditDataBinding(AEdit: TcxCustomEdit): TcxDBEditDataBinding;
    function GetEditField(AEdit: TcxCustomEdit): TField;
    function GetEditProperties(AEdit: TcxCustomEdit): TcxCustomEditProperties;
    procedure SetControlsOwner(const Value: TComponent);
    procedure SetDataSet(const Value: TDataSet);
    procedure TryFieldOnValidate(vField: TField; var ErrorText: TCaption);
    procedure UpdateEditColor(AEdit: TcxCustomEdit; AError: Boolean);
    procedure DataSetBeforePost(DataSet: TDataSet);
    procedure DataSetAfterOpen(DataSet: TDataSet);
  strict protected
    procedure DoValidateField(AField: TField; var AErrorText: TCaption); virtual;
    /// <summary>TDevExpressVisualValidator.ValidateEdit
    /// Обработчик валидации для редакторов полей
    /// </summary>
    /// <param name="Sender"> (TObject) </param>
    /// <param name="DisplayValue"> (Variant) </param>
    /// <param name="ErrorText"> (TCaption) </param>
    /// <param name="Error"> (Boolean) </param>
    procedure ValidateEdit(Sender: TObject; var DisplayValue: Variant; var
      ErrorText: TCaption; var Error: Boolean); virtual;
    /// <summary>TDevExpressVisualValidator.EditValueChanged
    /// Обработчик изменения значения редакторов полей
    /// </summary>
    /// <param name="Sender"> (TObject) </param>
    procedure EditValueChanged(Sender: TObject); virtual;
  public
    constructor Create(AControlsOwner: TComponent; ADataSet: TDataSet = nil);
    destructor Destroy; override;
    procedure SetFieldErrorText(AErrorText: TCaption);
    /// <summary>TDevExpressVisualValidator.ValidateDataSet
    /// Провести волидацию полей и отобразить ошибки
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    procedure ValidateDataSet(ADataSet: TDataSet);
    /// <summary>TDevExpressVisualValidator.ControlsOwner
    /// Компонент - владелец контролов
    /// </summary>
    /// type:TComponent
    property ControlsOwner: TComponent read FControlsOwner write
      SetControlsOwner;
    /// <summary>TDevExpressVisualValidator.DataSet
    /// DataSet для полей которого проводится вализация
    /// </summary>
    /// type:TDataSet
    property DataSet: TDataSet read FDataSet write SetDataSet;
    /// <summary>TDevExpressVisualValidator.ErrorColor
    /// Фоновый цвет для редакторов полей содержащих ошибки
    /// </summary>
    /// type:TColor
    property ErrorColor: TColor read FErrorColor write SetErrorColor;
    /// <summary>TDevExpressVisualValidator.OnValidateField
    /// Событие для обработки валидации полей
    /// </summary>
    /// type:TValidateFieldEvent
    property OnValidateField: TValidateFieldEvent read FOnValidateField write
      FOnValidateField;
  end;

implementation

uses
  Lib.ComponentHelper, TypInfo;

resourcestring
  SFieldShouldNotBeEmpty = 'Поле "%s" не должно быть пустым';

const
  SDataBinding = 'DataBinding';
  SProperties = 'Properties';
  cDefaultErrorColor: TColor = $00CCCCFF;

constructor TDevExpressVisualValidator.Create(AControlsOwner: TComponent;
    ADataSet: TDataSet = nil);
begin
  inherited Create;
  FDataSet := ADataSet;
  FControlsOwner := AControlsOwner;
  FFieldBindings := TDictionary<TcxCustomEdit, TField>.Create();
  FEditColors := TDictionary<TcxCustomEdit, TColor>.Create();
  FErrorColor := cDefaultErrorColor;
  FEditHints := TDictionary<TcxCustomEdit, String>.Create();
  FDataSetEvents := TDictionary<TDataSet, TDataSetEvents>.Create();
  CollectFieldsBindings();
end;

procedure TDevExpressVisualValidator.DataSetAfterOpen(DataSet: TDataSet);
var
  vEvents: TDataSetEvents;
begin
  if FDataSetEvents.TryGetValue(DataSet, vEvents) then
  begin
    if Assigned(vEvents.AfterOpen) then
      vEvents.AfterOpen(DataSet);
  end;
  ValidateDataSet(DataSet);
end;

procedure TDevExpressVisualValidator.DataSetBeforePost(DataSet: TDataSet);
var
  vEvents: TDataSetEvents;
begin
  if FDataSetEvents.TryGetValue(DataSet, vEvents) then
  begin
    if Assigned(vEvents.BeforePost) then
      vEvents.BeforePost(DataSet);
  end;
  ValidateDataSet(DataSet);
end;

destructor TDevExpressVisualValidator.Destroy;
begin
  ClearDataSetEvents();
  FreeAndNil(FDataSetEvents);
  FreeAndNil(FEditHints);
  FreeAndNil(FEditColors);
  FreeAndNil(FFieldBindings);
  inherited Destroy;
end;

procedure TDevExpressVisualValidator.EditValueChanged(Sender: TObject);
var
  DisplayValue: Variant;
  Error: Boolean;
  ErrorText: TCaption;
  vEdit: TObject;
begin
  for vEdit in FFieldBindings.Keys do
  begin
    Self.ValidateEdit(vEdit, DisplayValue, ErrorText, Error);
//    (vEdit as TcxCustomEdit).ValidateEdit(False);
  end;
end;

procedure TDevExpressVisualValidator.AddFieldBinding(AField: TField; AEdit:
    TcxCustomEdit);
begin
  FFieldBindings.AddOrSetValue(AEdit, AField);
  FEditColors.AddOrSetValue(AEdit, AEdit.Style.Color);
  FEditHints.AddOrSetValue(AEdit, AEdit.Hint);
  BindDataSet(AField.DataSet);
end;

procedure TDevExpressVisualValidator.BindDataSet(ADataSet: TDataSet);
var
  vEvents: TDataSetEvents;
begin
  if not FDataSetEvents.ContainsKey(ADataSet) then
  begin
    vEvents := TDataSetEvents.Create;
    vEvents.SaveEvents(ADataSet);
    FDataSetEvents.Add(ADataSet, vEvents);
    DataSet.BeforePost := Self.DataSetBeforePost;
    DataSet.AfterOpen := Self.DataSetAfterOpen;
  end;
end;

procedure TDevExpressVisualValidator.BindEditToValidator(AEdit: TcxCustomEdit);
var
  vProperties: TcxCustomEditProperties;
begin
  vProperties := GetEditProperties(AEdit);
  if vProperties <> nil then
  begin
    vProperties.ValidationOptions := [evoShowErrorIcon, evoAllowLoseFocus];
    vProperties.OnEditValueChanged := Self.EditValueChanged;
    AEdit.OnExit := Self.EditValueChanged;
  end;
end;

procedure TDevExpressVisualValidator.ClearDataSetEvents;
var
  vDataset: TDataSet;
  vEvents: TDataSetEvents;
begin
  while FDataSetEvents.Count > 0 do
  begin
    vDataset := FDataSetEvents.Keys.ToArray[0];
    vEvents := FDataSetEvents[vDataset];
    vEvents.RestoreEvents(vDataset);
    vEvents.Free;
    FDataSetEvents.Remove(vDataset);
  end;
end;

procedure TDevExpressVisualValidator.CollectFieldsBindings;
var
  vField: TField;
begin
  if FControlsOwner <> nil then
  begin
    FControlsOwner.ForEachSubcomponent<TcxCustomEdit>(
      procedure(AEdit: TcxCustomEdit)
      begin
        vField := GetEditField(AEdit);
        if (vField <> nil) and ((FDataSet = nil) or (vField.DataSet = FDataSet)) then
        begin
          AddFieldBinding(vField, AEdit);
          BindEditToValidator(AEdit);
        end;
      end);
  end;
end;

procedure TDevExpressVisualValidator.DoValidateField(AField: TField; var
    AErrorText: TCaption);
begin
  if Assigned(FOnValidateField) then
    FOnValidateField(Self, AField, AErrorText);
end;

function TDevExpressVisualValidator.GetEditDataBinding(AEdit: TcxCustomEdit):
    TcxDBEditDataBinding;
var
  vBind: TObject;
begin
  Result := nil;
  if (AEdit <> nil) then
  begin
    if IsPublishedProp(AEdit, SDataBinding) then
    begin
      vBind := GetObjectProp(AEdit, SDataBinding);
      if vBind is TcxDBEditDataBinding then
        Result :=  TcxDBEditDataBinding(vBind);
    end;
  end;
end;

function TDevExpressVisualValidator.GetEditField(AEdit: TcxCustomEdit): TField;
var
  vDataBinding: TcxDBEditDataBinding;
begin
  Result := nil;
  vDataBinding := GetEditDataBinding(AEdit);
  if vDataBinding <> nil then
    Result := vDataBinding.DataSource.DataSet.FieldByName(vDataBinding.DataField);
end;

function TDevExpressVisualValidator.GetEditProperties(AEdit: TcxCustomEdit):
    TcxCustomEditProperties;
var
  vProp: TObject;
begin
  Result := nil;
  if (AEdit <> nil) and IsPublishedProp(AEdit, SProperties) then
  begin
    vProp := GetObjectProp(AEdit, SProperties);
    if vProp is TcxCustomEditProperties then
      Result := TcxCustomEditProperties(vProp);
  end;
end;

procedure TDevExpressVisualValidator.SetControlsOwner(const Value: TComponent);
begin
  if FControlsOwner <> Value then
  begin
    FControlsOwner := Value;
  end;
end;

procedure TDevExpressVisualValidator.SetDataSet(const Value: TDataSet);
begin
  if FDataSet <> Value then
  begin
    FDataSet := Value;
  end;
end;

procedure TDevExpressVisualValidator.SetErrorColor(const Value: TColor);
begin
  if FErrorColor <> Value then
  begin
    FErrorColor := Value;
  end;
end;

procedure TDevExpressVisualValidator.SetFieldErrorText(AErrorText: TCaption);
begin
  FErrorText := AErrorText;
end;

procedure TDevExpressVisualValidator.TryFieldOnValidate(vField: TField; var
    ErrorText: TCaption);
begin
  if Assigned(vField.OnValidate) then
  begin
    FErrorText := '';
    try
      vField.OnValidate(vField);
      if FErrorText <> '' then
        ErrorText := ErrorText + IfThen(ErrorText = '', '', #13) + FErrorText;
    except
      on E: Exception do
        ErrorText := E.Message;
    end;
  end;
end;

procedure TDevExpressVisualValidator.UpdateEditColor(AEdit: TcxCustomEdit;
    AError: Boolean);
var
  vColor: TColor;
begin
  if AError then
    AEdit.Style.Color := FErrorColor
  else
  begin
    if not FEditColors.TryGetValue(AEdit, vColor) then
      vColor := clWindow;
    AEdit.Style.Color := vColor;
  end;
end;

procedure TDevExpressVisualValidator.ValidateDataSet(ADataSet: TDataSet);
var
  vControl: TcxCustomEdit;
  vField: TField;
begin
  for vControl in FFieldBindings.Keys do
  begin
    vField := FFieldBindings[vControl];
    if (ADataSet = nil) or (vField.DataSet = ADataSet) then
      EditValueChanged(vControl);
  end;
end;

procedure TDevExpressVisualValidator.ValidateEdit(Sender: TObject; var
  DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  vEdit: TcxCustomEdit;
  vField: TField;
begin
  ErrorText := '';
  vEdit := Sender as TcxCustomEdit;
  if FFieldBindings.TryGetValue(vEdit, vField) then
  begin
    if vField.Required and VarIsNull(vField.Value) then
      ErrorText := Format(SFieldShouldNotBeEmpty, [vField.DisplayLabel])
    else
    begin
      DoValidateField(vField, ErrorText);
      TryFieldOnValidate(vField, ErrorText);
    end;
  end;
  Error := ErrorText <> '';

  if Error then
    vEdit.Hint := ErrorText
  else
    vEdit.Hint := FEditHints[vEdit];

  UpdateEditColor(vEdit, Error);
end;

{ TDataSetEvents }

procedure TDataSetEvents.RestoreEvents(DataSet: TDataSet);
begin
  if DataSet <> nil then
  begin
    AfterOpen := DataSet.AfterOpen;
    BeforePost := DataSet.BeforePost;
  end;
end;

procedure TDataSetEvents.SaveEvents(DataSet: TDataSet);
begin
  if DataSet <> nil then
  begin
    DataSet.AfterOpen := AfterOpen;
    DataSet.BeforePost := BeforePost;
  end;
end;

end.

