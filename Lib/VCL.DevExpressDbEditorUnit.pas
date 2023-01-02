{*******************************************************
* Project: KomtekTest
* Unit: VCL.DevExpressDbEditor.pas
* Description: Реализация TDbEditControl для cxCustomEdit
*
* Created: 31.12.2022 16:01:46
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit VCL.DevExpressDbEditorUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils,
  VCL.Controls, VCL.DbEditorsVisualValidatorUnit, Data.DB, VCL.Graphics, cxEdit, cxDBEdit,
  cxDB;

type
  TDevExpressDbEditor = class(TDbEditControl)
  strict private
    FOldOnChangeValue: TNotifyEvent;
    function CurrentEditor: TcxCustomEdit;
    class function GetEditDataBinding(AEdit: TcxCustomEdit):
      TcxDBEditDataBinding;
    class function GetEditField(AEdit: TcxCustomEdit): TField;
    function GetEditProperties(AEdit: TcxCustomEdit): TcxCustomEditProperties;
  strict protected
    procedure EditValueChanged(Sender: TObject); virtual;
    function GetColor: TColor; override;
    procedure SetColor(const Value: TColor); override;
    procedure BindEditor; virtual;
    function GetHint: string; override;
    procedure SetHint(const Value: string); override;
  public
    class function ControlIsDbAware(AControl: TControl): Boolean; override;
    function GetField: TField; override;
    constructor Create(AValidator: TDevExpressVisualValidator; AEditor: TControl);
      override;
    destructor Destroy; override;
  end;

implementation

uses
  TypInfo;

const
  SDataBinding = 'DataBinding';
  SProperties = 'Properties';

constructor TDevExpressDbEditor.Create(AValidator: TDevExpressVisualValidator;
  AEditor: TControl);
begin
  inherited Create(AValidator, AEditor);
  BindEditor();
end;

destructor TDevExpressDbEditor.Destroy;
begin
  GetEditProperties(CurrentEditor).OnEditValueChanged := FOldOnChangeValue;
  inherited;
end;

procedure TDevExpressDbEditor.BindEditor;
var
  vProp: TcxCustomEditProperties;
begin
  vProp := GetEditProperties(CurrentEditor);
  FOldOnChangeValue := vProp.OnEditValueChanged;
  vProp.OnEditValueChanged := Self.EditValueChanged;
  CurrentEditor.OnExit := Self.EditValueChanged;
end;

class function TDevExpressDbEditor.ControlIsDbAware(AControl: TControl): Boolean;
begin
  Result := inherited ControlIsDbAware(AControl) and (GetEditField(AControl as
    TcxCustomEdit) <> nil);
end;

procedure TDevExpressDbEditor.EditValueChanged(Sender: TObject);
begin
  Validator.ValidateDataSet(nil);
  if Assigned(FOldOnChangeValue) then
    FOldOnChangeValue(CurrentEditor);
end;

function TDevExpressDbEditor.CurrentEditor: TcxCustomEdit;
begin
  Result := FControl as TcxCustomEdit;
end;

function TDevExpressDbEditor.GetColor: TColor;
begin
  Result := CurrentEditor.Style.Color;
end;

class function TDevExpressDbEditor.GetEditDataBinding(AEdit: TcxCustomEdit):
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
        Result := TcxDBEditDataBinding(vBind);
    end;
  end;
end;

class function TDevExpressDbEditor.GetEditField(AEdit: TcxCustomEdit): TField;
var
  vDataBinding: TcxDBEditDataBinding;
begin
  Result := nil;
  vDataBinding := GetEditDataBinding(AEdit);
  if vDataBinding <> nil then
    Result := vDataBinding.DataSource.DataSet.FieldByName(vDataBinding.DataField);
end;

function TDevExpressDbEditor.GetEditProperties(AEdit: TcxCustomEdit):
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

function TDevExpressDbEditor.GetField: TField;
begin
  Result := GetEditField(CurrentEditor);
end;

function TDevExpressDbEditor.GetHint: string;
begin
  Result := CurrentEditor.Hint;
end;

procedure TDevExpressDbEditor.SetColor(const Value: TColor);
begin
  CurrentEditor.Style.Color := Value;
end;

procedure TDevExpressDbEditor.SetHint(const Value: string);
begin
  CurrentEditor.Hint := Value;
end;

initialization
  TDevExpressVisualValidator.RegisterEditorClass(TcxCustomEdit,
    TDevExpressDbEditor);

end.

