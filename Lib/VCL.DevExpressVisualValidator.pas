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
  VCL.Controls,  cxEdit, cxDBEdit, System.Generics.Collections;

type
  TValidateFieldEvent = reference to procedure(Sender: TObject; AField: TField; var AErrorText: String);

  /// <summary>TDevExpressVisualValidator
  ///  Класс для отображения ошибок при заполнении полей DataSet в редакторах DevExpress
  /// </summary>
  TDevExpressVisualValidator = class
  strict private
    FValidationErrorText: TDictionary<TcxCustomEdit, string>;
    FControlsOwner: TComponent;
    FDataSet: TDataSet;
    FOnValidateField: TValidateFieldEvent;
    procedure ResetAllErrorMarkers;
    procedure SetErrorMarkersForInvalidFields(AErrors: TStrings);
    procedure SetControlsOwner(const Value: TComponent);
    procedure SetDataSet(const Value: TDataSet);
  strict protected
    function FindFieldControl(AField: TField): TcxCustomEdit;
    procedure ValidateDataSet(vErrors: TStrings); virtual;
    procedure ConnectControlsToValidator; virtual;
    procedure DoExitControl(Sender: TObject); virtual;
    procedure DoValidateControl(Sender: TObject; var DisplayValue: TcxEditValue;
        var ErrorText: TCaption; var Error: Boolean);
    procedure DoValidateField(AField: TField; var AErrorText: String); virtual;
    function GetControlErrorText(AEdit: TcxCustomEdit): String;
    procedure SetControlErrorText(AEdit: TcxCustomEdit; AErrorText: String);
  public
    constructor Create(AControlsOwner: TComponent; ADataSet: TDataSet);
    destructor Destroy; override;
    procedure SetFieldErrorText(AField: TField; AText: string);
    /// <summary>TDevExpressVisualValidator.Validate
    /// Провести волидацию полей и отобразить ошибки
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    function Validate: Boolean;
    /// <summary>TDevExpressVisualValidator.ControlsOwner
    /// Компонент - владелец контролов
    /// </summary>
    /// type:TComponent
    property ControlsOwner: TComponent read FControlsOwner write SetControlsOwner;
    /// <summary>TDevExpressVisualValidator.DataSet
    /// DataSet для полей которого проводится вализация
    /// </summary>
    /// type:TDataSet
    property DataSet: TDataSet read FDataSet write SetDataSet;
    /// <summary>TDevExpressVisualValidator.OnValidateField
    /// Событие пользовательской валидации значений полей
    /// </summary>
    /// type:TValidateFieldEvent
    property OnValidateField: TValidateFieldEvent read FOnValidateField write
        FOnValidateField;
  end;

implementation

uses
  Lib.ComponentHelper, TypInfo, VCL.Graphics, DbLib.DataSetHelper;

resourcestring
  SFieldShouldNotBeEmpty = 'Поле "%s" не должно быть пустым';

const
  SDataBinding = 'DataBinding';
  cErrorBackgroundColor = clYellow;

constructor TDevExpressVisualValidator.Create(AControlsOwner: TComponent;
    ADataSet: TDataSet);
begin
  inherited Create;
  FControlsOwner := AControlsOwner;
  FDataSet := ADataSet;
  ConnectControlsToValidator;
  FValidationErrorText := TDictionary<TcxCustomEdit, string>.Create();
end;

destructor TDevExpressVisualValidator.Destroy;
begin
  FreeAndNil(FValidationErrorText);
  inherited Destroy;
end;

procedure TDevExpressVisualValidator.ConnectControlsToValidator;
var
  vEdit: TcxCustomEdit;
  vProp: TcxCustomEditProperties;
begin
  FDataSet.ForEachField(
    procedure(AField: TField)
    begin
      vEdit := FindFieldControl(AField);
      if vEdit <> nil then
      begin
        vProp := TcxCustomEditProperties(GetObjectProp(vEdit, 'Properties'));
        if (vProp <> nil) then
        begin
          vProp.ValidateOnEnter := True;
          vProp.ValidationOptions := [evoShowErrorIcon, evoAllowLoseFocus];
          vProp.OnValidate := Self.DoValidateControl;
        end;
        vEdit.OnExit := Self.DoExitControl;
      end;
    end);
end;

procedure TDevExpressVisualValidator.DoExitControl(Sender: TObject);
begin
  Validate;
end;

procedure TDevExpressVisualValidator.DoValidateControl(Sender: TObject; var
    DisplayValue: TcxEditValue; var ErrorText: TCaption; var Error: Boolean);
