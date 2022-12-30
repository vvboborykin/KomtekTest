{*******************************************************
* Project: KomtekTest
* Unit: ArmTypeSelectorFormUnit.pas
* Description: Форма выбора типа АРМ
*
* Created: 27.12.2022 21:45:16
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.FrmTypeSelectorUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.UITypes, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2019Colorful, cxClasses,
  dxLayoutContainer, dxLayoutControl, Arm.FrmBaseArmUnit, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  /// <summary>TArmTypeSelectorForm
  /// Форма выбора типа АРМ
  /// </summary>
  TFrmTypeSelector = class(TLayoutForm)
    btnArmOper: TcxButton;
    lit: TdxLayoutItem;
    aclMain: TActionList;
    iml32: TcxImageList;
    actArmOper: TAction;
    actArmStatist: TAction;
    actExit: TAction;
    btnArmStatist: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    btnExit: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    procedure actArmOperExecute(Sender: TObject);
    procedure actArmStatistExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
  strict private
    FResultFormClass: TFrmBaseArmClass;
  public
    /// <summary>TArmTypeSelectorForm.SelectArmClass
    /// Запросить у пользователя выбор типа создаваемого АРМ
    /// </summary>
    /// <returns> TBaseArmFormClass
    /// Класс выбранного типа АРМ или nil при отказе от создания
    /// </returns>
    class function SelectArmClass: TFrmBaseArmClass;
  end;

implementation

uses
  Arm.FrmOperatorUnit, Arm.FrmStatistUnit;

{$R *.dfm}

procedure TFrmTypeSelector.actArmOperExecute(Sender: TObject);
begin
  inherited;
  FResultFormClass := TFrmOperator;
end;

procedure TFrmTypeSelector.actArmStatistExecute(Sender: TObject);
begin
  inherited;
  FResultFormClass := TFrmStatist;
end;

procedure TFrmTypeSelector.actExitExecute(Sender: TObject);
begin
  inherited;
  FResultFormClass := nil;
end;

class function TFrmTypeSelector.SelectArmClass: TFrmBaseArmClass;
var
  vForm: TFrmTypeSelector;
begin
  Result := nil;
  vForm := TFrmTypeSelector.Create(Application);
  try
    if IsPositiveResult(vForm.ShowModal) then
      Result := vForm.FResultFormClass;
  finally
    vForm.Free;
  end;
end;

end.

