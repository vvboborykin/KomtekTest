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
  System.Generics.Collections,
  FrmMDIChildUnit, DataNotificationUnit, DevExpressOptionsUnit,
  Lib.SubscriptionUnit, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, BaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2019Colorful, dxCore,
  dxRibbonSkins, dxRibbonCustomizationForm, dxBar, System.Actions, Vcl.ActnList,
  Vcl.ImgList, cxImageList, cxClasses, dxRibbon, Vcl.StdActns, dxRibbonGallery,
  dxSkinChooserGallery, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Arm.FrmBaseArmUnit, dxBarExtItems;

type
  TMainForm = class(TBaseForm)
    tabMain: TdxRibbonTab;
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
    barStyle: TdxBar;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    iml16: TcxImageList;
    btn1: TdxBarButton;
    btn2: TdxBarButton;
    btn3: TdxBarButton;
    btn4: TdxBarButton;
    btn5: TdxBarButton;
    btn6: TdxBarButton;
    ArmMruList: TdxBarMRUListItem;
    procedure actCreateOperArmExecute(Sender: TObject);
    procedure actCreateStatistArmExecute(Sender: TObject);
    procedure ArmMruListClick(Sender: TObject);
    procedure dxSkinChooserGalleryItem1SkinChanged(Sender: TObject; const
      ASkinName: string);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  strict private
    FShowFirstTime: Boolean;
    procedure CloseAllMdiChildren;
    procedure ShowArmSelectorAfterDelay(ADelayTimeMs: Integer);
  private
  strict protected
    /// <summary>ISubscriber<TMessageData>.OnPublisherMessage
    /// Обработчик событий получаемых от издателей
    /// </summary>
    /// <param name="APublisher"> (IPublisher<TMessageData>) Издатель</param>
    /// <param name="AMessage"> (TMessageData) Событие</param>
    procedure OnPublisherMessage(APublisher: IPublisher<TSkinNotification>;
      AMessage: TSkinNotification); override; stdcall;
  public
    procedure RegisterMdiChild(AForm: TForm);
    procedure UnRegisterMdiChild(AForm: TForm);
    procedure UpdateMDIChildCaption(AForm: TForm);
  end;

var
  MainForm: TMainForm;

implementation

uses
  Arm.FrmTypeSelectorUnit, Arm.ArmFormFactoryUnit;

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

procedure TMainForm.ArmMruListClick(Sender: TObject);
var
  vForm: TForm;
begin
  inherited;
  vForm := ArmMruList.Items.Objects[ArmMruList.ItemIndex] as TForm;
  vForm.Show;
end;

procedure TMainForm.CloseAllMdiChildren;
var
  vFormList: TList<TForm>;
  I: Integer;
begin
  vFormList := TList<TForm>.Create;
  try
    // дубликат списка MDI детей необходим для итерации по списку
    // без его изменений при закрытии MDI форм
    for I := 0 to MDIChildCount-1 do
      vFormList.Add(MDIChildren[I]);
    for I := 0 to vFormList.Count-1 do
      vFormList[I].Close;
  finally
    vFormList.Free;
  end;
  // обновим MDIChildCount
  Application.ProcessMessages;
end;

procedure TMainForm.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject; const
  ASkinName: string);
begin
  inherited;
  DevExpressOptions.SetSkinName(ASkinName);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CloseAllMdiChildren();
  CanClose := MDIChildCount = 0;
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

procedure TMainForm.OnPublisherMessage(APublisher: IPublisher<TSkinNotification>;
  AMessage: TSkinNotification);
begin
  rbMain.ColorSchemeName := AMessage.SkinName;
end;

procedure TMainForm.RegisterMdiChild(AForm: TForm);
begin
  ArmMruList.AddItem(AForm.Caption, AForm);
end;

procedure TMainForm.ShowArmSelectorAfterDelay(ADelayTimeMs: Integer);
var
  vThread: TThread;
begin
  vThread := TThread.CreateAnonymousThread(
    procedure
    begin
      // дадим главной форме прорисоваться
      Sleep(ADelayTimeMs);

      // все работы с формами выполняем в основном потоке приложения
      TThread.Synchronize(nil,
        procedure
        var
          vClass: TFrmBaseArmClass;
        begin
          vClass := TFrmTypeSelector.SelectArmClass;
          if vClass <> nil then
            ArmFormFactory.CreateArmForm(vClass);
        end);
    end);
  vThread.FreeOnTerminate := True;
  vThread.Start;
end;

procedure TMainForm.UnRegisterMdiChild(AForm: TForm);
begin
  ArmMruList.RemoveItem(AForm.Caption, AForm);
end;

procedure TMainForm.UpdateMDIChildCaption(AForm: TForm);
var
  I: Integer;
begin
  I := ArmMruList.Items.IndexOfObject(AForm);
  if I >= 0 then
    ArmMruList.Items[I] := AForm.Caption;
end;

end.

