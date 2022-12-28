﻿{*******************************************************
* Project: KomtekTest
* Unit: FindFormUnit.pas
* Description: Форма интерфейса пользователя для поиска по фамилии
*
* Created: 28.12.2022 11:11:52
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Search.FindFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LayoutFormUnit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2019Colorful,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutContainer, cxTextEdit,
  cxClasses, dxLayoutControl, Search.EngineUnit, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmFind = class(TLayoutForm)
    edFind: TcxTextEdit;
    litFind: TdxLayoutItem;
    aclFind: TActionList;
    iml24: TcxImageList;
    actFind: TAction;
    btnFind: TcxButton;
    litFindButton: TdxLayoutItem;
    procedure actFindExecute(Sender: TObject);
  strict private
    procedure FindLastName;
  private
    FLastNameSearchEngine: ILastNameSearchEngine;
    procedure SetLastNameSearchEngine(const Value: ILastNameSearchEngine);
    { Private declarations }
  public
    /// <summary>TFrmFind.LastNameSearchEngine
    /// Механизм поиска по фамилии
    /// </summary>
    /// type:ILastNameSearchEngine
    property LastNameSearchEngine: ILastNameSearchEngine read FLastNameSearchEngine
        write SetLastNameSearchEngine;
  end;

  ESearchEngineNotSpecified = class(Exception)
  public
    constructor Create;
  end;

implementation

resourcestring
  SSearchEngineNotAssigned = 'Для формы поиска по фамилии не задан механизм поиска';
  SHumanNotFound = 'Человек с указанной фамилией в БД не найден';

{$R *.dfm}

procedure TFrmFind.actFindExecute(Sender: TObject);
begin
  inherited;
  FindLastName();
end;

procedure TFrmFind.FindLastName;
begin
  var vLastName := edFind.Text;
  if (FLastNameSearchEngine <> nil) then
  begin
    if not FLastNameSearchEngine.FindHumanByLastName(vLastName) then
      ShowMessage(SHumanNotFound);
  end
  else
    raise ESearchEngineNotSpecified.Create();
end;

procedure TFrmFind.SetLastNameSearchEngine(const Value: ILastNameSearchEngine);
begin
  if FLastNameSearchEngine <> Value then
  begin
    FLastNameSearchEngine := Value;
  end;
end;

constructor ESearchEngineNotSpecified.Create;
begin
  inherited Create(SSearchEngineNotAssigned);
end;

end.
