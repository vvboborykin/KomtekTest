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
  Arm.DocumentFormFactory;

type
  /// <summary>TFrmDocument
  /// Форма - Редактор документа
  /// </summary>
  TFrmDocument = class(TLayoutForm, IDataNotificationListener)
    qryDocument: TOraQuery;
    dsDocument: TOraDataSource;
    qryDocumentID: TFloatField;
    qryDocumentHUMANID: TFloatField;
    qryDocumentDOCDATE: TDateTimeField;
    qryDocumentTITLE: TStringField;
    qryDocumentCONTENT: TBlobField;
    dbedtDOCDATE: TDBEdit;
    lit: TdxLayoutItem;
    dbedtTITLE: TDBEdit;
    lit1: TdxLayoutItem;
    aclRft: TActionList;
    btnSave: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    lgrBtn: TdxLayoutGroup;
    btnCancel: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxRichEditControl1: TdxRichEditControl;
    lit2: TdxLayoutItem;
    rb: TdxRibbon;
    man: TdxBarManager;
    iml: TcxImageList;
    dxRichEditControlPasteSelection: TdxRichEditControlPasteSelection;
    rbTab1: TdxRibbonTab;
    dxbrClipboard: TdxBar;
    btnPaste: TdxBarLargeButton;
    dxRichEditControlCutSelection: TdxRichEditControlCutSelection;
    btnCut: TdxBarButton;
    dxRichEditControlCopySelection: TdxRichEditControlCopySelection;
    btnCopy: TdxBarButton;
    dxRichEditControlSelectAll: TdxRichEditControlSelectAll;
    btnSelectAll: TdxBarButton;
    dxRichEditControlChangeFontName: TdxRichEditControlChangeFontName;
    dxbrFont: TdxBar;
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
    dxbrParagraph: TdxBar;
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
    dxbrStyles: TdxBar;
    dxRibbonGalleryItemQuickStyles: TdxRibbonGalleryItem;
    dxRibbonGalleryItemQuickStylesGroup1: TdxRibbonGalleryGroup;
    dxRichEditControlSearchFind: TdxRichEditControlSearchFind;
    dxbrEditing: TdxBar;
    btnFind: TdxBarButton;
    dxRichEditControlSearchReplace: TdxRichEditControlSearchReplace;
    btnReplace: TdxBarButton;
    dxRichEditControlUndo: TdxRichEditControlUndo;
    btnUndo: TdxBarLargeButton;
    dxRichEditControlRedo: TdxRichEditControlRedo;
    btnRedo: TdxBarLargeButton;
    dxRichEditControlInsertPageBreak: TdxRichEditControlInsertPageBreak;
    ribInsert: TdxRibbonTab;
    dxbrPages: TdxBar;
    btnPage: TdxBarLargeButton;
    dxRichEditControlShowInsertTableForm: TdxRichEditControlShowInsertTableForm;
    dxbrTables: TdxBar;
    btnTable: TdxBarLargeButton;
    dxRichEditControlInsertPicture: TdxRichEditControlInsertPicture;
    dxbrIllustrations: TdxBar;
    btnInlinePicture: TdxBarLargeButton;
    dxRichEditControlInsertFloatingObjectPicture:
      TdxRichEditControlInsertFloatingObjectPicture;
    btnPicture: TdxBarLargeButton;
    dxRichEditControlShowBookmarkForm: TdxRichEditControlShowBookmarkForm;
    dxbrLinks: TdxBar;
    btnBookmark: TdxBarLargeButton;
    dxRichEditControlShowHyperlinkForm: TdxRichEditControlShowHyperlinkForm;
    btnHyperlink: TdxBarLargeButton;
    dxRichEditControlEditPageHeader: TdxRichEditControlEditPageHeader;
    dxbrHeaderFooter: TdxBar;
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
    dxbrText: TdxBar;
    btnTextBox: TdxBarLargeButton;
    dxRichEditControlShowSymbolForm: TdxRichEditControlShowSymbolForm;
    dxbrSymbols: TdxBar;
    btnSymbol: TdxBarLargeButton;
    dxRichEditControlPageMarginsGallery: TdxRichEditControlPageMarginsGallery;
    ribPageLayout: TdxRibbonTab;
    dxbrPageSetup: TdxBar;
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
    dxbrBackground: TdxBar;
    dxRibbonColorGalleryItemPageColor: TdxRibbonColorGalleryItem;
    dxRichEditControlInsertTableOfContents:
      TdxRichEditControlInsertTableOfContents;
    ribReferences: TdxRibbonTab;
    dxbrTableofContents: TdxBar;
    btnTableofContents: TdxBarLargeButton;
    dxRichEditControlUpdateTableOfContents:
      TdxRichEditControlUpdateTableOfContents;
    btnUpdateTable: TdxBarLargeButton;
    dxRichEditControlAddParagraphsToTableOfContentsPlaceholder:
      TdxRichEditControlAddParagraphsToTableOfContentsPlaceholder;
    btnAddText: TdxBarLargeButton;
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
    dxbrCaptions: TdxBar;
    btnInsertCaption: TdxBarLargeButton;
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
    dxbrMailMerge: TdxBar;
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
    dxbrProofing: TdxBar;
    btnSpelling: TdxBarLargeButton;
    dxRichEditControlProtectDocument: TdxRichEditControlProtectDocument;
    dxbrProtect: TdxBar;
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
    dxbrDocumentViews: TdxBar;
    btnSimpleView: TdxBarLargeButton;
    dxRichEditControlSwitchToDraftView: TdxRichEditControlSwitchToDraftView;
    btnDraftView: TdxBarLargeButton;
    dxRichEditControlSwitchToPrintLayoutView:
      TdxRichEditControlSwitchToPrintLayoutView;
    btnPrintLayout: TdxBarLargeButton;
    dxRichEditControlToggleShowHorizontalRuler:
      TdxRichEditControlToggleShowHorizontalRuler;
    dxbrShow: TdxBar;
    btnHorizontalRuler: TdxBarLargeButton;
    dxRichEditControlToggleShowVerticalRuler:
      TdxRichEditControlToggleShowVerticalRuler;
    btnVerticalRuler: TdxBarLargeButton;
    dxRichEditControlZoomOut: TdxRichEditControlZoomOut;
    dxbrZoom: TdxBar;
    btnZoomOut: TdxBarLargeButton;
    dxRichEditControlZoomIn: TdxRichEditControlZoomIn;
    btnZoomIn: TdxBarLargeButton;
    dxRichEditControlGoToPageHeader: TdxRichEditControlGoToPageHeader;
    ribHeaderFooterDesign: TdxRibbonTab;
    dxbrNavigation: TdxBar;
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
    dxbrOptions: TdxBar;
    btnDifferentFirstPage: TdxBarLargeButton;
    dxRichEditControlToggleDifferentOddAndEvenPages:
      TdxRichEditControlToggleDifferentOddAndEvenPages;
    btnDifferentOddEvenPages: TdxBarLargeButton;
    dxRichEditControlClosePageHeaderFooter:
      TdxRichEditControlClosePageHeaderFooter;
    dxbrClose: TdxBar;
    btnCloseHeaderandFooter: TdxBarLargeButton;
    dxRichEditControlToggleShowTableGridLines:
      TdxRichEditControlToggleShowTableGridLines;
    ribTableLayout: TdxRibbonTab;
    dxbrTable: TdxBar;
    btnViewGridlines: TdxBarLargeButton;
    dxRichEditControlShowTablePropertiesForm:
      TdxRichEditControlShowTablePropertiesForm;
    btnTableProperties: TdxBarLargeButton;
    dxbrRowColumns: TdxBar;
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
    dxbrMerge: TdxBar;
    btnMergeCells: TdxBarLargeButton;
    dxRichEditControlShowSplitTableCellsForm:
      TdxRichEditControlShowSplitTableCellsForm;
    btnSplitCells: TdxBarLargeButton;
    dxRichEditControlSplitTable: TdxRichEditControlSplitTable;
    btnSplitTable: TdxBarLargeButton;
    dxbrCellSize: TdxBar;
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
    dxbrAlignment: TdxBar;
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
    dxbrTableStyles: TdxBar;
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
    dxbrShapeStyles: TdxBar;
    dxRibbonColorGalleryItemShapeFill: TdxRibbonColorGalleryItem;
    dxRichEditControlChangeFloatingObjectOutlineColor:
      TdxRichEditControlChangeFloatingObjectOutlineColor;
    dxRibbonColorGalleryItemShapeOutline: TdxRibbonColorGalleryItem;
    dxbrArrange: TdxBar;
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
    ribFile: TdxRibbonTab;
    dxbrPrint: TdxBar;
    btnPrint: TdxBarLargeButton;
    dxRichEditControlShowPrintPreviewForm:
      TdxRichEditControlShowPrintPreviewForm;
    btnPrintPreview: TdxBarLargeButton;
    dxRichEditControlShowPageSetupForm: TdxRichEditControlShowPageSetupForm;
    btnPageSetup: TdxBarLargeButton;
    aclMain: TActionList;
    actSave: TAction;
    actCancel: TAction;
    iml24: TcxImageList;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDocumentAfterPost(DataSet: TDataSet);
    procedure qryDocumentBeforePost(DataSet: TDataSet);
    procedure qryDocumentNewRecord(DataSet: TDataSet);
  strict private
  private
    FCreateParams: TCreateDocumentParams;
    class procedure CreateAndShow(AProc: TProc<TFrmDocument>);
    procedure LoadDocumentContentFromDataset;
    procedure SaveDocumentContentToDataset;
    procedure OnDataNotification(AData: TDataNotification); stdcall;
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
  SDefaultDocTitle = 'СПРАВКА';

