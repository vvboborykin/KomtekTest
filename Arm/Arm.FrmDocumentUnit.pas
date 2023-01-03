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
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.DateUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Arm.CreateDocumentParamsUnit, Vcl.Dialogs, DataNotificationUnit,
  Lib.SubscriptionUnit, DevExpressOptionsUnit, LayoutFormUnit, FrmMDIChildUnit,
  VCL.DevExpressRichEditControlDataUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, Vcl.Menus, cxContainer,
  cxEdit, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, Data.DB,
  DBAccess, Ora, MemDS, dxLayoutContainer, cxCalc, cxDBEdit, Vcl.ExtCtrls,
  RVRulerBase, RVRuler, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.NativeApi, dxRichEdit.Types,
  dxRichEdit.Options, dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxBarBuiltInMenu, dxRibbonSkins,
  dxRibbonCustomizationForm, cxFontNameComboBox, dxRichEdit.Actions, dxActions,
  dxPrinting, dxBar, dxRibbon, dxGallery, dxRibbonGallery, dxRibbonColorGallery,
  cxBarEditItem, dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPSRichEditControlLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore;

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
    RVRulerItemSelector1: TRVRulerItemSelector;
    aclRtf: TActionList;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    qryDocumentDOCNUM: TFloatField;
    edDOCNUM: TcxDBCalcEdit;
    lit6: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    rtfContent: TdxRichEditControl;
    litRtf: TdxLayoutItem;
    rbRtf: TdxRibbon;
    manRtf: TdxBarManager;
    imlRtf: TcxImageList;
    dxRichEditControlNewDocument: TdxRichEditControlNewDocument;
    rbRtfTab1: TdxRibbonTab;
    barCommon: TdxBar;
    btnNew: TdxBarLargeButton;
    dxRichEditControlLoadDocument: TdxRichEditControlLoadDocument;
    btnOpen: TdxBarLargeButton;
    dxRichEditControlSaveDocument: TdxRichEditControlSaveDocument;
    btnSave1: TdxBarLargeButton;
    dxRichEditControlSaveDocumentAs: TdxRichEditControlSaveDocumentAs;
    btnSaveAs: TdxBarLargeButton;
    dxRichEditControlPasteSelection: TdxRichEditControlPasteSelection;
    ribHome: TdxRibbonTab;
    barClipboard: TdxBar;
    btnPaste: TdxBarLargeButton;
    dxRichEditControlCutSelection: TdxRichEditControlCutSelection;
    btnCut: TdxBarButton;
    dxRichEditControlCopySelection: TdxRichEditControlCopySelection;
    btnCopy: TdxBarButton;
    dxRichEditControlSelectAll: TdxRichEditControlSelectAll;
    btnSelectAll: TdxBarButton;
    dxRichEditControlChangeFontName: TdxRichEditControlChangeFontName;
    barFont: TdxBar;
    cxBarEditItemFont: TcxBarEditItem;
    dxRichEditControlChangeFontSize: TdxRichEditControlChangeFontSize;
    cxBarEditItemFontSize: TcxBarEditItem;
    dxRichEditControlIncreaseFontSize: TdxRichEditControlIncreaseFontSize;
    btnGrowFont: TdxBarButton;
    dxRichEditControlDecreaseFontSize: TdxRichEditControlDecreaseFontSize;
    btnShrinkFont: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxRichEditControlTextUpperCase: TdxRichEditControlTextUpperCase;
    btnUPPERCASE: TdxBarLargeButton;
    dxRichEditControlTextLowerCase: TdxRichEditControlTextLowerCase;
    btnlowercase: TdxBarLargeButton;
    dxRichEditControlToggleTextCase: TdxRichEditControlToggleTextCase;
    btntOGGLEcASE: TdxBarLargeButton;
    dxRichEditControlToggleFontBold: TdxRichEditControlToggleFontBold;
    btnBold: TdxBarButton;
    dxRichEditControlToggleFontItalic: TdxRichEditControlToggleFontItalic;
    btnItalic: TdxBarButton;
    dxRichEditControlToggleFontUnderline: TdxRichEditControlToggleFontUnderline;
    btnUnderline: TdxBarButton;
    dxRichEditControlToggleFontDoubleUnderline:
      TdxRichEditControlToggleFontDoubleUnderline;
    btnDoubleUnderline: TdxBarButton;
    dxRichEditControlToggleFontStrikeout: TdxRichEditControlToggleFontStrikeout;
    btnStrikethrough: TdxBarButton;
    dxRichEditControlToggleFontDoubleStrikeout:
      TdxRichEditControlToggleFontDoubleStrikeout;
    btnDoubleStrikethrough: TdxBarButton;
    dxRichEditControlToggleFontSubscript: TdxRichEditControlToggleFontSubscript;
    btnSubscript: TdxBarButton;
    dxRichEditControlToggleFontSuperscript:
      TdxRichEditControlToggleFontSuperscript;
    btnSuperscript: TdxBarButton;
    dxRichEditControlTextHighlight: TdxRichEditControlTextHighlight;
    dxRibbonColorGalleryItemTextHighlightColor: TdxRibbonColorGalleryItem;
    dxRichEditControlChangeFontColor: TdxRichEditControlChangeFontColor;
    dxRibbonColorGalleryItemFontColor: TdxRibbonColorGalleryItem;
    dxRichEditControlToggleBulletedList: TdxRichEditControlToggleBulletedList;
    barParagraph: TdxBar;
    btnBullets: TdxBarButton;
    dxRichEditControlToggleSimpleNumberingList:
      TdxRichEditControlToggleSimpleNumberingList;
    btnNumbering: TdxBarButton;
    dxRichEditControlToggleMultiLevelList:
      TdxRichEditControlToggleMultiLevelList;
    btnMultilevellist: TdxBarButton;
    dxRichEditControlDecrementIndent: TdxRichEditControlDecrementIndent;
    btnDecreaseIndent: TdxBarButton;
    dxRichEditControlIncrementIndent: TdxRichEditControlIncrementIndent;
    btnIncreaseIndent: TdxBarButton;
    dxRichEditControlToggleShowWhitespace:
      TdxRichEditControlToggleShowWhitespace;
    btnShowHide: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentLeft:
      TdxRichEditControlToggleParagraphAlignmentLeft;
    btnAlignTextLeft: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentCenter:
      TdxRichEditControlToggleParagraphAlignmentCenter;
    btnCenter: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentRight:
      TdxRichEditControlToggleParagraphAlignmentRight;
    btnAlignTextRight: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentJustify:
      TdxRichEditControlToggleParagraphAlignmentJustify;
    btnJustify: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxRichEditControlSetSingleParagraphSpacing:
      TdxRichEditControlSetSingleParagraphSpacing;
    btn: TdxBarLargeButton;
    dxRichEditControlSetSesquialteralParagraphSpacing:
      TdxRichEditControlSetSesquialteralParagraphSpacing;
    btn1: TdxBarLargeButton;
    dxRichEditControlSetDoubleParagraphSpacing:
      TdxRichEditControlSetDoubleParagraphSpacing;
    btn2: TdxBarLargeButton;
    dxRichEditControlShowParagraphForm: TdxRichEditControlShowParagraphForm;
    btnParagraph: TdxBarLargeButton;
    dxRichEditControlQuickStylesGallery: TdxRichEditControlQuickStylesGallery;
    barStyles: TdxBar;
    dxRibbonGalleryItemQuickStyles: TdxRibbonGalleryItem;
    dxRibbonGalleryItemQuickStylesGroup1: TdxRibbonGalleryGroup;
    dxRichEditControlSearchFind: TdxRichEditControlSearchFind;
    barEditing: TdxBar;
    btnFind: TdxBarButton;
    dxRichEditControlSearchReplace: TdxRichEditControlSearchReplace;
    btnReplace: TdxBarButton;
    dxRichEditControlUndo: TdxRichEditControlUndo;
    btnUndo: TdxBarLargeButton;
    dxRichEditControlRedo: TdxRichEditControlRedo;
    btnRedo: TdxBarLargeButton;
    dxRichEditControlInsertPageBreak: TdxRichEditControlInsertPageBreak;
    ribInsert: TdxRibbonTab;
    barPages: TdxBar;
    btnPage: TdxBarLargeButton;
    dxRichEditControlShowInsertTableForm: TdxRichEditControlShowInsertTableForm;
    barTables: TdxBar;
    btnTable: TdxBarLargeButton;
    dxRichEditControlInsertPicture: TdxRichEditControlInsertPicture;
    barIllustrations: TdxBar;
    btnInlinePicture: TdxBarLargeButton;
    dxRichEditControlInsertFloatingObjectPicture:
      TdxRichEditControlInsertFloatingObjectPicture;
    btnPicture: TdxBarLargeButton;
    dxRichEditControlShowBookmarkForm: TdxRichEditControlShowBookmarkForm;
    barLinks: TdxBar;
    btnBookmark: TdxBarLargeButton;
    dxRichEditControlShowHyperlinkForm: TdxRichEditControlShowHyperlinkForm;
    btnHyperlink: TdxBarLargeButton;
    dxRichEditControlEditPageHeader: TdxRichEditControlEditPageHeader;
    barHeaderFooter: TdxBar;
    btnHeader: TdxBarLargeButton;
    dxRichEditControlEditPageFooter: TdxRichEditControlEditPageFooter;
    btnFooter: TdxBarLargeButton;
    dxRichEditControlInsertPageNumberField:
      TdxRichEditControlInsertPageNumberField;
    btnPageNumber: TdxBarLargeButton;
    dxRichEditControlInsertPageCountField:
      TdxRichEditControlInsertPageCountField;
    btnPageCount: TdxBarLargeButton;
    dxRichEditControlInsertTextBox: TdxRichEditControlInsertTextBox;
    barText: TdxBar;
    btnTextBox: TdxBarLargeButton;
    dxRichEditControlShowSymbolForm: TdxRichEditControlShowSymbolForm;
    barSymbols: TdxBar;
    btnSymbol: TdxBarLargeButton;
    dxRichEditControlPageMarginsGallery: TdxRichEditControlPageMarginsGallery;
    ribPageLayout: TdxRibbonTab;
    barPageSetup: TdxBar;
    dxRibbonGalleryItemMargins: TdxRibbonGalleryItem;
    dxRibbonGalleryItemMarginsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemMarginsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRichEditControlShowPageMarginsSetupForm:
      TdxRichEditControlShowPageMarginsSetupForm;
    btnCustomMargins: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxRichEditControlSetPortraitPageOrientation:
      TdxRichEditControlSetPortraitPageOrientation;
    btnPortrait: TdxBarLargeButton;
    dxRichEditControlSetLandscapePageOrientation:
      TdxRichEditControlSetLandscapePageOrientation;
    btnLandscape: TdxBarLargeButton;
    dxRichEditControlPaperSizeGallery: TdxRichEditControlPaperSizeGallery;
    dxRibbonGalleryItemSize: TdxRibbonGalleryItem;
    dxRibbonGalleryItemSizeGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemSizeGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRichEditControlShowPagePaperSetupForm:
      TdxRichEditControlShowPagePaperSetupForm;
    btnMorePaperSizes: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxRichEditControlSetSectionOneColumn: TdxRichEditControlSetSectionOneColumn;
    btnOne: TdxBarLargeButton;
    dxRichEditControlSetSectionTwoColumns:
      TdxRichEditControlSetSectionTwoColumns;
    btnTwo: TdxBarLargeButton;
    dxRichEditControlSetSectionThreeColumns:
      TdxRichEditControlSetSectionThreeColumns;
    btnThree: TdxBarLargeButton;
    dxRichEditControlShowColumnsSetupForm:
      TdxRichEditControlShowColumnsSetupForm;
    btnMoreColumns: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxRichEditControlInsertColumnBreak: TdxRichEditControlInsertColumnBreak;
    btnColumn: TdxBarLargeButton;
    dxRichEditControlInsertSectionBreakNextPage:
      TdxRichEditControlInsertSectionBreakNextPage;
    btnSectionNextPage: TdxBarLargeButton;
    dxRichEditControlInsertSectionBreakEvenPage:
      TdxRichEditControlInsertSectionBreakEvenPage;
    btnSectionEvenPage: TdxBarLargeButton;
    dxRichEditControlInsertSectionBreakOddPage:
      TdxRichEditControlInsertSectionBreakOddPage;
    btnSectionOddPage: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxRichEditControlSetSectionLineNumberingNone:
      TdxRichEditControlSetSectionLineNumberingNone;
    btnNone: TdxBarLargeButton;
    dxRichEditControlSetSectionLineNumberingContinuous:
      TdxRichEditControlSetSectionLineNumberingContinuous;
    btnContinuous: TdxBarLargeButton;
    dxRichEditControlSetSectionLineNumberingRestartNewPage:
      TdxRichEditControlSetSectionLineNumberingRestartNewPage;
    btnRestartEachPage: TdxBarLargeButton;
    dxRichEditControlSetSectionLineNumberingRestartNewSection:
      TdxRichEditControlSetSectionLineNumberingRestartNewSection;
    btnRestartEachSection: TdxBarLargeButton;
    dxRichEditControlShowLineNumberingForm:
      TdxRichEditControlShowLineNumberingForm;
    btnLineNumberingOptions: TdxBarLargeButton;
    dxRichEditControlChangePageColor: TdxRichEditControlChangePageColor;
    barBackground: TdxBar;
    dxRibbonColorGalleryItemPageColor: TdxRibbonColorGalleryItem;
    dxRichEditControlInsertTableOfContents:
      TdxRichEditControlInsertTableOfContents;
    ribReferences: TdxRibbonTab;
    barTableofContents: TdxBar;
    btnTableofContents: TdxBarLargeButton;
    dxRichEditControlUpdateTableOfContents:
      TdxRichEditControlUpdateTableOfContents;
    btnUpdateTable: TdxBarLargeButton;
    dxRichEditControlAddParagraphsToTableOfContentsPlaceholder:
      TdxRichEditControlAddParagraphsToTableOfContentsPlaceholder;
    btnAddText: TdxBarLargeButton;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxRichEditControlTableOfContentsSetParagraphBodyTextLevel:
      TdxRichEditControlTableOfContentsSetParagraphBodyTextLevel;
    btnDoNotShowinTableofContents: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading1Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading1Level;
    btnLevel: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading2Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading2Level;
    btnLevel1: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading3Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading3Level;
    btnLevel2: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading4Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading4Level;
    btnLevel3: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading5Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading5Level;
    btnLevel4: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading6Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading6Level;
    btnLevel5: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading7Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading7Level;
    btnLevel6: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading8Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading8Level;
    btnLevel7: TdxBarLargeButton;
    dxRichEditControlTableOfContentsSetParagraphHeading9Level:
      TdxRichEditControlTableOfContentsSetParagraphHeading9Level;
    btnLevel8: TdxBarLargeButton;
    dxRichEditControlInsertCaptionPlaceholder:
      TdxRichEditControlInsertCaptionPlaceholder;
    barCaptions: TdxBar;
    btnInsertCaption: TdxBarLargeButton;
    dxRibbonPopupMenu2: TdxRibbonPopupMenu;
    dxRichEditControlInsertFigureCaption: TdxRichEditControlInsertFigureCaption;
    btnFiguresCaption: TdxBarLargeButton;
    dxRichEditControlInsertTableCaption: TdxRichEditControlInsertTableCaption;
    btnTablesCaption: TdxBarLargeButton;
    dxRichEditControlInsertEquationCaption:
      TdxRichEditControlInsertEquationCaption;
    btnEquationsCaption: TdxBarLargeButton;
    dxRichEditControlInsertTableOfFiguresPlaceholder:
      TdxRichEditControlInsertTableOfFiguresPlaceholder;
    btnInsertTableofFigures: TdxBarLargeButton;
    dxRibbonPopupMenu3: TdxRibbonPopupMenu;
    dxRichEditControlInsertTableOfFigures:
      TdxRichEditControlInsertTableOfFigures;
    btnTableofFigures: TdxBarLargeButton;
    dxRichEditControlInsertTableOfTables: TdxRichEditControlInsertTableOfTables;
    btnTableofTables: TdxBarLargeButton;
    dxRichEditControlInsertTableOfEquations:
      TdxRichEditControlInsertTableOfEquations;
    btnTableofEquations: TdxBarLargeButton;
    dxRichEditControlUpdateTableOfFigures:
      TdxRichEditControlUpdateTableOfFigures;
    btnUpdateTable1: TdxBarLargeButton;
    dxRichEditControlShowInsertMergeFieldForm:
      TdxRichEditControlShowInsertMergeFieldForm;
    ribMailMerge: TdxRibbonTab;
    barMailMerge: TdxBar;
    btnInsertMergeField: TdxBarLargeButton;
    dxRichEditControlShowAllFieldCodes: TdxRichEditControlShowAllFieldCodes;
    btnShowAllFieldCodes: TdxBarLargeButton;
    dxRichEditControlShowAllFieldResults: TdxRichEditControlShowAllFieldResults;
    btnShowAllFieldResults: TdxBarLargeButton;
    dxRichEditControlToggleViewMergedData:
      TdxRichEditControlToggleViewMergedData;
    btnViewMergedData: TdxBarLargeButton;
    dxRichEditControlCheckSpelling: TdxRichEditControlCheckSpelling;
    ribReview: TdxRibbonTab;
    barProofing: TdxBar;
    btnSpelling: TdxBarLargeButton;
    dxRichEditControlProtectDocument: TdxRichEditControlProtectDocument;
    barProtect: TdxBar;
    btnProtectDocument: TdxBarLargeButton;
    dxRichEditControlUnprotectDocument: TdxRichEditControlUnprotectDocument;
    btnUnprotectDocument: TdxBarLargeButton;
    dxRichEditControlShowRangeEditingPermissions:
      TdxRichEditControlShowRangeEditingPermissions;
    btnRangeEditingPermissions: TdxBarLargeButton;
    dxRichEditControlEncryptDocument: TdxRichEditControlEncryptDocument;
    btnEncryptwithPassword: TdxBarLargeButton;
    dxRichEditControlSwitchToSimpleView: TdxRichEditControlSwitchToSimpleView;
    ribView: TdxRibbonTab;
    barDocumentViews: TdxBar;
    btnSimpleView: TdxBarLargeButton;
    dxRichEditControlSwitchToDraftView: TdxRichEditControlSwitchToDraftView;
    btnDraftView: TdxBarLargeButton;
    dxRichEditControlSwitchToPrintLayoutView:
      TdxRichEditControlSwitchToPrintLayoutView;
    btnPrintLayout: TdxBarLargeButton;
    dxRichEditControlToggleShowHorizontalRuler:
      TdxRichEditControlToggleShowHorizontalRuler;
    barShow: TdxBar;
    btnHorizontalRuler: TdxBarLargeButton;
    dxRichEditControlToggleShowVerticalRuler:
      TdxRichEditControlToggleShowVerticalRuler;
    btnVerticalRuler: TdxBarLargeButton;
    dxRichEditControlZoomOut: TdxRichEditControlZoomOut;
    barZoom: TdxBar;
    btnZoomOut: TdxBarLargeButton;
    dxRichEditControlZoomIn: TdxRichEditControlZoomIn;
    btnZoomIn: TdxBarLargeButton;
    dxRichEditControlGoToPageHeader: TdxRichEditControlGoToPageHeader;
    ribHeaderFooterDesign: TdxRibbonTab;
    barNavigation: TdxBar;
    btnGotoHeader: TdxBarLargeButton;
    dxRichEditControlGoToPageFooter: TdxRichEditControlGoToPageFooter;
    btnGotoFooter: TdxBarLargeButton;
    dxRichEditControlGoToNextPageHeaderFooter:
      TdxRichEditControlGoToNextPageHeaderFooter;
    btnShowNext: TdxBarLargeButton;
    dxRichEditControlGoToPreviousPageHeaderFooter:
      TdxRichEditControlGoToPreviousPageHeaderFooter;
    btnShowPrevious: TdxBarLargeButton;
    dxRichEditControlToggleHeaderFooterLinkToPrevious:
      TdxRichEditControlToggleHeaderFooterLinkToPrevious;
    btnLinktoPrevious: TdxBarLargeButton;
    dxRichEditControlToggleDifferentFirstPage:
      TdxRichEditControlToggleDifferentFirstPage;
    barOptions: TdxBar;
    btnDifferentFirstPage: TdxBarLargeButton;
    dxRichEditControlToggleDifferentOddAndEvenPages:
      TdxRichEditControlToggleDifferentOddAndEvenPages;
    btnDifferentOddEvenPages: TdxBarLargeButton;
    dxRichEditControlClosePageHeaderFooter:
      TdxRichEditControlClosePageHeaderFooter;
    barClose: TdxBar;
    btnCloseHeaderandFooter: TdxBarLargeButton;
    dxRichEditControlToggleShowTableGridLines:
      TdxRichEditControlToggleShowTableGridLines;
    ribTableLayout: TdxRibbonTab;
    barTable: TdxBar;
    btnViewGridlines: TdxBarLargeButton;
    dxRichEditControlShowTablePropertiesForm:
      TdxRichEditControlShowTablePropertiesForm;
    btnTableProperties: TdxBarLargeButton;
    barRowColumns: TdxBar;
    dxBarSubItem7: TdxBarSubItem;
    dxRichEditControlShowDeleteTableCellsForm:
      TdxRichEditControlShowDeleteTableCellsForm;
    btnDeleteCells: TdxBarLargeButton;
    dxRichEditControlDeleteTableColumns: TdxRichEditControlDeleteTableColumns;
    btnDeleteColumns: TdxBarLargeButton;
    dxRichEditControlDeleteTableRows: TdxRichEditControlDeleteTableRows;
    btnDeleteRows: TdxBarLargeButton;
    dxRichEditControlDeleteTable: TdxRichEditControlDeleteTable;
    btnDeleteTable: TdxBarLargeButton;
    dxRichEditControlInsertTableRowAbove: TdxRichEditControlInsertTableRowAbove;
    btnInsertAbove: TdxBarLargeButton;
    dxRichEditControlInsertTableRowBelow: TdxRichEditControlInsertTableRowBelow;
    btnInsertBelow: TdxBarLargeButton;
    dxRichEditControlInsertTableColumnToTheLeft:
      TdxRichEditControlInsertTableColumnToTheLeft;
    btnInsertLeft: TdxBarLargeButton;
    dxRichEditControlInsertTableColumnToTheRight:
      TdxRichEditControlInsertTableColumnToTheRight;
    btnInsertRight: TdxBarLargeButton;
    dxRichEditControlMergeTableCells: TdxRichEditControlMergeTableCells;
    barMerge: TdxBar;
    btnMergeCells: TdxBarLargeButton;
    dxRichEditControlShowSplitTableCellsForm:
      TdxRichEditControlShowSplitTableCellsForm;
    btnSplitCells: TdxBarLargeButton;
    dxRichEditControlSplitTable: TdxRichEditControlSplitTable;
    btnSplitTable: TdxBarLargeButton;
    barCellSize: TdxBar;
    dxBarSubItem8: TdxBarSubItem;
    dxRichEditControlToggleTableAutoFitContents:
      TdxRichEditControlToggleTableAutoFitContents;
    btnAutoFitContents: TdxBarLargeButton;
    dxRichEditControlToggleTableAutoFitWindow:
      TdxRichEditControlToggleTableAutoFitWindow;
    btnAutoFitWindow: TdxBarLargeButton;
    dxRichEditControlToggleTableFixedColumnWidth:
      TdxRichEditControlToggleTableFixedColumnWidth;
    btnFixedColumnWidth: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsTopLeftAlignment:
      TdxRichEditControlToggleTableCellsTopLeftAlignment;
    barAlignment: TdxBar;
    btnAlignTopLeft: TdxBarButton;
    dxRichEditControlToggleTableCellsTopCenterAlignment:
      TdxRichEditControlToggleTableCellsTopCenterAlignment;
    btnAlignTopCenter: TdxBarButton;
    dxRichEditControlToggleTableCellsTopRightAlignment:
      TdxRichEditControlToggleTableCellsTopRightAlignment;
    btnAlignTopRight: TdxBarButton;
    dxRichEditControlToggleTableCellsMiddleLeftAlignment:
      TdxRichEditControlToggleTableCellsMiddleLeftAlignment;
    btnAlignCenterLeft: TdxBarButton;
    dxRichEditControlToggleTableCellsMiddleCenterAlignment:
      TdxRichEditControlToggleTableCellsMiddleCenterAlignment;
    btnAlignCenter: TdxBarButton;
    dxRichEditControlToggleTableCellsMiddleRightAlignment:
      TdxRichEditControlToggleTableCellsMiddleRightAlignment;
    btnAlignCenterRight: TdxBarButton;
    dxRichEditControlToggleTableCellsBottomLeftAlignment:
      TdxRichEditControlToggleTableCellsBottomLeftAlignment;
    btnAlignBottomLeft: TdxBarButton;
    dxRichEditControlToggleTableCellsBottomCenterAlignment:
      TdxRichEditControlToggleTableCellsBottomCenterAlignment;
    btnAlignBottomCenter: TdxBarButton;
    dxRichEditControlToggleTableCellsBottomRightAlignment:
      TdxRichEditControlToggleTableCellsBottomRightAlignment;
    btnAlignBottomRight: TdxBarButton;
    dxRichEditControlTableStylesGallery: TdxRichEditControlTableStylesGallery;
    ribTableDesign: TdxRibbonTab;
    barTableStyles: TdxBar;
    dxRibbonGalleryItemTableStyles: TdxRibbonGalleryItem;
    dxRibbonGalleryItemTableStylesGroup1: TdxRibbonGalleryGroup;
    dxBarSubItem9: TdxBarSubItem;
    dxRichEditControlToggleTableCellsBottomBorder:
      TdxRichEditControlToggleTableCellsBottomBorder;
    btnBottomBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsTopBorder:
      TdxRichEditControlToggleTableCellsTopBorder;
    btnTopBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsLeftBorder:
      TdxRichEditControlToggleTableCellsLeftBorder;
    btnLeftBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsRightBorder:
      TdxRichEditControlToggleTableCellsRightBorder;
    btnRightBorder: TdxBarLargeButton;
    dxRichEditControlResetTableCellsBorders:
      TdxRichEditControlResetTableCellsBorders;
    btnNoBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsAllBorders:
      TdxRichEditControlToggleTableCellsAllBorders;
    btnAllBorders: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsOutsideBorder:
      TdxRichEditControlToggleTableCellsOutsideBorder;
    btnOutsideBorders: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsInsideBorder:
      TdxRichEditControlToggleTableCellsInsideBorder;
    btnInsideBorders: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsInsideHorizontalBorder:
      TdxRichEditControlToggleTableCellsInsideHorizontalBorder;
    btnInsideHorizontalBorder: TdxBarLargeButton;
    dxRichEditControlToggleTableCellsInsideVerticalBorder:
      TdxRichEditControlToggleTableCellsInsideVerticalBorder;
    btnInsideVerticalBorder: TdxBarLargeButton;
    dxRichEditControlChangeFloatingObjectFillColor:
      TdxRichEditControlChangeFloatingObjectFillColor;
    ribFormat: TdxRibbonTab;
    barShapeStyles: TdxBar;
    dxRibbonColorGalleryItemShapeFill: TdxRibbonColorGalleryItem;
    dxRichEditControlChangeFloatingObjectOutlineColor:
      TdxRichEditControlChangeFloatingObjectOutlineColor;
    dxRibbonColorGalleryItemShapeOutline: TdxRibbonColorGalleryItem;
    barArrange: TdxBar;
    dxBarSubItem10: TdxBarSubItem;
    dxRichEditControlSetFloatingObjectSquareTextWrapType:
      TdxRichEditControlSetFloatingObjectSquareTextWrapType;
    btnSquare: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTightTextWrapType:
      TdxRichEditControlSetFloatingObjectTightTextWrapType;
    btnTight: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectThroughTextWrapType:
      TdxRichEditControlSetFloatingObjectThroughTextWrapType;
    btnThrough: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTopAndBottomTextWrapType:
      TdxRichEditControlSetFloatingObjectTopAndBottomTextWrapType;
    btnTopandBottom: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBehindTextWrapType:
      TdxRichEditControlSetFloatingObjectBehindTextWrapType;
    btnBehindText: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectInFrontOfTextWrapType:
      TdxRichEditControlSetFloatingObjectInFrontOfTextWrapType;
    btnInFrontofText: TdxBarLargeButton;
    dxBarSubItem11: TdxBarSubItem;
    dxRichEditControlSetFloatingObjectTopLeftAlignment:
      TdxRichEditControlSetFloatingObjectTopLeftAlignment;
    btnTopLeft: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTopCenterAlignment:
      TdxRichEditControlSetFloatingObjectTopCenterAlignment;
    btnTopCenter: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectTopRightAlignment:
      TdxRichEditControlSetFloatingObjectTopRightAlignment;
    btnTopRight: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectMiddleLeftAlignment:
      TdxRichEditControlSetFloatingObjectMiddleLeftAlignment;
    btnMiddleLeft: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectMiddleCenterAlignment:
      TdxRichEditControlSetFloatingObjectMiddleCenterAlignment;
    btnMiddleCenter: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectMiddleRightAlignment:
      TdxRichEditControlSetFloatingObjectMiddleRightAlignment;
    btnMiddleRight: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBottomLeftAlignment:
      TdxRichEditControlSetFloatingObjectBottomLeftAlignment;
    btnBottomLeft: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBottomCenterAlignment:
      TdxRichEditControlSetFloatingObjectBottomCenterAlignment;
    btnBottomCenter: TdxBarLargeButton;
    dxRichEditControlSetFloatingObjectBottomRightAlignment:
      TdxRichEditControlSetFloatingObjectBottomRightAlignment;
    btnBottomRight: TdxBarLargeButton;
    dxBarSubItem12: TdxBarSubItem;
    dxRichEditControlFloatingObjectBringForward:
      TdxRichEditControlFloatingObjectBringForward;
    btnBringForward: TdxBarLargeButton;
    dxRichEditControlFloatingObjectBringToFront:
      TdxRichEditControlFloatingObjectBringToFront;
    btnBringtoFront: TdxBarLargeButton;
    dxRichEditControlFloatingObjectBringInFrontOfText:
      TdxRichEditControlFloatingObjectBringInFrontOfText;
    btnBringinFrontofText: TdxBarLargeButton;
    dxBarSubItem13: TdxBarSubItem;
    dxRichEditControlFloatingObjectSendBackward:
      TdxRichEditControlFloatingObjectSendBackward;
    btnSendBackward: TdxBarLargeButton;
    dxRichEditControlFloatingObjectSendToBack:
      TdxRichEditControlFloatingObjectSendToBack;
    btnSendtoBack: TdxBarLargeButton;
    dxRichEditControlFloatingObjectSendBehindText:
      TdxRichEditControlFloatingObjectSendBehindText;
    btnSendBehindText: TdxBarLargeButton;
    dxRichEditControlShowPrintForm: TdxRichEditControlShowPrintForm;
    barPrint: TdxBar;
    btnPrint: TdxBarLargeButton;
    dxRichEditControlShowPrintPreviewForm:
      TdxRichEditControlShowPrintPreviewForm;
    btnPrintPreview: TdxBarLargeButton;
    dxRichEditControlShowPageSetupForm: TdxRichEditControlShowPageSetupForm;
    btnPageSetup: TdxBarLargeButton;
    qryHuman: TOraQuery;
    qryHumanID: TFloatField;
    qryHumanFIOD: TStringField;
    dsHuman: TDataSource;
    edFIOD: TcxDBTextEdit;
    litFIOD: TdxLayoutItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxRichEditControlReportLink;
    procedure FormCreate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure qryDocumentAfterOpen(DataSet: TDataSet);
    procedure qryDocumentAfterPost(DataSet: TDataSet);
    procedure qryDocumentBeforePost(DataSet: TDataSet);
    procedure qryDocumentDOCDATEChange(Sender: TField);
    procedure qryDocumentNewRecord(DataSet: TDataSet);
    procedure rtfContentContentChanged(Sender: TObject);
  strict private
    FCreateParams: TCreateDocumentParams;
    class procedure CreateAndShow(AProc: TProc<TFrmDocument>);
    procedure InitForCreateDocument(ACreateParams: TCreateDocumentParams);
    procedure InitForEdit(ADocumentId: Variant);
  private
    FLoaded: Boolean;
    procedure SetCaptionForData;
  strict protected
    /// <summary>ISubscriber<TMessageData>.OnPublisherMessage
    /// Обработчик событий получаемых от издателей
    /// </summary>
    /// <param name="APublisher"> (IPublisher<TMessageData>) Издатель</param>
    /// <param name="AMessage"> (TMessageData) Событие</param>
    procedure OnPublisherMessage(APublisher: IPublisher<TSkinNotification>;
      AMessage: TSkinNotification); override; stdcall;
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
  AppDataUnit, DbLib.DataSetHelperUnit, MainFormUnit;

