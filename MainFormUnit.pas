{*******************************************************
* Project: KomtekTest
* Unit: MainFormUnit.pas
* Description: Главная форма приложения
*
* Created: 28.12.2022 8:25:49
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  BaseFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2019Colorful, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImageList, cxClasses, dxRibbon, Vcl.StdActns,
  System.Threading, ArmFormFactoryUnit;

type
  TMainForm = class(TBaseForm)
    rbMainTab1: TdxRibbonTab;
    rbMain: TdxRibbon;
    manMain: TdxBarManager;
    iml32: TcxImageList;
    aclMain: TActionList;
    actCreateOperArm: TAction;
    actCreateStatistArm: TAction;
    dxbrArm: TdxBar;
    btnOperArm: TdxBarLargeButton;
    btnStatistArm: TdxBarLargeButton;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    dxbrWindows: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    procedure actCreateOperArmExecute(Sender: TObject);
    procedure actCreateStatistArmExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  strict private
    FShowFirstTime: Boolean;
    procedure ShowArmSelectorAfterDelay(ADelayTimeMs: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  ArmTypeSelectorFormUnit;

const
  cSelectorFormDelay = 100;

{$R *.dfm}

procedure TMainForm.actCreateOperArmExecute(Sender: TObject);
begin
  inherited;
  ArmFormFactory.CreateOperArm();
end;

procedure TMainForm.actCreateStatistArmExecute(Sender: TObject);
begin
  inherited;
  ArmFormFactory.CreateStatistArm();
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  inherited;
  FShowFirstTime := True;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  inherited;
  if FShowFirstTime then
  begin
    FShowFirstTime := False;
    Application.ProcessMessages;
    ShowArmSelectorAfterDelay(cSelectorFormDelay);
  end;
end;

procedure TMainForm.ShowArmSelectorAfterDelay(ADelayTimeMs: Integer);
begin
  TTask.Run(
    procedure
    begin
      Sleep(ADelayTimeMs);
      TThread.Synchronize(nil,
        procedure
        begin
          var vClass := TArmTypeSelectorForm.SelectArmClass;
          if vClass <> nil then
            ArmFormFactory.CreateArmForm(vClass);
        end);
    end);
end;

end.

