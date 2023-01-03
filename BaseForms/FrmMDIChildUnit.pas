{*******************************************************
* Project: KomtekTest
* Unit: FrmMDIChildUnit.pas
* Description: Базовая дочерняя форма MDI
*
* Created: 31.12.2022 21:28:02
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit FrmMDIChildUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DataNotificationUnit, Ora, Vcl.Controls, Data.DB,
  Vcl.Forms, Vcl.Dialogs, LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxClasses, dxLayoutContainer, dxLayoutControl,
  VCL.DbEditorsVisualValidatorUnit;

type
  /// <summary>TFrmMDIChild
  /// Базовая дочерняя форма MDI
  /// </summary>
  TFrmMDIChild = class(TLayoutForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FValidator: TDevExpressVisualValidator;
    procedure SetValidator(const Value: TDevExpressVisualValidator);
  strict protected
    procedure UpdateCaption(const ACaption: string); virtual;
    /// <summary>TFrmMDIChild.UnsavedChangesExists
    /// Определить есть ли на форме несохраненные изменения данных, подлежащие
    /// сохранению
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    function UnsavedChangesExists: Boolean; virtual;
    /// <summary>TFrmMDIChild.SaveChanges
    /// Сохранить изменения данных формы
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    function SaveChanges: Boolean; virtual;
    function CancelChanges: Boolean; virtual;
  public
    procedure ShowOracleException(E: Exception);
    property Validator: TDevExpressVisualValidator read FValidator write
      SetValidator;
  end;

implementation

uses
  MainFormUnit, Lib.ComponentHelperUnit, DbLib.DataSetHelperUnit, AppDataUnit,
  OraErrorProcessorUnit, VCL.WindowsDialogsUnit;

resourcestring
  SUnsavedChanges = 'На форме "%s" есть несохраненные изменения. Сохранить их ?';

{$R *.dfm}

var
  FArmCounter: Integer;

function TFrmMDIChild.CancelChanges: Boolean;
var
  vResult: Boolean;
begin
  vResult := True;
  ForEachSubcomponent<TOraQuery>(
    procedure(AQuery: TOraQuery)
    begin
      if AQuery.CurrentRecordIsModified then
      try
        AQuery.Cancel;
      except
        vResult := False;
        raise;
      end;
    end);
  Result := vResult
end;

procedure TFrmMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmMDIChild.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CanClose := True;
  if UnsavedChangesExists then
  begin
    case AskYesNoCancelFtm(SUnsavedChanges, [Caption]) of
      yncYes: CanClose := SaveChanges;
      yncNo: CanClose := CancelChanges;
      yncCancel: CanClose := False;
    end;
  end;
end;

procedure TFrmMDIChild.FormCreate(Sender: TObject);
begin
  inherited;
  Inc(FArmCounter);
  MainForm.RegisterMdiChild(Self);
  UpdateCaption(Caption + ' №' + FArmCounter.ToString());
  FValidator := TDevExpressVisualValidator.Create(Self);
end;

procedure TFrmMDIChild.FormDestroy(Sender: TObject);
begin
  MainForm.UnRegisterMdiChild(Self);
  FreeAndNil(FValidator);
  inherited;
end;

function TFrmMDIChild.SaveChanges: Boolean;
var
  vResult: Boolean;
begin
  vResult := True;
  ForEachSubcomponent<TOraQuery>(
    procedure(AQuery: TOraQuery)
    begin
      if vResult and AQuery.CurrentRecordIsModified then
      begin
        AQuery.Post;
        vResult := not AQuery.CurrentRecordIsModified;
      end;
    end);
  Result := vResult
end;

procedure TFrmMDIChild.SetValidator(const Value: TDevExpressVisualValidator);
begin
  FValidator := Value;
end;

procedure TFrmMDIChild.ShowOracleException(E: Exception);
begin
  OraErrorProcessor.ShowOracleException(E);
end;

function TFrmMDIChild.UnsavedChangesExists: Boolean;
var
  vResult: Boolean;
begin
  vResult := False;
  ForEachSubcomponent<TOraQuery>(
    procedure(AQuery: TOraQuery)
    begin
      if not vResult then
        vResult := AQuery.CurrentRecordIsModified();
    end);
  Result := vResult;
end;

procedure TFrmMDIChild.UpdateCaption(const ACaption: string);
begin
  Caption := ACaption;
  MainForm.UpdateMDIChildCaption(Self);
end;

initialization
  FArmCounter := 0;

end.

