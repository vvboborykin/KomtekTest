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
  FindFormUnit in 'FindFormUnit.pas' {FrmFind};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Тестовая задача КОМТЕК';
  Application.CreateForm(TDevExpressOptions, DevExpressOptions);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFrmFind, FrmFind);
  Application.Run;
end.
