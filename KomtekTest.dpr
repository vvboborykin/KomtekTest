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
  Lib.CommandLineServiceUnit in 'Lib\Lib.CommandLineServiceUnit.pas',
  Lib.NullableUnit in 'Lib\Lib.NullableUnit.pas',
  Search.OraQueryEngineUnit in 'Search\Search.OraQueryEngineUnit.pas',
  AppDataUnit in 'AppDataUnit.pas' {AppData: TDataModule},
  BaseFormUnit in 'BaseForms\BaseFormUnit.pas' {BaseForm},
  DataNotificationUnit in 'DataNotificationUnit.pas',
  Lib.ComponentHelperUnit in 'Lib\Lib.ComponentHelperUnit.pas',
  DbLib.DataSetHelperUnit in 'DbLib\DbLib.DataSetHelperUnit.pas',
  VCL.DbEditorsVisualValidatorUnit in 'Lib\VCL.DbEditorsVisualValidatorUnit.pas',
  BaseFrameUnit in 'BaseForms\BaseFrameUnit.pas' {BaseFrame: TFrame},
  Search.FrmFindStatistUnit in 'Search\Search.FrmFindStatistUnit.pas' {FrmFindStatist},
  Arm.FrmDocumentUnit in 'Arm\Arm.FrmDocumentUnit.pas' {FrmDocument},
  Arm.DocumentFormFactoryUnit in 'Arm\Arm.DocumentFormFactoryUnit.pas',
  VCL.DevExpressDbEditorUnit in 'Lib\VCL.DevExpressDbEditorUnit.pas',
  FrmMDIChildUnit in 'BaseForms\FrmMDIChildUnit.pas' {FrmMDIChild},
  VCL.DevExpressRichEditControlDataUnit in 'Lib\VCL.DevExpressRichEditControlDataUnit.pas',
  Arm.CreateDocumentParamsUnit in 'Arm\Arm.CreateDocumentParamsUnit.pas',
  OraErrorProcessorUnit in 'OraErrorProcessorUnit.pas',
  VCL.WindowsDialogsUnit in 'Lib\VCL.WindowsDialogsUnit.pas',
  Lib.SubscriptionUnit in 'Lib\Lib.SubscriptionUnit.pas',
  Lib.ThreadSafeObjectUnit in 'Lib\Lib.ThreadSafeObjectUnit.pas',
  LoggerPro in 'Logging\LoggerPro.pas',
  LoggerPro.FileAppender in 'Logging\LoggerPro.FileAppender.pas',
  LoggerPro.GlobalLogger in 'Logging\LoggerPro.GlobalLogger.pas',
  Logging.AppLogger in 'Logging\Logging.AppLogger.pas',
  ThreadSafeQueueU in 'Logging\ThreadSafeQueueU.pas';

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