{$R *.dfm}

procedure TFrmDocument.FormDestroy(Sender: TObject);
begin
  MainForm.UnRegisterMdChild(Self);
  inherited;
end;

procedure TFrmDocument.FormCreate(Sender: TObject);
begin
  inherited;
  MainForm.RegisterMdiChild(Self);
end;

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
      AForm.qryDocument.ParamByName('DocumentId').Value := ADocumentId;
      AForm.qryDocument.Open;
      AForm.qryDocument.Edit;
      AForm.LoadDocumentContentFromDataset();
    end);
end;

procedure TFrmDocument.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmDocument.LoadDocumentContentFromDataset;
var
  vStream: TMemoryStream;
begin
  if qryDocumentCONTENT.AsVariant <> null then
  begin
    vStream := TMemoryStream.Create();
    try
      qryDocumentCONTENT.SaveToStream(vStream);
      dxRichEditControl1.LoadDocument(vStream, TdxRichEditDocumentFormat.rtf);
    finally
      vStream.Free;
    end;
  end;
end;

procedure TFrmDocument.SaveDocumentContentToDataset;
var
  vStream: TMemoryStream;
begin
  vStream := TMemoryStream.Create();
  try
    dxRichEditControl1.SaveDocument(vStream, TdxRichEditDocumentFormat.rtf);
    qryDocumentCONTENT.LoadFromStream(vStream);
  finally
    vStream.Free;
  end;
end;

procedure TFrmDocument.OnDataNotification(AData: TDataNotification);
begin
  if (qryDocument.State = dsBrowse) and (AData is TTableDataNotification) and
    AnsiSameText((AData as TTableDataNotification).TableName, qryDocument.UpdatingTable)
    then
    qryDocument.CloseOpen;
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

procedure TFrmDocument.qryDocumentBeforePost(DataSet: TDataSet);
begin
  inherited;
  SaveDocumentContentToDataset();
end;

procedure TFrmDocument.qryDocumentNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDocumentHUMANID.Value := FCreateParams.HumanId;
  qryDocumentDOCDATE.Value := DateOf(AppData.GetServerDateTime);
  qryDocumentTITLE.Value := SDefaultDocTitle;
end;

end.

