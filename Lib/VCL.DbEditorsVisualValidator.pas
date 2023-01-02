{*******************************************************
* Project: KomtekTest
* Unit: VCL.DevExpressVisualValidator.pas
* Description: Класс для отображения ошибок при заполнении полей DataSet в редакторах DevExpress
*
* Created: 30.12.2022 11:47:27
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit VCL.DbEditorsVisualValidator;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils, Data.DB,
  VCL.Controls, System.Generics.Collections, VCL.Graphics;

type
  TDevExpressVisualValidator = class;

  TValidateFieldEvent = reference to procedure(Sender: TObject; AField: TField;
    var AErrorText: string);

  TDataSetEvents = class
    BeforePost: TDataSetNotifyEvent;
    AfterOpen: TDataSetNotifyEvent;
    procedure SaveEvents(ADataSet: TDataSet);
    procedure RestoreEvents(ADataSet: TDataSet);
  end;

  /// <summary>TDbEditControl
  /// Обертка для редактора поля данных
  /// </summary>
  TDbEditControl = class abstract
  strict private
    FValidator: TDevExpressVisualValidator;
  private
    FInitialColor: TColor;
    FInitialHint: string;
    procedure SetInitialColor(const Value: TColor);
    procedure SetInitialHint(const Value: string);
  strict protected
    FControl: TControl;
    function GetColor: TColor; virtual; abstract;
    procedure SetColor(const Value: TColor); virtual; abstract;
    function GetHint: string; virtual;
    procedure SetHint(const Value: string); virtual;
  public
    constructor Create(AValidator: TDevExpressVisualValidator; AControl:
      TControl); virtual;
    class function ControlIsDbAware(AControl: TControl): Boolean; virtual;
    function GetField: TField; virtual; abstract;
    procedure ValueChanged; virtual; abstract;
    property Color: TColor read GetColor write SetColor;
    property Hint: string read GetHint write SetHint;
    property InitialColor: TColor read FInitialColor write SetInitialColor;
    property InitialHint: string read FInitialHint write SetInitialHint;
    property Validator: TDevExpressVisualValidator read FValidator;
  end;

  TDbEditControlClass = class of TDbEditControl;

  /// <summary>TDevExpressVisualValidator

    ///  Класс для отображения ошибок при заполнении полей DataSet в редакторах DevExpress
  /// </summary>
  TDevExpressVisualValidator = class
  strict private
    FDataSet: TDataSet;
    FFieldBindings: TObjectList<TDbEditControl>;
    FDataSetEvents: TDictionary<TDataSet, TDataSetEvents>;
    FControlsOwner: TComponent;
    FOnValidateField: TValidateFieldEvent;
    FErrorColor: TColor;
    FErrorText: string;
    procedure SetErrorColor(const Value: TColor);
    procedure AddFieldBinding(AField: TField; AEdit: TDbEditControl);
    procedure BindDataSet(ADataSet: TDataSet);
    procedure ClearDataSetEvents;
    procedure CollectFieldsBindings;
    function CreateDbEditControl(AEdit: TControl): TDbEditControl;
    procedure SetControlsOwner(const Value: TComponent);
    procedure TryFieldOnValidate(vField: TField; var ErrorText: string);
    procedure UpdateEditColor(AEdit: TDbEditControl; AError: Boolean);
    procedure DataSetBeforePost(ADataSet: TDataSet);
    procedure DataSetAfterOpen(ADataSet: TDataSet);
  strict protected
    procedure DoValidateField(AField: TField; var AErrorText: string); virtual;
    /// <summary>TDevExpressVisualValidator.ValidateEdit
    /// Обработчик валидации для редакторов полей
    /// </summary>
    /// <param name="Sender"> (TObject) </param>
    /// <param name="DisplayValue"> (Variant) </param>
    /// <param name="ErrorText"> (string) </param>
    /// <param name="Error"> (Boolean) </param>
    procedure ValidateEdit(Sender: TObject; var DisplayValue: Variant; var
      ErrorText: string; var Error: Boolean); virtual;
    /// <summary>TDevExpressVisualValidator.EditValueChanged
    /// Обработчик изменения значения редакторов полей
    /// </summary>
    /// <param name="Sender"> (TObject) </param>
    function EditValueChanged(Sender: TObject; ARiseError: Boolean = False):
      TArray<string>; virtual;
  public
    constructor Create(AControlsOwner: TComponent; ADataSet: TDataSet = nil);
    destructor Destroy; override;
    procedure SetFieldErrorText(AErrorText: string);
    class procedure RegisterEditorClass(AControlClass: TControlClass;
      AEditorClass: TDbEditControlClass);
    /// <summary>TDevExpressVisualValidator.ValidateDataSet
    /// Провести волидацию полей и отобразить ошибки
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    procedure ValidateDataSet(ADataSet: TDataSet; ARiseError: Boolean = False);
    /// <summary>TDevExpressVisualValidator.ControlsOwner
    /// Компонент - владелец контролов
    /// </summary>
    /// type:TComponent
    property ControlsOwner: TComponent read FControlsOwner write
      SetControlsOwner;
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
  SValidationErrorsDetected = 'При проверке данных обнаружены ошибки'#13'%s';
  SFieldShouldNotBeEmpty = 'Поле "%s" не должно быть пустым';

const
  cDefaultErrorColor: TColor = $00CCCCFF;

var
  FEditorTypes: TDictionary<TControlClass, TDbEditControlClass>;

constructor TDevExpressVisualValidator.Create(AControlsOwner: TComponent;
  ADataSet: TDataSet = nil);
begin
  inherited Create;
  FDataSet := ADataSet;
  FControlsOwner := AControlsOwner;
  FFieldBindings := TObjectList<TDbEditControl>.Create(True);
  FErrorColor := cDefaultErrorColor;
  FDataSetEvents := TDictionary<TDataSet, TDataSetEvents>.Create();
  CollectFieldsBindings();
end;

procedure TDevExpressVisualValidator.DataSetAfterOpen(ADataSet: TDataSet);
var
  vEvents: TDataSetEvents;
begin
  if FDataSetEvents.TryGetValue(ADataSet, vEvents) then
  begin
    if Assigned(vEvents.AfterOpen) then
      vEvents.AfterOpen(ADataSet);
  end;
  ValidateDataSet(ADataSet);
end;

procedure TDevExpressVisualValidator.DataSetBeforePost(ADataSet: TDataSet);
var
  vEvents: TDataSetEvents;
begin
  if FDataSetEvents.TryGetValue(ADataSet, vEvents) then
  begin
    if Assigned(vEvents.BeforePost) then
      vEvents.BeforePost(ADataSet);
  end;
  ValidateDataSet(ADataSet, True);
end;

destructor TDevExpressVisualValidator.Destroy;
begin
  ClearDataSetEvents();
  FreeAndNil(FDataSetEvents);
  FreeAndNil(FFieldBindings);
  inherited Destroy;
end;

function TDevExpressVisualValidator.EditValueChanged(Sender: TObject; ARiseError:
  Boolean = False): TArray<string>;
var
  DisplayValue: Variant;
  Error: Boolean;
  ErrorText: string;
  vEdit: TDbEditControl;
begin
  Result := nil;
  for vEdit in FFieldBindings do
  begin
    Self.ValidateEdit(vEdit, DisplayValue, ErrorText, Error);
    if ErrorText <> '' then
    begin
      ErrorText := vEdit.GetField.DisplayLabel + ': ' + ErrorText;
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1] := ErrorText;
    end;
  end;
