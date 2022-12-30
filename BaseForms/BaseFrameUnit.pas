{*******************************************************
* Project: KomtekTest
* Unit: BaseFrameUnit.pas
* Description: Базовый фрейм
*
* Created: 30.12.2022 19:48:11
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit BaseFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxClasses, dxLayoutContainer, dxLayoutControl;

type
  TBaseFrame = class(TFrame)
    lacMain: TdxLayoutControl;
    lgrRoot: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DevExpressOptionsUnit;

{$R *.dfm}

end.
