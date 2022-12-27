{*******************************************************
* Project: KomtekTest
* Unit: Unit1.pas
* Description: Базовая форма АРМ
*
* Created: 27.12.2022 21:43:02
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit BaseArmFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl;

type
  /// <summary>TBaseArmForm
  /// Базовая форма АРМ
  /// </summary>
  TBaseArmForm = class abstract(TLayoutForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TBaseArmFormClass = class of TBaseArmForm;

implementation

{$R *.dfm}

end.

