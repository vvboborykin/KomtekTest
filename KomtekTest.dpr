program KomtekTest;



{$R *.dres}

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  LayoutFormUnit in 'BaseForms\LayoutFormUnit.pas' {LayoutForm},
  DevExpressOptionsUnit in 'DevExpressOptionsUnit.pas' {DevExpressOptions: TDataModule},
  Arm.TypeSelectorFormUnit in 'Arm\Arm.TypeSelectorFormUnit.pas' {ArmTypeSelectorForm},
  Arm.BaseFormUnit in 'Arm\Arm.BaseFormUnit.pas' {BaseArmForm},
  Arm.OperFormUnit in 'Arm\Arm.OperFormUnit.pas' {FrmOperator},
  Arm.StatistFormUnit in 'Arm\Arm.StatistFormUnit.pas' {FrmStatist},
  Arm.FormFactoryUnit in 'Arm\Arm.FormFactoryUnit.pas',
  Search.FindFormUnit in 'Search\Search.FindFormUnit.pas' {FrmFind},
  Search.EngineUnit in 'Search\Search.EngineUnit.pas',
  Lib.CommandLineService in 'Lib\Lib.CommandLineService.pas',
  Lib.Nullable in 'Lib\Lib.Nullable.pas',
  Search.OraQueryEngineUnit in 'Search\Search.OraQueryEngineUnit.pas',
  AppDataUnit in 'AppDataUnit.pas' {AppData: TDataModule},
  BaseFormUnit in 'BaseForms\BaseFormUnit.pas' {BaseForm};

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