resourcestring
  SMofidied = ' (изменен)';
  SCaptionTemplate = 'Документ %s №%s от %s (%s)';
  SFieldShouldNotBeEmpty = 'Поле не должно быть пустым';
  SMinDateError = 'Дата документа не должна быть меньше 01.01.2000';
  SMaxDateError = 'Дата документа не должна превышать текущую';
  SDefaultDocTitle = 'СПРАВКА';

{$R *.dfm}

procedure TFrmDocument.FormCreate(Sender: TObject);
begin
  inherited;
  rbRtf.ColorSchemeName := DevExpressOptions
    .dxLayoutSkinLookAndFeel1.LookAndFeel.SkinName;
end;

procedure TFrmDocument.actCancelExecute(Sender: TObject);
begin
  inherited;
  CancelChanges;

  Close;
end;

procedure TFrmDocument.actSaveExecute(Sender: TObject);
begin
  inherited;
  SaveChanges;

  if not UnsavedChangesExists then
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
      AForm.InitForCreateDocument(ACreateParams);
    end);
end;

class procedure TFrmDocument.EditDocument(ADocumentId: Variant);
begin
  CreateAndShow(
    procedure(AForm: TFrmDocument)
    begin
      AForm.InitForEdit(ADocumentId);
    end);
end;

