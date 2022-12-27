{*******************************************************
* Project: KomtekTest
* Unit: StatistArmFormUnit.pas
* Description: Форма АРМ статиста
*
* Created: 27.12.2022 22:28:43
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit StatistArmFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  BaseArmFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl;

type
  /// <summary>TStatistArmForm
  /// Форма АРМ статиста
  /// </summary>
  TStatistArmForm = class(TBaseArmForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

