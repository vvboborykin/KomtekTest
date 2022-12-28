unit FindFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LayoutFormUnit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2019Colorful,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutContainer, cxTextEdit,
  cxClasses, dxLayoutControl;

type
  TFrmFind = class(TLayoutForm)
    edFind: TcxTextEdit;
    litFind: TdxLayoutItem;
    aclFind: TActionList;
    iml24: TcxImageList;
    actFind: TAction;
    btnFind: TcxButton;
    litFindButton: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFind: TFrmFind;

implementation

{$R *.dfm}

end.