procedure TFrmDocument.InitForCreateDocument(ACreateParams:
  TCreateDocumentParams);
begin
  FCreateParams := ACreateParams;
  FLoaded := True;
  qryDocument.Open;
  qryDocument.Append;
end;

procedure TFrmDocument.InitForEdit(ADocumentId: Variant);
begin
  qryDocument.MacroByName('IdWhere').Value := 'AND ID=' + VarToStr(ADocumentId);
  qryDocument.Open;
  rtfContent.LoadFromBlobField(qryDocumentCONTENT);
  FLoaded := True;
end;

procedure TFrmDocument.OnPublisherMessage(APublisher: IPublisher<
  TSkinNotification>; AMessage: TSkinNotification);
begin
  rbRtf.ColorSchemeName := AMessage.SkinName;
end;

procedure TFrmDocument.qryDocumentAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryHuman.Open;
  SetCaptionForData;
end;

procedure TFrmDocument.qryDocumentAfterPost(DataSet: TDataSet);
begin
  inherited;
  BroadcastTableModified(qryDocument.UpdatingTable);
end;

procedure TFrmDocument.qryDocumentBeforePost(DataSet: TDataSet);
begin
  inherited;
  rtfContent.SaveToBlobField(qryDocumentCONTENT);
end;

procedure TFrmDocument.qryDocumentDOCDATEChange(Sender: TField);
begin
  inherited;
  SetCaptionForData;
end;

procedure TFrmDocument.qryDocumentNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDocumentHUMANID.Value := FCreateParams.HumanId;
  qryDocumentDOCDATE.Value := AppData.GetServerDate;
  qryDocumentTITLE.AsString := SDefaultDocTitle;
end;

procedure TFrmDocument.rtfContentContentChanged(Sender: TObject);
begin
  inherited;
  if FLoaded then
    qryDocument.EditIfNeeded;
end;

procedure TFrmDocument.SetCaptionForData;
var
  vCaption: string;
begin
  vCaption := Format(SCaptionTemplate, [qryDocumentTITLE.AsString,
    qryDocumentDOCNUM.AsString, qryDocumentDOCDATE.AsString, qryHumanFIOD.AsString]);

  if (qryDocument.State <> dsBrowse) then
    vCaption := vCaption + SMofidied;

  UpdateCaption(vCaption);
end;

end.