end;

procedure TDevExpressVisualValidator.AddFieldBinding(AField: TField; AEdit:
  TDbEditControl);
begin
  FFieldBindings.Add(AEdit);
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
    ADataSet.BeforePost := Self.DataSetBeforePost;
    ADataSet.AfterOpen := Self.DataSetAfterOpen;
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
  vEdit: TDbEditControl;
  vField: TField;
begin
  if FControlsOwner <> nil then
  begin
    FControlsOwner.ForEachSubcomponent<TControl>(
      procedure(AEdit: TControl)
      begin
        vEdit := CreateDbEditControl(AEdit);
        if vEdit <> nil then
        begin
          vField := vEdit.GetField;
          if (vField <> nil) and ((FDataSet = nil) or (vField.DataSet = FDataSet))then
          begin
            AddFieldBinding(vField, vEdit);
          end
          else
            vEdit.Free;
        end;
      end);
  end;
end;

function TDevExpressVisualValidator.CreateDbEditControl(AEdit: TControl):
  TDbEditControl;
var
  vClass: TControlClass;
begin
  Result := nil;
  for vClass in FEditorTypes.Keys do
  begin
    if AEdit.ClassType.InheritsFrom(vClass)
      and FEditorTypes[vClass].ControlIsDbAware(AEdit) then
    begin
      Result := FEditorTypes[vClass].Create(Self, AEdit);
      Break;
    end;
  end;
