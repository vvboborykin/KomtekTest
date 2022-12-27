program KomtekTest;

{$R *.dres}

uses
  Vcl.Forms,
  BaseFormUnit in 'BaseFormUnit.pas' {BaseForm},
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  LayoutFormUnit in 'LayoutFormUnit.pas' {LayoutForm},
  DevExpressOptionsUnit in 'DevExpressOptionsUnit.pas' {DevExpressOptions: TDataModule},
  ArmTypeSelectorFormUnit in 'ArmTypeSelectorFormUnit.pas' {ArmTypeSelectorForm},
  BaseArmFormUnit in 'BaseArmFormUnit.pas' {BaseArmForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '�������� ������ ������';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLayoutForm, LayoutForm);
  Application.CreateForm(TDevExpressOptions, DevExpressOptions);
  Application.CreateForm(TArmTypeSelectorForm, ArmTypeSelectorForm);
  Application.CreateForm(TBaseArmForm, BaseArmForm);
  Application.Run;
end.
