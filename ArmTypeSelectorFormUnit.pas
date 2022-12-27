{*******************************************************
* Project: KomtekTest
* Unit: ArmTypeSelectorFormUnit.pas
* Description: Форма выбора типа АРМ
*
* Created: 27.12.2022 21:45:16
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit ArmTypeSelectorFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl, BaseArmFormUnit, dxLayoutControlAdapters, Vcl.Menus,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons;

type
  /// <summary>TArmTypeSelectorForm
  /// Форма выбора типа АРМ
  /// </summary>
  TArmTypeSelectorForm = class(TLayoutForm)
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
    FBaseArmFormClass: TBaseArmFormClass;
  public
    /// <summary>TArmTypeSelectorForm.SelectArmClass
    /// Запросить у пользователя выбор типа создаваемого АРМ
    /// </summary>
    /// <returns> TBaseArmFormClass
    /// Класс выбранного типа АРМ или nil при отказе от создания
    /// </returns>
    class function SelectArmClass: TBaseArmFormClass;
  end;

implementation

{$R *.dfm}

procedure TArmTypeSelectorForm.actArmOperExecute(Sender: TObject);
begin
  inherited;
  FBaseArmFormClass := nil;
end;

procedure TArmTypeSelectorForm.actArmStatistExecute(Sender: TObject);
begin
  inherited;
  FBaseArmFormClass := nil;
end;

procedure TArmTypeSelectorForm.actExitExecute(Sender: TObject);
begin
  inherited;
  FBaseArmFormClass := nil;
end;

class function TArmTypeSelectorForm.SelectArmClass: TBaseArmFormClass;
begin
  Result := nil;
  var vForm := TArmTypeSelectorForm.Create(Application);
  try
    if IsPositiveResult(vForm.ShowModal) then
      Result := vForm.FBaseArmFormClass;
  finally
    vForm.Free;
  end;
end;

end.

