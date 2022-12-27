{*******************************************************
* Project: KomtekTest
* Unit: Unit1.pas
* Description: ������� ����� � ��������������� ��������� �� ������ Devexpress Layout control
*
* Created: 27.12.2022 21:15:41
* Copyright (C) 2022 ��������� �.�. (bpost@yandex.ru)
*******************************************************}
unit LayoutFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseFormUnit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2019Colorful,
  cxClasses, dxLayoutContainer, dxLayoutControl;

type
  /// <summary>TLayoutForm
  /// ������� ����� � ��������������� ��������� �� ������ Devexpress Layout control
  /// </summary>
  TLayoutForm = class abstract(TBaseForm)
    lgrRoot: TdxLayoutGroup;
    lacMain: TdxLayoutControl;
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