var
  vEdit: TcxCustomEdit;
begin
  if Sender is TcxCustomEdit then
  begin
    vEdit := Sender as TcxCustomEdit;
    Error := GetControlErrorText(vEdit) <> '';
    if Error then
      ErrorText := GetControlErrorText(vEdit)
    else
      ErrorText := '';
  end;
end;

function TDevExpressVisualValidator.FindFieldControl(AField: TField):
  TcxCustomEdit;
var
  vResult: TcxCustomEdit;
begin
  vResult := nil;
  FControlsOwner.ForEachSubcomponent<TcxCustomEdit>(
    procedure(AEdit: TcxCustomEdit)
    begin
      if (vResult = nil) and IsPublishedProp(AEdit, SDataBinding) then
      begin
        with GetObjectProp(AEdit, SDataBinding) as TcxDBEditDataBinding do
        begin
          if Field = AField then
            vResult := AEdit;
        end;
      end;
    end);
  Result := vResult;
end;

procedure TDevExpressVisualValidator.ResetAllErrorMarkers;
begin
  FControlsOwner.ForEachSubcomponent<TcxCustomEdit>(
    procedure(AEdit: TcxCustomEdit)
    begin
      if IsPublishedProp(AEdit, SDataBinding) then
      begin
        SetControlErrorText(AEdit, '');
        AEdit.ValidateEdit;
        AEdit.Style.Color := clWindow;
      end;
    end);
end;

procedure TDevExpressVisualValidator.SetControlsOwner(const Value: TComponent);
begin
  FControlsOwner := Value;
end;

procedure TDevExpressVisualValidator.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
end;

procedure TDevExpressVisualValidator.SetErrorMarkersForInvalidFields(AErrors:
  TStrings);
var
  I: Integer;
begin
  for I := 0 to AErrors.Count - 1 do
    SetFieldErrorText(AErrors.Objects[I] as TField, AErrors[I]);
end;

procedure TDevExpressVisualValidator.SetFieldErrorText(AField: TField; AText: string);
var
  vControl: TcxCustomEdit;
  vErrorText: string;
begin
  vControl := FindFieldControl(AField);
  if vControl <> nil then
  begin
    vErrorText := GetControlErrorText(vControl);
    vErrorText := vErrorText + IfThen(vErrorText = '', '', #13) + AText;
    SetControlErrorText(vControl, vErrorText);
    vControl.ValidateEdit;
    vControl.Style.Color := cErrorBackgroundColor;
  end;
end;

function TDevExpressVisualValidator.Validate: Boolean;
var
  vErrors: TStrings;
begin
  vErrors := TStringList.Create;
  ValidateDataSet(vErrors);
  Result := vErrors.Count = 0;
  ResetAllErrorMarkers();
  SetErrorMarkersForInvalidFields(vErrors);
  vErrors.Free;
end;

procedure TDevExpressVisualValidator.ValidateDataSet(vErrors: TStrings);
var
  vField: TField;
  I: Integer;
  vErrorText: string;
begin
  for I := 0 to FDataSet.FieldCount-1 do
  begin
    vField := FDataSet.Fields[I];
    if vField.Required and (vField.AsString = '') then
    begin
      vErrors.AddObject(Format(SFieldShouldNotBeEmpty, [vField.DisplayLabel]), vField);
    end
    else
    begin
      vErrorText := '';
      DoValidateField(vField, vErrorText);
      if vErrorText <> '' then
        vErrors.AddObject(vErrorText, vField);
    end;
  end;
//
//  FDataSet.ForEachField(
//    procedure(vField: TField)
//    begin
//      if vField.Required and (vField.AsString = '') then
//        vErrors.Add(Format(SFieldShouldNotBeEmpty, [vField.DisplayLabel]));
//    end);
end;

procedure TDevExpressVisualValidator.DoValidateField(AField: TField; var
    AErrorText: String);
begin
  if Assigned(AField.OnValidate) then
    AField.OnValidate(AField);

  if Assigned(FOnValidateField) then FOnValidateField(Self, AField, AErrorText);
end;

function TDevExpressVisualValidator.GetControlErrorText(AEdit: TcxCustomEdit):
    String;
begin
  Result := '';
  FValidationErrorText.TryGetValue(AEdit, Result);
end;

procedure TDevExpressVisualValidator.SetControlErrorText(AEdit: TcxCustomEdit;
    AErrorText: String);
begin
  FValidationErrorText.AddOrSetValue(AEdit, AErrorText);
end;

end.

