{*******************************************************
* Project: KomtekTest
* Unit: FrmMDIChildUnit.pas
* Description: Базовая дочерняя форма MDI
*
* Created: 31.12.2022 21:28:02
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit FrmMDIChildUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DataNotificationUnit, Ora, Vcl.Controls, Data.DB,
  Vcl.Forms, Vcl.Dialogs, LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxClasses, dxLayoutContainer, dxLayoutControl, VCL.DbEditorsValidator;

type
  /// <summary>TFrmMDIChild
  /// Базовая дочерняя форма MDI
  /// </summary>
  TFrmMDIChild = class(TLayoutForm, IDataNotificationListener)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    // механизм валидации данных
    FValidator: TDevExpressVisualValidator;
  strict protected
    procedure OnDataNotification(AData: TDataNotification); virtual; stdcall;
  public
    property Validator: TDevExpressVisualValidator read FValidator;
  end;

implementation

uses
  MainFormUnit, Lib.ComponentHelper, DbLib.DataSetHelper, AppDataUnit;

{$R *.dfm}

var
  FArmCounter: Integer;

procedure TFrmMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmMDIChild.FormCreate(Sender: TObject);
begin
  inherited;
  FValidator := TDevExpressVisualValidator.Create(Self);
  Inc(FArmCounter);
  Caption := Caption + ' №' + FArmCounter.ToString();
  MainForm.RegisterMdiChild(Self);
  (AppData as IDataNotificationHub).RegisterListener(Self);
end;

procedure TFrmMDIChild.FormDestroy(Sender: TObject);
begin
  (AppData as IDataNotificationHub).UnRegisterListener(Self);
  MainForm.UnRegisterMdiChild(Self);
  FValidator.Free;
  inherited;
end;

procedure TFrmMDIChild.OnDataNotification(AData: TDataNotification);
begin
  // оповещение других активных АРМ приложения об изменении данных таблицы
  // необходимо для синхронизации данных в разных АРМ
  // можно было сделать на основе TOraChangeNotification но не будет работать
  // в DirectMode
  Self.ForEachSubcomponent<TOraQuery>(
    procedure(AQuery: TOraQuery)
    begin
      if (AQuery.State = dsBrowse) and (AData is TTableDataNotification) and
        AnsiSameText((AData as TTableDataNotification).TableName, AQuery.UpdatingTable)
      then
        AQuery.CloseOpen;
    end);
end;

initialization
  FArmCounter := 0;

end.

