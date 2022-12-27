unit DevExpressOptionsUnit;

interface

uses
  System.SysUtils, System.Classes, cxClasses, cxLocalization, VCL.Forms, Winapi.Windows,
  dxLayoutLookAndFeels;

type
  TDevExpressOptions = class(TDataModule)
    locRus: TcxLocalizer;
    llfMain: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    procedure DataModuleCreate(Sender: TObject);
  strict private
    procedure LoadRusLocalization;
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
  LoadRusLocalization;
  locRus.Active := True;
end;

procedure TDevExpressOptions.LoadRusLocalization;
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

end.
