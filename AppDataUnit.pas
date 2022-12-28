unit AppDataUnit;

interface

uses
  System.SysUtils, System.Classes, DBAccess, UniDacVcl, UniProvider,
  OracleUniProvider, Data.DB, Uni;

type
  TAppData = class(TDataModule)
    conMain: TUniConnection;
    OracleUniProvider1: TOracleUniProvider;
    dlgOra: TUniConnectDialog;
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
