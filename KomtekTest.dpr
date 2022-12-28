program KomtekTest;

{$R *.dres}

uses
  Vcl.Forms,
  BaseFormUnit in 'BaseFormUnit.pas' {BaseForm},
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  LayoutFormUnit in 'LayoutFormUnit.pas' {LayoutForm},
  DevExpressOptionsUnit in 'DevExpressOptionsUnit.pas' {DevExpressOptions: TDataModule},
  ArmTypeSelectorFormUnit in 'ArmTypeSelectorFormUnit.pas' {ArmTypeSelectorForm},
  BaseArmFormUnit in 'BaseArmFormUnit.pas' {BaseArmForm},
  OperArmFormUnit in 'OperArmFormUnit.pas' {FrmOperator},
  StatistArmFormUnit in 'StatistArmFormUnit.pas' {FrmStatist},
  ArmFormFactoryUnit in 'ArmFormFactoryUnit.pas',
  Search.FindFormUnit in 'Search\Search.FindFormUnit.pas' {FrmFind},
  Search.EngineUnit in 'Search\Search.EngineUnit.pas',
  Lib.CommandLineService in 'Lib\Lib.CommandLineService.pas',
  Lib.Nullable in 'Lib\Lib.Nullable.pas',
  Search.FDQueryEngineUnit in 'Search\Search.FDQueryEngineUnit.pas',
  AppDataUnit in 'AppDataUnit.pas' {AppData: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Тестовая задача КОМТЕК';
  Application.CreateForm(TAppData, AppData);
  Application.CreateForm(TDevExpressOptions, DevExpressOptions);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
