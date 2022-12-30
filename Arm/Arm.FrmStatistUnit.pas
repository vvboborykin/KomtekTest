{*******************************************************
* Project: KomtekTest
* Unit: StatistArmFormUnit.pas
* Description: Форма АРМ статиста
*
* Created: 27.12.2022 22:28:43
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.FrmStatistUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl, Arm.FrmBaseArmUnit, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxLayoutControlAdapters,
  Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, dxLayoutcxEditAdapters, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, DBAccess, Ora, MemDS, Vcl.StdCtrls, cxButtons,
  Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Search.FrmFindUnit,
  Search.FrmFindStatistUnit;

type
  /// <summary>TStatistArmForm
  /// Форма АРМ статиста
  /// </summary>
  TFrmStatist = class(TfrmBaseArm)
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  strict protected
    function GetFindFormClass: TFrmFindClass; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

function TFrmStatist.GetFindFormClass: TFrmFindClass;
begin
  // класс формы поиска для арм статиста
  Result := TFrmFindStatist;
end;

end.

