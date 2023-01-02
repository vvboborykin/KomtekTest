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
  cxClasses, dxLayoutContainer, dxLayoutControl, VCL.DbEditorsVisualValidatorUnit;

type
  /// <summary>TFrmMDIChild
  /// Базовая дочерняя форма MDI
  /// </summary>
  TFrmMDIChild = class(TLayoutForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FValidator: TDevExpressVisualValidator;
    procedure SetValidator(const Value: TDevExpressVisualValidator);
  strict protected
    procedure OnDataNotification(AData: TDataNotification); virtual; stdcall;
    procedure UpdateCaption(const ACaption: string); virtual;
  public
    procedure ShowOracleException(E: Exception);
    property Validator: TDevExpressVisualValidator read FValidator write
        SetValidator;
  end;


implementation

uses
  MainFormUnit, Lib.ComponentHelperUnit, DbLib.DataSetHelperUnit, AppDataUnit,
  OraErrorProcessorUnit;

{$R *.dfm}

var
  FArmCounter: Integer;

procedure TFrmMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
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

procedure TFrmMDIChild.OnDataNotification(AData: TDataNotification);
begin
end;

procedure TFrmMDIChild.SetValidator(const Value: TDevExpressVisualValidator);
begin
  FValidator := Value;
end;

procedure TFrmMDIChild.ShowOracleException(E: Exception);
begin
  OraErrorProcessor.ShowOracleException(E);
end;

procedure TFrmMDIChild.UpdateCaption(const ACaption: string);
begin
  Caption := ACaption;
  MainForm.UpdateMDIChildCaption(Self);
end;

initialization
  FArmCounter := 0;

end.



