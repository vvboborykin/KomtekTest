{*******************************************************
* Project: KomtekTest
* Unit: StatistArmFormUnit.pas
* Description: Форма АРМ статиста
*
* Created: 27.12.2022 22:28:43
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.StatistFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, cxClasses, dxLayoutContainer,
  dxLayoutControl, Arm.BaseFormUnit, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxLayoutControlAdapters,
  Vcl.ExtCtrls;

type
  /// <summary>TStatistArmForm
  /// Форма АРМ статиста
  /// </summary>
  TFrmStatist = class(TBaseArmForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

