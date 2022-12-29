{*******************************************************
* Project: KomtekTest
* Unit: Unit1.pas
* Description: Базовая форма АРМ
*
* Created: 27.12.2022 21:43:02
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.BaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.ExtCtrls, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  /// <summary>TBaseArmForm
  /// Базовая форма АРМ
  /// </summary>
  TBaseArmForm = class(TLayoutForm)
    pnlFind: TPanel;
    layFind: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  strict private
    procedure CreateFindForm;
  public
    { Public declarations }
  end;

  TBaseArmFormClass = class of TBaseArmForm;

implementation

uses
  Search.FindFormUnit;

{$R *.dfm}

procedure TBaseArmForm.FormCreate(Sender: TObject);
begin
  inherited;
  CreateFindForm;
end;

procedure TBaseArmForm.CreateFindForm;
var
  vFindForm: TFrmFind;
begin
  vFindForm := TFrmFind.Create(pnlFind);
  vFindForm.Parent := pnlFind;
  vFindForm.Visible := True;
  vFindForm.Align := alTop;
  Application.ProcessMessages;
  pnlFind.Height := vFindForm.Height;
  Application.ProcessMessages;
end;

procedure TBaseArmForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := TCloseAction.caFree;
end;

end.

