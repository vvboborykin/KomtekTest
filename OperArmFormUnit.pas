{*******************************************************
* Project: KomtekTest
* Unit: Unit1.pas
* Description: Форма АРМ оператора
*
* Created: 27.12.2022 22:26:59
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit OperArmFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  BaseArmFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl;

type
  /// <summary>TOperArmForm
  /// Форма АРМ оператора
  /// </summary>
  TFrmOperator = class(TBaseArmForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

