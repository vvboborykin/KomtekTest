{*******************************************************
* Project: KomtekTest
* Unit: DevExpressOptionsUnit.pas
* Description: Модуль глобальных параметров работы компонентов DevExpress
*
* Created: 27.12.2022 22:12:19
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit DevExpressOptionsUnit;

interface

uses
  System.SysUtils, System.Classes, cxClasses, cxLocalization, VCL.Forms, Winapi.Windows,
  dxLayoutLookAndFeels;

type
  /// <summary>TDevExpressOptions
  /// Модуль глобальных параметров работы компонентов DevExpress
  /// </summary>
  TDevExpressOptions = class(TDataModule)
    locRus: TcxLocalizer;
    llfMain: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    procedure DataModuleCreate(Sender: TObject);
  strict private
    /// <summary>TDevExpressOptions.LoadRusLocalizationFromRCData
    /// Загрузить локализацию компонентов Devexpress из встроенного ресурса приложения
    /// </summary>
    procedure LoadRusLocalizationFromRCData;
  private
    procedure SetRusLocalization;
  public
  end;

var
  DevExpressOptions: TDevExpressOptions;

implementation

const
  SDevExpressRuLocale = 'DevExpressRuLocale';

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDevExpressOptions.DataModuleCreate(Sender: TObject);
begin
  SetRusLocalization;
end;

procedure TDevExpressOptions.LoadRusLocalizationFromRCData;
var
  RS: TResourceStream;
begin
  RS := TResourceStream.Create(HInstance, SDevExpressRuLocale, RT_RCDATA);
  try
    locRus.LoadFromStream(RS);
  finally
    RS.Free;
  end;
end;

procedure TDevExpressOptions.SetRusLocalization;
begin
  LoadRusLocalizationFromRCData;
  locRus.Active := True;
  locRus.LanguageIndex := $419;
end;

end.
