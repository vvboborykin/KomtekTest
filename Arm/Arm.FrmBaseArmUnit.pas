{*******************************************************
* Project: KomtekTest
* Unit: Unit1.pas
* Description: Базовая форма АРМ
*
* Created: 27.12.2022 21:43:02
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.FrmBaseArmUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Ora,
  System.DateUtils, System.UITypes, Data.DB, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LayoutFormUnit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2019Colorful,
  cxClasses, dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters,
  Vcl.ExtCtrls, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, DataNotificationUnit, dxLayoutcxEditAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, DBAccess, MemDS, cxGridLevel, cxGridCustomView, cxGrid, Vcl.Menus,
  cxButtons, System.Actions, Vcl.ActnList, Vcl.ImgList, cxImageList,
  Search.EngineUnit, Search.FrmFindUnit, FrmMDIChildUnit;

type
  /// <summary>TBaseArmForm
  /// Базовая форма АРМ
  /// </summary>
  TFrmBaseArm = class(TFrmMDIChild)
    pnlFind: TPanel;
    layFind: TdxLayoutItem;
    lgrWorkArea: TdxLayoutGroup;
    lgrDetails: TdxLayoutGroup;
    lgrHumanInfo: TdxLayoutGroup;
    viewHumans: TcxGridDBTableView;
    lvlHumans: TcxGridLevel;
    grdHumans: TcxGrid;
    litHumans: TdxLayoutItem;
    qryHuman: TOraQuery;
    dsHumans: TOraDataSource;
    qryHumanID: TFloatField;
    qryHumanSURNAME: TStringField;
    qryHumanFIRSTNAME: TStringField;
    qryHumanPATRNAME: TStringField;
    qryHumanBIRTHDATE: TDateTimeField;
    edSURNAME: TcxDBTextEdit;
    lit: TdxLayoutItem;
    edFIRSTNAME: TcxDBTextEdit;
    lit1: TdxLayoutItem;
    edPATRNAME: TcxDBTextEdit;
    lit2: TdxLayoutItem;
    edBIRTHDATE: TcxDBDateEdit;
    lit3: TdxLayoutItem;
    viewHumansID: TcxGridDBColumn;
    viewHumansSURNAME: TcxGridDBColumn;
    viewHumansFIRSTNAME: TcxGridDBColumn;
    viewHumansPATRNAME: TcxGridDBColumn;
    viewHumansBIRTHDATE: TcxGridDBColumn;
    viewHumansCREATETS: TcxGridDBColumn;
    qryDocument: TOraQuery;
    dsDocument: TOraDataSource;
    lgrDocuments: TdxLayoutGroup;
    aclMain: TActionList;
    iml24: TcxImageList;
    iml16: TcxImageList;
    lgrHumanGridButtons: TdxLayoutGroup;
    actRefreshHumanList: TAction;
    btnRefreshHumanList: TcxButton;
    lit6: TdxLayoutItem;
    viewDocuments: TcxGridDBTableView;
    lvlDocuments: TcxGridLevel;
    grdDocuments: TcxGrid;
    litDocuments: TdxLayoutItem;
    qryDocumentDOCDATE: TDateTimeField;
    qryDocumentTITLE: TStringField;
    qryDocumentID: TFloatField;
    qryDocumentHUMANID: TFloatField;
    viewDocumentsID: TcxGridDBColumn;
    viewDocumentsDOCDATE: TcxGridDBColumn;
    viewDocumentsTITLE: TcxGridDBColumn;
    actSaveHuman: TAction;
    actCancelHuman: TAction;
    actCreateHuman: TAction;
    actFocusFind: TAction;
    cbbLimit: TcxComboBox;
    litPeopleMaxCount: TdxLayoutItem;
    qryHumanCREATETS: TDateTimeField;
    edCREATETS: TcxDBDateEdit;
    lit4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    actCreateDocument: TAction;
    actEditDocument: TAction;
    dxSepSearch: TdxLayoutSeparatorItem;
    imlTab: TcxImageList;
    qryDocumentDOCNUM: TFloatField;
    viewDocumentsDOCNUM: TcxGridDBColumn;
    procedure actCancelHumanExecute(Sender: TObject);
    procedure actCreateDocumentExecute(Sender: TObject);
    procedure actCreateHumanExecute(Sender: TObject);
    procedure actEditDocumentExecute(Sender: TObject);
    procedure actRefreshHumanListExecute(Sender: TObject);
    procedure actSaveHumanExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDocumentNewRecord(DataSet: TDataSet);
    procedure qryHumanAfterPost(DataSet: TDataSet);
    procedure cbbLimitPropertiesEditValueChanged(Sender: TObject);
    procedure qryHumanPostError(DataSet: TDataSet; E: EDatabaseError; var Action:
        TDataAction);
  strict private
    FSearch: IHumanSearchEngine;
    /// <summary>TFrmBaseArm.CreateFindForm
    /// Создать форму поиска и встроить ее в pnlFind
    /// </summary>
    /// <returns> TFrmFind
    /// </returns>
    function CreateFindForm: TFrmFind;
    /// <summary>TFrmBaseArm.CreateAndBindSearchEngine
    /// Создат поисковый механизм и связать его с формой поиска
    /// </summary>
    /// <param name="vFindForm"> (TFrmFind) </param>
    procedure CreateAndBindSearchEngine(vFindForm: TFrmFind);
  strict protected
    /// <summary>TFrmBaseArm.GetFindFormClass
    /// Получить классс поисковой формы АРМ
    /// </summary>
    /// <returns> TFrmFindClass
    /// </returns>
    function GetFindFormClass: TFrmFindClass; virtual;
    /// <summary>TFrmBaseArm.OpenDatasets
    /// Отрыть наборы данных формы
    /// </summary>
    procedure OpenDatasets; virtual;
  public
  end;

  TFrmBaseArmClass = class of TFrmBaseArm;

implementation

uses
  MainFormUnit, Lib.ComponentHelperUnit, DbLib.DataSetHelperUnit, AppDataUnit,
  Search.OraQueryEngineUnit, Arm.CreateDocumentParamsUnit,
  Arm.DocumentFormFactoryUnit;

resourcestring
  SDateMaxError = 'Дата не может быть больше текущей';
  SDateMinError = 'Дата не может быть меньше 01.01.1900';
  SConfirmSaveHuman =
    'Данные о текущем человеке не сохранены. Вы хотите сохранить их ?';

{$R *.dfm}

procedure TFrmBaseArm.actCancelHumanExecute(Sender: TObject);
begin
  inherited;
  qryHuman.CancelIfNeeded;
end;

procedure TFrmBaseArm.actCreateDocumentExecute(Sender: TObject);
var
  vParams: TCreateDocumentParams;
begin
  inherited;
  if not qryHuman.IsEmpty then
  begin
    vParams.HumanId := qryHumanID.AsVariant;
    DocumentFormFactory.CreateDocument(vParams);
  end;
end;

procedure TFrmBaseArm.actCreateHumanExecute(Sender: TObject);
begin
  inherited;
  if qryHuman.State <> dsBrowse then
  begin
    case MessageDlg(SConfirmSaveHuman, mtWarning, [mbYes, mbNo, mbCancel], 0) of
      mrYes:
        qryHuman.Post;
      mrNo:
        qryHuman.Cancel;
      mrCancel:
        Exit;
    end;
  end;

  // активируем закладку - редактор человека
  lgrDetails.ItemIndex := 0;
  qryHuman.Append;
end;

procedure TFrmBaseArm.actEditDocumentExecute(Sender: TObject);
begin
  inherited;
  if not qryDocument.IsEmpty then
  begin
    DocumentFormFactory.EditDocument(qryDocumentID.AsVariant);
  end;
end;

procedure TFrmBaseArm.actRefreshHumanListExecute(Sender: TObject);
begin
  inherited;
  qryHuman.CloseOpen;
end;

procedure TFrmBaseArm.actSaveHumanExecute(Sender: TObject);
begin
  inherited;
  qryHuman.PostIfNeeded;
end;

procedure TFrmBaseArm.cbbLimitPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  // изменяем макрос определяющий количество возвращаемых записей
  qryHuman.MacroByName('LimitCount').Value :=
    cbbLimit.Properties.Items[cbbLimit.SelectedItem];

  // переоткрываем humans
  qryHuman.CloseOpen;
end;

procedure TFrmBaseArm.CreateAndBindSearchEngine(vFindForm: TFrmFind);
begin
  FSearch := TOraQuerySurnameSearchEngine.Create(qryHuman, 'FioWhere',
    qryHumanSURNAME.FieldName, 'DateWhere', qryHumanBIRTHDATE.FieldName,
    qryHumanCREATETS.FieldName);

  vFindForm.HumanSearchEngine := FSearch;
end;

procedure TFrmBaseArm.FormCreate(Sender: TObject);
begin
  inherited;
  CreateAndBindSearchEngine(CreateFindForm);
  OpenDatasets();
end;

function TFrmBaseArm.CreateFindForm: TFrmFind;
var
  vFindForm: TFrmFind;
begin
  vFindForm := GetFindFormClass.Create(pnlFind);

  // располагаем форму поиска в pnlFind
  vFindForm.Parent := pnlFind;
  vFindForm.Visible := True;
  vFindForm.Align := alTop;
  Application.ProcessMessages;

  // подгоняем высоту pnlFind под форму поиска
  pnlFind.Height := vFindForm.Height;
  Application.ProcessMessages;
  Result := vFindForm;
end;

function TFrmBaseArm.GetFindFormClass: TFrmFindClass;
begin
  Result := TFrmFind;
end;

procedure TFrmBaseArm.OpenDatasets;
begin
  qryHuman.Open;
  qryDocument.Open;
end;

procedure TFrmBaseArm.qryDocumentNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDocumentHUMANID.Value := qryHumanID.Value;
end;

procedure TFrmBaseArm.qryHumanAfterPost(DataSet: TDataSet);
begin
  inherited;
  BroadcastTableModified((DataSet as TOraQuery).UpdatingTable);
end;

procedure TFrmBaseArm.qryHumanPostError(DataSet: TDataSet; E: EDatabaseError;
    var Action: TDataAction);
begin
  inherited;
  ShowOracleException(E);
  Action := daAbort;
end;

end.

