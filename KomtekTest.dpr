program KomtekTest;



{$R *.dres}

uses
  Vcl.Forms,
  Vcl.Dialogs,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  LayoutFormUnit in 'BaseForms\LayoutFormUnit.pas' {LayoutForm},
  DevExpressOptionsUnit in 'DevExpressOptionsUnit.pas' {DevExpressOptions: TDataModule},
  Arm.FrmTypeSelectorUnit in 'Arm\Arm.FrmTypeSelectorUnit.pas' {FrmTypeSelector},
  Arm.FrmBaseArmUnit in 'Arm\Arm.FrmBaseArmUnit.pas' {frmBaseArm},
  Arm.FrmOperatorUnit in 'Arm\Arm.FrmOperatorUnit.pas' {FrmOperator},
  Arm.FrmStatistUnit in 'Arm\Arm.FrmStatistUnit.pas' {FrmStatist},
  Arm.ArmFormFactoryUnit in 'Arm\Arm.ArmFormFactoryUnit.pas',
  Search.FrmFindUnit in 'Search\Search.FrmFindUnit.pas' {FrmFind},
  Search.EngineUnit in 'Search\Search.EngineUnit.pas',
  Lib.CommandLineService in 'Lib\Lib.CommandLineService.pas',
  Lib.Nullable in 'Lib\Lib.Nullable.pas',
  Search.OraQueryEngineUnit in 'Search\Search.OraQueryEngineUnit.pas',
  AppDataUnit in 'AppDataUnit.pas' {AppData: TDataModule},
  BaseFormUnit in 'BaseForms\BaseFormUnit.pas' {BaseForm},
  DataNotificationUnit in 'DataNotificationUnit.pas',
  Lib.ComponentHelper in 'Lib\Lib.ComponentHelper.pas',
  DbLib.DataSetHelper in 'DbLib\DbLib.DataSetHelper.pas',
  VCL.DbEditorsValidator in 'Lib\VCL.DbEditorsValidator.pas',
  BaseFrameUnit in 'BaseForms\BaseFrameUnit.pas' {BaseFrame: TFrame},
  Search.FrmFindStatistUnit in 'Search\Search.FrmFindStatistUnit.pas' {FrmFindStatist},
  Arm.FrmDocumentUnit in 'Arm\Arm.FrmDocumentUnit.pas' {FrmDocument},
  Arm.DocumentFormFactory in 'Arm\Arm.DocumentFormFactory.pas',
  VCL.DevExpressDbEditor in 'Lib\VCL.DevExpressDbEditor.pas',
  FrmMDIChildUnit in 'BaseForms\FrmMDIChildUnit.pas' {FrmMDIChild};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Тестовая задача КОМТЕК';
  Application.CreateForm(TAppData, AppData);
  AppData.sesMain.Open;
  if AppData.sesMain.Connected then
  begin
    Application.CreateForm(TDevExpressOptions, DevExpressOptions);
    Application.CreateForm(TMainForm, MainForm);
  end;
  Application.Run;
end.