end;

procedure TDevExpressVisualValidator.DoValidateField(AField: TField; var
  AErrorText: string);
begin
  if Assigned(FOnValidateField) then
    FOnValidateField(Self, AField, AErrorText);
end;

class procedure TDevExpressVisualValidator.RegisterEditorClass(AControlClass:
  TControlClass; AEditorClass: TDbEditControlClass);
begin
  FEditorTypes.AddOrSetValue(AControlClass, AEditorClass);
end;

procedure TDevExpressVisualValidator.SetControlsOwner(const Value: TComponent);
begin
  if FControlsOwner <> Value then
  begin
    FControlsOwner := Value;
  end;
end;

procedure TDevExpressVisualValidator.SetErrorColor(const Value: TColor);
begin
  if FErrorColor <> Value then
  begin
    FErrorColor := Value;
  end;
end;

procedure TDevExpressVisualValidator.SetFieldErrorText(AErrorText: string);
begin
  FErrorText := AErrorText;
end;

procedure TDevExpressVisualValidator.TryFieldOnValidate(vField: TField; var
  ErrorText: string);
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

procedure TDevExpressVisualValidator.UpdateEditColor(AEdit: TDbEditControl;
  AError: Boolean);
begin
  if AError then
    AEdit.Color := FErrorColor
  else
    AEdit.Color := AEdit.InitialColor;
end;

procedure TDevExpressVisualValidator.ValidateDataSet(ADataSet: TDataSet;
  ARiseError: Boolean = False);
var
  vErrors: TArray<string>;
begin
  vErrors := EditValueChanged(nil, ARiseError);
  if ARiseError and (Length(vErrors) > 0) then
    raise Exception.CreateFmt(SValidationErrorsDetected, [string.Join(#13,
      vErrors)]);
end;

procedure TDevExpressVisualValidator.ValidateEdit(Sender: TObject; var
  DisplayValue: Variant; var ErrorText: string; var Error: Boolean);
var
  vEdit: TDbEditControl;
  vField: TField;
begin
  ErrorText := '';
  vEdit := Sender as TDbEditControl;
  vField := vEdit.GetField;
  if vField <> nil then
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
    vEdit.Hint := vEdit.InitialHint;

  UpdateEditColor(vEdit, Error);
end;

{ TDataSetEvents }

procedure TDataSetEvents.RestoreEvents(ADataSet: TDataSet);
begin
  if ADataSet <> nil then
  begin
    ADataSet.AfterOpen := AfterOpen;
    ADataSet.BeforePost := BeforePost;
  end;
end;

procedure TDataSetEvents.SaveEvents(ADataSet: TDataSet);
begin
  if ADataSet <> nil then
  begin
    AfterOpen := ADataSet.AfterOpen;
    BeforePost := ADataSet.BeforePost;
  end;
end;

constructor TDbEditControl.Create(AValidator: TDevExpressVisualValidator;
  AControl: TControl);
begin
  inherited Create;
  FControl := AControl;
  FValidator := AValidator;
  FInitialHint := Hint;
  FInitialColor := Color;
end;

class function TDbEditControl.ControlIsDbAware(AControl: TControl): Boolean;
begin
  Result := (AControl <> nil);
end;

function TDbEditControl.GetHint: string;
begin
  Result := FControl.Hint;
end;

procedure TDbEditControl.SetHint(const Value: string);
begin
  FControl.Hint := Value;
end;

procedure TDbEditControl.SetInitialColor(const Value: TColor);
begin
  if FInitialColor <> Value then
  begin
    FInitialColor := Value;
  end;
end;

procedure TDbEditControl.SetInitialHint(const Value: string);
begin
  FInitialHint := Value;
end;

initialization
  FEditorTypes := TDictionary<TControlClass, TDbEditControlClass>.Create();

finalization
  FreeAndNil(FEditorTypes);

end.

