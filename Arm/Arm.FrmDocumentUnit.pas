{*******************************************************
* Project: KomtekTest
* Unit: Arm.FrmDocumentUnit.pas
* Description: ФОрма - Редактор документа
*
* Created: 30.12.2022 19:06:30
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.FrmDocumentUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.DateUtils,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  LayoutFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxClasses, dxLayoutContainer,
  dxLayoutControl, dxLayoutControlAdapters, dxLayoutcxEditAdapters, Vcl.Menus,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxDBRichEdit,
  Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, Vcl.ImgList,
  cxImageList, Vcl.Mask, Vcl.DBCtrls, Data.DB, DBAccess, Ora, MemDS,
  DataNotificationUnit, dxCore, dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses,
  dxRichEdit.NativeApi, dxRichEdit.Types, dxRichEdit.Options, dxRichEdit.Control,
  dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs,
  dxBarBuiltInMenu, dxRibbonSkins, dxRibbonCustomizationForm, cxFontNameComboBox,
  cxDropDownEdit, dxRichEdit.Actions, dxActions, dxPrinting, dxBar, dxRibbon,
  dxGallery, dxRibbonGallery, dxRibbonColorGallery, cxBarEditItem,
  dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core,
  Arm.DocumentFormFactory, FrmMDIChildUnit, cxDBEdit, cxMaskEdit, cxCalendar,
  PtblRV, RVADownloadInterface, RVAIndyDownloadInterface, RVASpell,
  RVASpellInterface, RVAASpellInterface, RichViewActions, SRVActions,
  Vcl.StdActns, RVMathActions, RVReportShapeAction, Vcl.ExtCtrls, RVRulerBase,
  RVRuler, RVScroll, SclRView, DBSRVE, cxCalc;

type
  /// <summary>TFrmDocument
  /// Форма - Редактор документа
  /// </summary>
  TFrmDocument = class(TFrmMDIChild)
    qryDocument: TOraQuery;
    dsDocument: TOraDataSource;
    qryDocumentID: TFloatField;
    qryDocumentHUMANID: TFloatField;
    qryDocumentDOCDATE: TDateTimeField;
    qryDocumentTITLE: TStringField;
    qryDocumentCONTENT: TBlobField;
    btnSave: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    lgrBtn: TdxLayoutGroup;
    btnCancel: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    aclMain: TActionList;
    actSave: TAction;
    actCancel: TAction;
    iml24: TcxImageList;
    edDOCDATE: TcxDBDateEdit;
    lit: TdxLayoutItem;
    edTITLE: TcxDBTextEdit;
    lit1: TdxLayoutItem;
    DBSRichViewEdit1: TDBSRichViewEdit;
    litRtf: TdxLayoutItem;
    RVRuler1: TRVRuler;
    lit2: TdxLayoutItem;
    RVRuler2: TRVRuler;
    lit3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    RVRulerItemSelector1: TRVRulerItemSelector;
    lit4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    aclRtf: TActionList;
    imlRtf: TcxImageList;
    RVEBiDirvActionTextRTL1: TrvActionTextRTL;
    RVEBiDirvActionTextLTR1: TrvActionTextLTR;
    RVEBiDirvActionParaRTL1: TrvActionParaRTL;
    RVEBiDirvActionParaLTR1: TrvActionParaLTR;
    rvActionEvent1: TrvActionEvent;
    RVEEditrvActionCut1: TrvActionCut;
    RVEEditrvActionCopy1: TrvActionCopy;
    RVEEditrvActionPaste1: TrvActionPaste;
    RVEEditrvActionPasteAsText1: TrvActionPasteAsText;
    RVEEditrvActionPasteSpecial1: TrvActionPasteSpecial;
    RVEEditrvActionUndo1: TrvActionUndo;
    RVEEditrvActionRedo1: TrvActionRedo;
    RVEEditrvActionSelectAll1: TrvActionSelectAll;
    RVEEditrvActionFind1: TrvActionFind;
    RVEEditrvActionFindNext1: TrvActionFindNext;
    RVEEditrvActionReplace1: TrvActionReplace;
    RVEEditrvActionCharCase1: TrvActionCharCase;
    RVEFilervActionNew1: TrvActionNew;
    RVEFilervActionOpen1: TrvActionOpen;
    RVEFilervActionSave1: TrvActionSave;
    RVEFilervActionExport1: TrvActionExport;
    RVEFilervActionSaveAs1: TrvActionSaveAs;
    RVEFilervActionPrintPreview1: TrvActionPrintPreview;
    RVEFilervActionPrint1: TrvActionPrint;
    RVEFilervActionQuickPrint1: TrvActionQuickPrint;
    RVEFilervActionPageSetup1: TrvActionPageSetup;
    RVEInsertrvActionInsertFile1: TrvActionInsertFile;
    RVEInsertrvActionInsertPicture1: TrvActionInsertPicture;
    RVEInsertrvActionInsertHLine1: TrvActionInsertHLine;
    RVEInsertrvActionInsertPageNumber1: TrvActionInsertPageNumber;
    RVEInsertrvActionInsertPageCount1: TrvActionInsertPageCount;
    RVEInsertrvActionInsertNumber1: TrvActionInsertNumber;
    RVEMiscellaneousrvActionInsertCaption1: TrvActionInsertCaption;
    RVEInsertrvActionInsertHyperlink1: TrvActionInsertHyperlink;
    RVEInsertrvActionBookmarks1: TrvActionBookmarks;
    RVEInsertrvActionInsertSymbol1: TrvActionInsertSymbol;
    rvActionInsertText1: TrvActionInsertText;
    RVEInsertrvrActionInsertShape1: TrvrActionInsertShape;
    RVEInsertrvActionInsertEquation1: TrvActionInsertEquation;
    RVEListrvActionParaList1: TrvActionParaList;
    RVEListrvActionParaBullets1: TrvActionParaBullets;
    RVEListrvActionParaNumbering1: TrvActionParaNumbering;
    RVEMiscellaneousrvActionColor1: TrvActionColor;
    RVEMiscellaneousrvActionBackground1: TrvActionBackground;
    RVEMiscellaneousrvActionFillColor1: TrvActionFillColor;
    RVEMiscellaneousrvActionInsertPageBreak1: TrvActionInsertPageBreak;
    RVEMiscellaneousrvActionRemovePageBreak1: TrvActionRemovePageBreak;
    RVEMiscellaneousrvActionRemoveHyperlinks1: TrvActionRemoveHyperlinks;
    RVEMiscellaneousrvActionItemProperties1: TrvActionItemProperties;
    RVEMiscellaneousrvActionVAlign1: TrvActionVAlign;
    RVEMiscellaneousrvActionShowSpecialCharacters1: TrvActionShowSpecialCharacters;
    RVEParagraphrvActionParagraph1: TrvActionParagraph;
    RVEParagraphrvActionParaBorder1: TrvActionParaBorder;
    RVEParagraphrvActionWordWrap1: TrvActionWordWrap;
    RVEParagraphrvActionAlignLeft1: TrvActionAlignLeft;
    RVEParagraphrvActionAlignRight1: TrvActionAlignRight;
    RVEParagraphrvActionAlignCenter1: TrvActionAlignCenter;
    RVEParagraphrvActionAlignJustify1: TrvActionAlignJustify;
    RVEParagraphrvActionAlignDistribute1: TrvActionAlignDistribute;
    RVEParagraphrvActionIndentInc1: TrvActionIndentInc;
    RVEParagraphrvActionIndentDec1: TrvActionIndentDec;
    RVEParagraphrvActionParaColor1: TrvActionParaColor;
    RVEParagraphrvActionLineSpacing1001: TrvActionLineSpacing100;
    RVEParagraphrvActionLineSpacing1501: TrvActionLineSpacing150;
    RVEParagraphrvActionLineSpacing2001: TrvActionLineSpacing200;
    RVEParagraphrvActionClearLeft1: TrvActionClearLeft;
    RVEParagraphrvActionClearRight1: TrvActionClearRight;
    RVEParagraphrvActionClearBoth1: TrvActionClearBoth;
    RVEParagraphrvActionClearNone1: TrvActionClearNone;
    RVEReferencesrvActionInsertFootnote1: TrvActionInsertFootnote;
    RVEReferencesrvActionInsertEndnote1: TrvActionInsertEndnote;
    RVEReferencesrvActionInsertSidenote1: TrvActionInsertSidenote;
    RVEReferencesrvActionInsertTextBox1: TrvActionInsertTextBox;
    RVEReferencesrvActionEditNote1: TrvActionEditNote;
    RVESpellCheckrvActionSpellingCheck1: TrvActionSpellingCheck;
    RVESpellCheckrvActionThesaurus1: TrvActionThesaurus;
    RVEStylesrvActionStyleTemplates1: TrvActionStyleTemplates;
    RVEStylesrvActionAddStyleTemplate1: TrvActionAddStyleTemplate;
    RVEStylesrvActionClearFormat1: TrvActionClearFormat;
    RVEStylesrvActionClearTextFormat1: TrvActionClearTextFormat;
    RVEStylesrvActionStyleInspector1: TrvActionStyleInspector;
    RVETablervActionInsertTable1: TrvActionInsertTable;
    RVETablervActionTableInsertRowsBelow1: TrvActionTableInsertRowsBelow;
    RVETablervActionTableInsertRowsAbove1: TrvActionTableInsertRowsAbove;
    RVETablervActionTableInsertColLeft1: TrvActionTableInsertColLeft;
    RVETablervActionTableInsertColRight1: TrvActionTableInsertColRight;
    RVETablervActionTableDeleteRows1: TrvActionTableDeleteRows;
    RVETablervActionTableDeleteCols1: TrvActionTableDeleteCols;
    RVETablervActionTableDeleteTable1: TrvActionTableDeleteTable;
    RVETablervActionTableMergeCells1: TrvActionTableMergeCells;
    RVETablervActionTableSplitCells1: TrvActionTableSplitCells;
    RVETablervActionTableSelectTable1: TrvActionTableSelectTable;
    RVETablervActionTableSelectRows1: TrvActionTableSelectRows;
    RVETablervActionTableSelectCols1: TrvActionTableSelectCols;
    RVETablervActionTableSelectCell1: TrvActionTableSelectCell;
    RVETablervActionTableCellVAlignTop1: TrvActionTableCellVAlignTop;
    RVETablervActionTableCellVAlignMiddle1: TrvActionTableCellVAlignMiddle;
    RVETablervActionTableCellVAlignBottom1: TrvActionTableCellVAlignBottom;
    RVETablervActionTableCellVAlignDefault1: TrvActionTableCellVAlignDefault;
    RVETablervActionTableCellRotationNone1: TrvActionTableCellRotationNone;
    RVETablervActionTableCellRotation901: TrvActionTableCellRotation90;
    RVETablervActionTableCellRotation1801: TrvActionTableCellRotation180;
    RVETablervActionTableCellRotation2701: TrvActionTableCellRotation270;
    RVETablervActionTableCellVerticalFonts1: TrvActionTableCellVerticalFonts;
    RVETablervActionTableCellReverseLineOrder1: TrvActionTableCellReverseLineOrder;
    RVETablervActionTableCellLeftBorder1: TrvActionTableCellLeftBorder;
    RVETablervActionTableCellRightBorder1: TrvActionTableCellRightBorder;
    RVETablervActionTableCellTopBorder1: TrvActionTableCellTopBorder;
    RVETablervActionTableCellBottomBorder1: TrvActionTableCellBottomBorder;
    RVETablervActionTableCellAllBorders1: TrvActionTableCellAllBorders;
    RVETablervActionTableCellNoBorders1: TrvActionTableCellNoBorders;
    RVETablervActionTableSplit1: TrvActionTableSplit;
    RVETablervActionTableToText1: TrvActionTableToText;
    RVETablervActionTableSort1: TrvActionTableSort;
    RVETablervActionTableProperties1: TrvActionTableProperties;
    RVETablervActionTableGrid1: TrvActionTableGrid;
    RVETextrvActionFonts1: TrvActionFonts;
    RVETextrvActionFontEx1: TrvActionFontEx;
    RVETextrvActionFontBold1: TrvActionFontBold;
    RVETextrvActionFontItalic1: TrvActionFontItalic;
    RVETextrvActionFontUnderline1: TrvActionFontUnderline;
    RVETextrvActionFontStrikeout1: TrvActionFontStrikeout;
    RVETextrvActionFontGrow1: TrvActionFontGrow;
    RVETextrvActionFontShrink1: TrvActionFontShrink;
    RVETextrvActionFontGrowOnePoint1: TrvActionFontGrowOnePoint;
    RVETextrvActionFontShrinkOnePoint1: TrvActionFontShrinkOnePoint;
    RVETextrvActionFontAllCaps1: TrvActionFontAllCaps;
    RVETextrvActionFontOverline1: TrvActionFontOverline;
    RVETextrvActionFontColor1: TrvActionFontColor;
    RVETextrvActionFontBackColor1: TrvActionFontBackColor;
    RVETextrvActionSubscript1: TrvActionSubscript;
    RVETextrvActionSuperscript1: TrvActionSuperscript;
    RVETextrvActionHide1: TrvActionHide;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    SRVEFilesrvActionQuickPrint1: TsrvActionQuickPrint;
    SRVEFilesrvActionPrint1: TsrvActionPrint;
    SRVEFilesrvActionPageSetup1: TsrvActionPageSetup;
    SRVEMiscsrvActionEditHeader1: TsrvActionEditHeader;
    SRVEMiscsrvActionEditFooter1: TsrvActionEditFooter;
    SRVEMiscsrvActionEditMain1: TsrvActionEditMain;
    SRVEMiscsrvActionLineNumbers1: TsrvActionLineNumbers;
    SRVEPagesrvActionOrientationPortrait1: TsrvActionOrientationPortrait;
    SRVEPagesrvActionOrientationLandscape1: TsrvActionOrientationLandscape;
    SRVEPagesrvActionPageFormat1: TsrvActionPageFormat;
    SRVEReferencessrvActionInsertFootnote1: TsrvActionInsertFootnote;
    SRVEReferencessrvActionInsertEndnote1: TsrvActionInsertEndnote;
    SRVEReferencessrvActionInsertSidenote1: TsrvActionInsertSidenote;
    SRVEReferencessrvActionInsertTextBox1: TsrvActionInsertTextBox;
    SRVEReferencessrvActionEditNote1: TsrvActionEditNote;
    SRVEReferencessrvActionReturnToNote1: TsrvActionReturnToNote;
    SRVEViewsrvActionLayoutPrint1: TsrvActionLayoutPrint;
    SRVEViewsrvActionLayoutWeb1: TsrvActionLayoutWeb;
    SRVEViewsrvActionLayoutSideToSide1: TsrvActionLayoutSideToSide;
    SRVEViewsrvActionLayoutRead1: TsrvActionLayoutRead;
    SRVEViewsrvActionLayoutDraft1: TsrvActionLayoutDraft;
    SRVEViewsrvActionZoom1: TsrvActionZoom;
    SRVEViewsrvActionZoomPageWidth1: TsrvActionZoomPageWidth;
    SRVEViewsrvActionZoomFullPage1: TsrvActionZoomFullPage;
    SRVEViewsrvActionPreview1: TsrvActionPreview;
    SRVEViewsrvActionThumbnails1: TsrvActionThumbnails;
    RVAControlPanel: TRVAControlPanel;
    dlgColor: TColorDialog;
    RVAASpellInterface: TRVAASpellInterface;
    RVASpell: TRVASpell;
    RVAIndyDownloadInterface: TRVAIndyDownloadInterface;
    RVPrint: TRVPrint;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxBarDockControl1: TdxBarDockControl;
    lit5: TdxLayoutItem;
    manRtf: TdxBarManager;
    barRtfBar1: TdxBar;
    btn1: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btn2: TdxBarButton;
    btn3: TdxBarButton;
    qryDocumentDOCNUM: TFloatField;
    edDOCNUM: TcxDBCalcEdit;
    lit6: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    procedure actCancelExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure qryDocumentAfterPost(DataSet: TDataSet);
    procedure qryDocumentDOCDATEValidate(Sender: TField);
    procedure qryDocumentNewRecord(DataSet: TDataSet);
    procedure qryDocumentTITLEValidate(Sender: TField);
  strict private
    FCreateParams: TCreateDocumentParams;
    class procedure CreateAndShow(AProc: TProc<TFrmDocument>);
  strict protected
  public
    /// <summary>TFrmDocument.CreateNewDocument
    /// Создать новый документ
    /// </summary>
    /// <param name="ACreateParams"> (TCreateDocumentParams) </param>
    class procedure CreateNewDocument(ACreateParams: TCreateDocumentParams);
    /// <summary>TFrmDocument.EditDocument
    /// Редактировать докумиент в форме
    /// </summary>
    /// <param name="ADocumentId"> (Variant) ID редактируемого документа </param>
    class procedure EditDocument(ADocumentId: Variant);
  end;

implementation

uses
  DevExpressOptionsUnit, AppDataUnit, DbLib.DataSetHelper, MainFormUnit;

resourcestring
  SMinDateError = 'Дата документа не должна быть меньше 01.01.2000';
  SMaxDateError = 'Дата документа не должна превышать текущую';
  SDefaultDocTitle = 'СПРАВКА';

{$R *.dfm}

procedure TFrmDocument.actCancelExecute(Sender: TObject);
begin
  inherited;
  qryDocument.CancelIfNeeded;
  Close;
end;

procedure TFrmDocument.actSaveExecute(Sender: TObject);
begin
  inherited;
  qryDocument.PostIfNeeded;
  Close;
end;

class procedure TFrmDocument.CreateAndShow(AProc: TProc<TFrmDocument>);
var
  vForm: TFrmDocument;
begin
  vForm := TFrmDocument.Create(Application);
  AProc(vForm);
  vForm.Show;
end;

class procedure TFrmDocument.CreateNewDocument(ACreateParams:
  TCreateDocumentParams);
begin
  CreateAndShow(
    procedure(AForm: TFrmDocument)
    begin
      AForm.FCreateParams := ACreateParams;
      AForm.qryDocument.Open;
      AForm.qryDocument.Append;
    end);
end;

class procedure TFrmDocument.EditDocument(ADocumentId: Variant);
begin
  CreateAndShow(
    procedure(AForm: TFrmDocument)
    begin
      AForm.qryDocument.MacroByName('IdWhere').Value :=
        'AND ID=' + VarToStr(ADocumentId);
      AForm.qryDocument.Open;
      AForm.qryDocument.Edit;
    end);
end;

procedure TFrmDocument.qryDocumentAfterPost(DataSet: TDataSet);
var
  vChangeNoti: TTableDataNotification;
begin
  inherited;
  vChangeNoti := TTableDataNotification.Create(Self, qryDocument.UpdatingTable);
  try
    (AppData as IDataNotificationHub).BroadcastDataNotification(vChangeNoti);
  finally
    vChangeNoti.Free;
  end;
end;

procedure TFrmDocument.qryDocumentDOCDATEValidate(Sender: TField);
begin
  inherited;
  if Sender.Value <> null then
  begin
    if Sender.AsDateTime > EndOfTheDay(AppData.GetServerDate) then
      Validator.SetFieldErrorText(SMaxDateError);

    if Sender.AsDateTime < EncodeDate(200,1,1) then
      Validator.SetFieldErrorText(SMinDateError);
  end;
end;

procedure TFrmDocument.qryDocumentNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDocumentHUMANID.Value := FCreateParams.HumanId;
  qryDocumentDOCDATE.Value := AppData.GetServerDate;
  qryDocumentTITLE.AsString := SDefaultDocTitle;
end;

procedure TFrmDocument.qryDocumentTITLEValidate(Sender: TField);
begin
  inherited;
  if (VarToStr(Sender.Value) = '') then
    Validator.SetFieldErrorText('Поле не должно быть пустым');
end;

end.

