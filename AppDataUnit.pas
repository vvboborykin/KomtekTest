unit AppDataUnit;

interface

uses
  System.SysUtils, System.Classes, DBAccess, Data.DB, Ora, OdacVcl, OraCall;

type
  TAppData = class(TDataModule)
    sesMain: TOraSession;
    dlgConnect: TConnectDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppData: TAppData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
