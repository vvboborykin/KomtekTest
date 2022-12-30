{*******************************************************
* Project: KomtekTest
* Unit: Search.FrmFindStatistUnit.pas
* Description: Расширенная форма GUI поиска для АРМ статиста
*
* Created: 30.12.2022 19:52:53
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Search.FrmFindStatistUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Search.FrmFindUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.ImgList, cxImageList, System.Actions,
  Vcl.ActnList, dxLayoutContainer, cxClasses, cxCheckBox, Vcl.StdCtrls,
  cxButtons, cxTextEdit, dxLayoutControl, Search.EngineUnit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmFindStatist = class(TFrmFind)
    edMinBirthDate: TcxDateEdit;
    litMinBirthDate: TdxLayoutItem;
    lgrFio: TdxLayoutGroup;
    edMaxBirthDate: TcxDateEdit;
    litMaxDirthDate: TdxLayoutItem;
    edMinCreateDate: TcxDateEdit;
    litMinCreateDate: TdxLayoutItem;
    edMaxCreateDate: TcxDateEdit;
    litMaxCreateDate: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
  private
  strict protected
    procedure ClearFindFields; override;
    function GetSearchParamsFromFormControls: TSearchParameters; override;
  public
  end;


implementation

{$R *.dfm}

procedure TFrmFindStatist.ClearFindFields;
begin
  inherited;
  edMinBirthDate.Clear;
  edMaxBirthDate.Clear;
  edMinCreateDate.Clear;
  edMaxCreateDate.Clear;
end;

function TFrmFindStatist.GetSearchParamsFromFormControls: TSearchParameters;
begin
  Result := inherited GetSearchParamsFromFormControls;
  Result.MinCreateDate := edMinCreateDate.EditValue;
  Result.MaxCreateDate := edMaxCreateDate.EditValue;
  Result.MinBirthDate := edMinBirthDate.EditValue;
  Result.MaxBirthDate := edMaxBirthDate.EditValue;
end;

end.
