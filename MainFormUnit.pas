unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseFormUnit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2019Colorful,
  dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxBar, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList, cxClasses, dxRibbon,
  Vcl.StdActns;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

end.
