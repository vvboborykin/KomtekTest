{*******************************************************
* Project: KomtekTest
* Unit: Unit1.pas
* Description: Форма АРМ оператора
*
* Created: 27.12.2022 22:26:59
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.FrmOperatorUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Arm.FrmBaseArmUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxLayoutControlAdapters,
  Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, dxLayoutcxEditAdapters, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, DBAccess, Ora, MemDS, Vcl.StdCtrls, cxButtons,
  Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxButtonEdit;

type
  /// <summary>TOperArmForm
  /// Форма АРМ оператора
  /// </summary>
  TFrmOperator = class(TFrmBaseArm)
    lgrBtnSaveCancel: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    btnCancelHuman: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    btnCreateHuman: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    btnCreateHuman1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    btnCreateDocument: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    viewDocumentsBtn: TcxGridDBColumn;
    btnCreateDocument1: TcxButton;
    btnOpenDocument: TcxButton;
    litCreateDocumentButton: TdxLayoutItem;
    litOpenDocumentButton: TdxLayoutItem;
    procedure grdHumansEnter(Sender: TObject);
    procedure lgrDetailsTabChanging(Sender: TObject; ANewTabIndex: Integer; var
        Allow: Boolean);
    procedure viewDocumentsDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DbLib.DataSetHelperUnit, AppDataUnit;

{$R *.dfm}

procedure TFrmOperator.grdHumansEnter(Sender: TObject);
begin
  inherited;
  qryHuman.PostIfNeeded;
end;

procedure TFrmOperator.lgrDetailsTabChanging(Sender: TObject; ANewTabIndex:
    Integer; var Allow: Boolean);
begin
  inherited;
  qryHuman.PostIfNeeded;
end;

procedure TFrmOperator.viewDocumentsDblClick(Sender: TObject);
begin
  inherited;
  actEditDocument.Execute;
end;

end.

