inherited FrmDocument: TFrmDocument
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 794
  ClientWidth = 933
  ExplicitWidth = 949
  ExplicitHeight = 833
  PixelsPerInch = 96
  TextHeight = 21
  inherited lacMain: TdxLayoutControl
    Top = 132
    Width = 933
    Height = 662
    ExplicitTop = 132
    ExplicitWidth = 933
    ExplicitHeight = 662
    object btnSave: TcxButton [0]
      Left = 17
      Top = 610
      Width = 150
      Height = 35
      Action = actSave
      Default = True
      TabOrder = 3
    end
    object btnCancel: TcxButton [1]
      Left = 177
      Top = 610
      Width = 150
      Height = 35
      Action = actCancel
      Cancel = True
      TabOrder = 4
    end
    object dxRichEditControl1: TdxRichEditControl [2]
      Left = 17
      Top = 46
      Width = 899
      Height = 464
      Color = 15790320
      TabOrder = 0
    end
    object edDOCDATE: TcxDBDateEdit [3]
      Left = 140
      Top = 557
      DataBinding.DataField = 'DOCDATE'
      DataBinding.DataSource = dsDocument
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 776
    end
    object edTITLE: TcxDBTextEdit [4]
      Left = 140
      Top = 520
      DataBinding.DataField = 'TITLE'
      DataBinding.DataSource = dsDocument
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 776
    end
    inherited lgrRoot: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgrBtn
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrBtn: TdxLayoutGroup
      Parent = lgrRoot
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgrBtn
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lgrRoot
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object lit2: TdxLayoutItem
      Parent = lgrRoot
      AlignVert = avClient
      CaptionOptions.Text = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      CaptionOptions.Layout = clTop
      Control = dxRichEditControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lit: TdxLayoutItem
      Parent = lgrRoot
      CaptionOptions.Text = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Control = edDOCDATE
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lit1: TdxLayoutItem
      Parent = lgrRoot
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Control = edTITLE
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object rb: TdxRibbon
    Left = 0
    Top = 0
    Width = 933
    Height = 132
    BarManager = man
    Style = rs2019
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Colorful'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object rbTab1: TdxRibbonTab
      Active = True
      Caption = 'rbTab1'
      Groups = <
        item
          Caption = 'Clipboard'
          ToolbarName = 'dxbrClipboard'
        end
        item
          Caption = 'Font'
          ToolbarName = 'dxbrFont'
        end
        item
          Caption = 'Paragraph'
          ToolbarName = 'dxbrParagraph'
        end
        item
          Caption = 'Styles'
          ToolbarName = 'dxbrStyles'
        end
        item
          Caption = 'Editing'
          ToolbarName = 'dxbrEditing'
        end>
      Index = 0
    end
    object ribInsert: TdxRibbonTab
      Caption = 'Insert'
      Groups = <
        item
          Caption = 'Pages'
          ToolbarName = 'dxbrPages'
        end
        item
          Caption = 'Tables'
          ToolbarName = 'dxbrTables'
        end
        item
          Caption = 'Illustrations'
          ToolbarName = 'dxbrIllustrations'
        end
        item
          Caption = 'Links'
          ToolbarName = 'dxbrLinks'
        end
        item
          Caption = 'Header & Footer'
          ToolbarName = 'dxbrHeaderFooter'
        end
        item
          Caption = 'Text'
          ToolbarName = 'dxbrText'
        end
        item
          Caption = 'Symbols'
          ToolbarName = 'dxbrSymbols'
        end>
      Index = 1
    end
    object ribPageLayout: TdxRibbonTab
      Caption = 'Page Layout'
      Groups = <
        item
          Caption = 'Page Setup'
          ToolbarName = 'dxbrPageSetup'
        end
        item
          Caption = 'Background'
          ToolbarName = 'dxbrBackground'
        end>
      Index = 2
    end
    object ribReferences: TdxRibbonTab
      Caption = 'References'
      Groups = <
        item
          Caption = 'Table of Contents'
          ToolbarName = 'dxbrTableofContents'
        end
        item
          Caption = 'Captions'
          ToolbarName = 'dxbrCaptions'
        end>
      Index = 3
    end
    object ribMailMerge: TdxRibbonTab
      Caption = 'Mail Merge'
      Groups = <
        item
          Caption = 'Mail Merge'
          ToolbarName = 'dxbrMailMerge'
        end>
      Index = 4
    end
    object ribReview: TdxRibbonTab
      Caption = 'Review'
      Groups = <
        item
          Caption = 'Proofing'
          ToolbarName = 'dxbrProofing'
        end
        item
          Caption = 'Protect'
          ToolbarName = 'dxbrProtect'
        end>
      Index = 5
    end
    object ribView: TdxRibbonTab
      Caption = 'View'
      Groups = <
        item
          Caption = 'Document Views'
          ToolbarName = 'dxbrDocumentViews'
        end
        item
          Caption = 'Show'
          ToolbarName = 'dxbrShow'
        end
        item
          Caption = 'Zoom'
          ToolbarName = 'dxbrZoom'
        end>
      Index = 6
    end
    object ribHeaderFooterDesign: TdxRibbonTab
      Caption = 'Header & Footer Design'
      Groups = <
        item
          Caption = 'Navigation'
          ToolbarName = 'dxbrNavigation'
        end
        item
          Caption = 'Options'
          ToolbarName = 'dxbrOptions'
        end
        item
          Caption = 'Close'
          ToolbarName = 'dxbrClose'
        end>
      Index = 7
    end
    object ribTableLayout: TdxRibbonTab
      Caption = 'Table Layout'
      Groups = <
        item
          Caption = 'Table'
          ToolbarName = 'dxbrTable'
        end
        item
          Caption = 'Row & Columns'
          ToolbarName = 'dxbrRowColumns'
        end
        item
          Caption = 'Merge'
          ToolbarName = 'dxbrMerge'
        end
        item
          Caption = 'Cell Size'
          ToolbarName = 'dxbrCellSize'
        end
        item
          Caption = 'Alignment'
          ToolbarName = 'dxbrAlignment'
        end>
      Index = 8
    end
    object ribTableDesign: TdxRibbonTab
      Caption = 'Table Design'
      Groups = <
        item
          Caption = 'Table Styles'
          ToolbarName = 'dxbrTableStyles'
        end>
      Index = 9
    end
    object ribFormat: TdxRibbonTab
      Caption = 'Format'
      Groups = <
        item
          Caption = 'Shape Styles'
          ToolbarName = 'dxbrShapeStyles'
        end
        item
          Caption = 'Arrange'
          ToolbarName = 'dxbrArrange'
        end>
      Index = 10
    end
    object ribFile: TdxRibbonTab
      Caption = 'File'
      Groups = <
        item
          Caption = 'Print'
          ToolbarName = 'dxbrPrint'
        end>
      Index = 11
    end
  end
  object qryDocument: TOraQuery
    UpdatingTable = 'DOCUMENT'
    Session = AppData.sesMain
    SQL.Strings = (
      'SELECT * FROM DOCUMENT WHERE ID = :DocumentId')
    Options.RequiredFields = False
    BeforePost = qryDocumentBeforePost
    AfterPost = qryDocumentAfterPost
    OnNewRecord = qryDocumentNewRecord
    Left = 512
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DocumentId'
        Value = nil
      end>
    object qryDocumentID: TFloatField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object qryDocumentHUMANID: TFloatField
      FieldName = 'HUMANID'
      Required = True
      Visible = False
    end
    object qryDocumentDOCDATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'DOCDATE'
      Required = True
      OnValidate = qryDocumentDOCDATEValidate
    end
    object qryDocumentTITLE: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'TITLE'
      Required = True
      OnValidate = qryDocumentTITLEValidate
      Size = 255
    end
    object qryDocumentCONTENT: TBlobField
      DisplayLabel = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
      FieldName = 'CONTENT'
      BlobType = ftOraBlob
    end
  end
  object dsDocument: TOraDataSource
    DataSet = qryDocument
    Left = 512
    Top = 64
  end
  object aclRft: TActionList
    Images = iml
    Left = 616
    Top = 112
    object dxRichEditControlPasteSelection: TdxRichEditControlPasteSelection
      Category = 'DevExpress RichEdit Control.Home.Clipboard'
    end
    object dxRichEditControlCutSelection: TdxRichEditControlCutSelection
      Category = 'DevExpress RichEdit Control.Home.Clipboard'
    end
    object dxRichEditControlCopySelection: TdxRichEditControlCopySelection
      Category = 'DevExpress RichEdit Control.Home.Clipboard'
    end
    object dxRichEditControlSelectAll: TdxRichEditControlSelectAll
      Category = 'DevExpress RichEdit Control.Home.Clipboard'
    end
    object dxRichEditControlChangeFontName: TdxRichEditControlChangeFontName
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlChangeFontSize: TdxRichEditControlChangeFontSize
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlIncreaseFontSize: TdxRichEditControlIncreaseFontSize
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlDecreaseFontSize: TdxRichEditControlDecreaseFontSize
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlTextUpperCase: TdxRichEditControlTextUpperCase
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlTextLowerCase: TdxRichEditControlTextLowerCase
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleTextCase: TdxRichEditControlToggleTextCase
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontBold: TdxRichEditControlToggleFontBold
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontItalic: TdxRichEditControlToggleFontItalic
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontUnderline: TdxRichEditControlToggleFontUnderline
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontDoubleUnderline: TdxRichEditControlToggleFontDoubleUnderline
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontStrikeout: TdxRichEditControlToggleFontStrikeout
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontDoubleStrikeout: TdxRichEditControlToggleFontDoubleStrikeout
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontSubscript: TdxRichEditControlToggleFontSubscript
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleFontSuperscript: TdxRichEditControlToggleFontSuperscript
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlTextHighlight: TdxRichEditControlTextHighlight
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlChangeFontColor: TdxRichEditControlChangeFontColor
      Category = 'DevExpress RichEdit Control.Home.Font'
    end
    object dxRichEditControlToggleBulletedList: TdxRichEditControlToggleBulletedList
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlToggleSimpleNumberingList: TdxRichEditControlToggleSimpleNumberingList
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlToggleMultiLevelList: TdxRichEditControlToggleMultiLevelList
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlDecrementIndent: TdxRichEditControlDecrementIndent
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlIncrementIndent: TdxRichEditControlIncrementIndent
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlToggleShowWhitespace: TdxRichEditControlToggleShowWhitespace
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlToggleParagraphAlignmentLeft: TdxRichEditControlToggleParagraphAlignmentLeft
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlToggleParagraphAlignmentCenter: TdxRichEditControlToggleParagraphAlignmentCenter
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlToggleParagraphAlignmentRight: TdxRichEditControlToggleParagraphAlignmentRight
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlToggleParagraphAlignmentJustify: TdxRichEditControlToggleParagraphAlignmentJustify
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlSetSingleParagraphSpacing: TdxRichEditControlSetSingleParagraphSpacing
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlSetSesquialteralParagraphSpacing: TdxRichEditControlSetSesquialteralParagraphSpacing
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlSetDoubleParagraphSpacing: TdxRichEditControlSetDoubleParagraphSpacing
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlShowParagraphForm: TdxRichEditControlShowParagraphForm
      Category = 'DevExpress RichEdit Control.Home.Paragraph'
    end
    object dxRichEditControlQuickStylesGallery: TdxRichEditControlQuickStylesGallery
      Category = 'DevExpress RichEdit Control.Home.Styles'
    end
    object dxRichEditControlSearchFind: TdxRichEditControlSearchFind
      Category = 'DevExpress RichEdit Control.Home.Editing'
    end
    object dxRichEditControlSearchReplace: TdxRichEditControlSearchReplace
      Category = 'DevExpress RichEdit Control.Home.Editing'
    end
    object dxRichEditControlUndo: TdxRichEditControlUndo
      Category = 'DevExpress RichEdit Control.Home.Editing'
    end
    object dxRichEditControlRedo: TdxRichEditControlRedo
      Category = 'DevExpress RichEdit Control.Home.Editing'
    end
    object dxRichEditControlInsertPageBreak: TdxRichEditControlInsertPageBreak
      Category = 'DevExpress RichEdit Control.Insert.Pages'
    end
    object dxRichEditControlShowInsertTableForm: TdxRichEditControlShowInsertTableForm
      Category = 'DevExpress RichEdit Control.Insert.Tables'
    end
    object dxRichEditControlInsertPicture: TdxRichEditControlInsertPicture
      Category = 'DevExpress RichEdit Control.Insert.Illustrations'
    end
    object dxRichEditControlInsertFloatingObjectPicture: TdxRichEditControlInsertFloatingObjectPicture
      Category = 'DevExpress RichEdit Control.Insert.Illustrations'
    end
    object dxRichEditControlShowBookmarkForm: TdxRichEditControlShowBookmarkForm
      Category = 'DevExpress RichEdit Control.Insert.Links'
    end
    object dxRichEditControlShowHyperlinkForm: TdxRichEditControlShowHyperlinkForm
      Category = 'DevExpress RichEdit Control.Insert.Links'
    end
    object dxRichEditControlEditPageHeader: TdxRichEditControlEditPageHeader
      Category = 'DevExpress RichEdit Control.Insert.Header & Footer'
    end
    object dxRichEditControlEditPageFooter: TdxRichEditControlEditPageFooter
      Category = 'DevExpress RichEdit Control.Insert.Header & Footer'
    end
    object dxRichEditControlInsertPageNumberField: TdxRichEditControlInsertPageNumberField
      Category = 'DevExpress RichEdit Control.Insert.Header & Footer'
    end
    object dxRichEditControlInsertPageCountField: TdxRichEditControlInsertPageCountField
      Category = 'DevExpress RichEdit Control.Insert.Header & Footer'
    end
    object dxRichEditControlInsertTextBox: TdxRichEditControlInsertTextBox
      Category = 'DevExpress RichEdit Control.Insert.Text'
    end
    object dxRichEditControlShowSymbolForm: TdxRichEditControlShowSymbolForm
      Category = 'DevExpress RichEdit Control.Insert.Symbols'
    end
    object dxRichEditControlPageMarginsGallery: TdxRichEditControlPageMarginsGallery
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlShowPageMarginsSetupForm: TdxRichEditControlShowPageMarginsSetupForm
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetPortraitPageOrientation: TdxRichEditControlSetPortraitPageOrientation
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetLandscapePageOrientation: TdxRichEditControlSetLandscapePageOrientation
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlPaperSizeGallery: TdxRichEditControlPaperSizeGallery
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlShowPagePaperSetupForm: TdxRichEditControlShowPagePaperSetupForm
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetSectionOneColumn: TdxRichEditControlSetSectionOneColumn
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetSectionTwoColumns: TdxRichEditControlSetSectionTwoColumns
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetSectionThreeColumns: TdxRichEditControlSetSectionThreeColumns
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlShowColumnsSetupForm: TdxRichEditControlShowColumnsSetupForm
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlInsertColumnBreak: TdxRichEditControlInsertColumnBreak
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlInsertSectionBreakNextPage: TdxRichEditControlInsertSectionBreakNextPage
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlInsertSectionBreakEvenPage: TdxRichEditControlInsertSectionBreakEvenPage
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlInsertSectionBreakOddPage: TdxRichEditControlInsertSectionBreakOddPage
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetSectionLineNumberingNone: TdxRichEditControlSetSectionLineNumberingNone
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetSectionLineNumberingContinuous: TdxRichEditControlSetSectionLineNumberingContinuous
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetSectionLineNumberingRestartNewPage: TdxRichEditControlSetSectionLineNumberingRestartNewPage
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlSetSectionLineNumberingRestartNewSection: TdxRichEditControlSetSectionLineNumberingRestartNewSection
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlShowLineNumberingForm: TdxRichEditControlShowLineNumberingForm
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
    end
    object dxRichEditControlChangePageColor: TdxRichEditControlChangePageColor
      Category = 'DevExpress RichEdit Control.Page Layout.Background'
    end
    object dxRichEditControlInsertTableOfContents: TdxRichEditControlInsertTableOfContents
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlUpdateTableOfContents: TdxRichEditControlUpdateTableOfContents
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlAddParagraphsToTableOfContentsPlaceholder: TdxRichEditControlAddParagraphsToTableOfContentsPlaceholder
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphBodyTextLevel: TdxRichEditControlTableOfContentsSetParagraphBodyTextLevel
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading1Level: TdxRichEditControlTableOfContentsSetParagraphHeading1Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading2Level: TdxRichEditControlTableOfContentsSetParagraphHeading2Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading3Level: TdxRichEditControlTableOfContentsSetParagraphHeading3Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading4Level: TdxRichEditControlTableOfContentsSetParagraphHeading4Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading5Level: TdxRichEditControlTableOfContentsSetParagraphHeading5Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading6Level: TdxRichEditControlTableOfContentsSetParagraphHeading6Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading7Level: TdxRichEditControlTableOfContentsSetParagraphHeading7Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading8Level: TdxRichEditControlTableOfContentsSetParagraphHeading8Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlTableOfContentsSetParagraphHeading9Level: TdxRichEditControlTableOfContentsSetParagraphHeading9Level
      Category = 'DevExpress RichEdit Control.References.Table of Contents'
    end
    object dxRichEditControlInsertCaptionPlaceholder: TdxRichEditControlInsertCaptionPlaceholder
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlInsertFigureCaption: TdxRichEditControlInsertFigureCaption
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlInsertTableCaption: TdxRichEditControlInsertTableCaption
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlInsertEquationCaption: TdxRichEditControlInsertEquationCaption
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlInsertTableOfFiguresPlaceholder: TdxRichEditControlInsertTableOfFiguresPlaceholder
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlInsertTableOfFigures: TdxRichEditControlInsertTableOfFigures
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlInsertTableOfTables: TdxRichEditControlInsertTableOfTables
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlInsertTableOfEquations: TdxRichEditControlInsertTableOfEquations
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlUpdateTableOfFigures: TdxRichEditControlUpdateTableOfFigures
      Category = 'DevExpress RichEdit Control.References.Captions'
    end
    object dxRichEditControlShowInsertMergeFieldForm: TdxRichEditControlShowInsertMergeFieldForm
      Category = 'DevExpress RichEdit Control.Mail Merge.Mail Merge'
    end
    object dxRichEditControlShowAllFieldCodes: TdxRichEditControlShowAllFieldCodes
      Category = 'DevExpress RichEdit Control.Mail Merge.Mail Merge'
    end
    object dxRichEditControlShowAllFieldResults: TdxRichEditControlShowAllFieldResults
      Category = 'DevExpress RichEdit Control.Mail Merge.Mail Merge'
    end
    object dxRichEditControlToggleViewMergedData: TdxRichEditControlToggleViewMergedData
      Category = 'DevExpress RichEdit Control.Mail Merge.Mail Merge'
    end
    object dxRichEditControlCheckSpelling: TdxRichEditControlCheckSpelling
      Category = 'DevExpress RichEdit Control.Review.Proofing'
    end
    object dxRichEditControlProtectDocument: TdxRichEditControlProtectDocument
      Category = 'DevExpress RichEdit Control.Review.Protect'
    end
    object dxRichEditControlUnprotectDocument: TdxRichEditControlUnprotectDocument
      Category = 'DevExpress RichEdit Control.Review.Protect'
    end
    object dxRichEditControlShowRangeEditingPermissions: TdxRichEditControlShowRangeEditingPermissions
      Category = 'DevExpress RichEdit Control.Review.Protect'
    end
    object dxRichEditControlEncryptDocument: TdxRichEditControlEncryptDocument
      Category = 'DevExpress RichEdit Control.Review.Protect'
    end
    object dxRichEditControlSwitchToSimpleView: TdxRichEditControlSwitchToSimpleView
      Category = 'DevExpress RichEdit Control.View.Document Views'
    end
    object dxRichEditControlSwitchToDraftView: TdxRichEditControlSwitchToDraftView
      Category = 'DevExpress RichEdit Control.View.Document Views'
    end
    object dxRichEditControlSwitchToPrintLayoutView: TdxRichEditControlSwitchToPrintLayoutView
      Category = 'DevExpress RichEdit Control.View.Document Views'
    end
    object dxRichEditControlToggleShowHorizontalRuler: TdxRichEditControlToggleShowHorizontalRuler
      Category = 'DevExpress RichEdit Control.View.Show'
    end
    object dxRichEditControlToggleShowVerticalRuler: TdxRichEditControlToggleShowVerticalRuler
      Category = 'DevExpress RichEdit Control.View.Show'
    end
    object dxRichEditControlZoomOut: TdxRichEditControlZoomOut
      Category = 'DevExpress RichEdit Control.View.Zoom'
    end
    object dxRichEditControlZoomIn: TdxRichEditControlZoomIn
      Category = 'DevExpress RichEdit Control.View.Zoom'
    end
    object dxRichEditControlGoToPageHeader: TdxRichEditControlGoToPageHeader
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Navigation'
    end
    object dxRichEditControlGoToPageFooter: TdxRichEditControlGoToPageFooter
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Navigation'
    end
    object dxRichEditControlGoToNextPageHeaderFooter: TdxRichEditControlGoToNextPageHeaderFooter
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Navigation'
    end
    object dxRichEditControlGoToPreviousPageHeaderFooter: TdxRichEditControlGoToPreviousPageHeaderFooter
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Navigation'
    end
    object dxRichEditControlToggleHeaderFooterLinkToPrevious: TdxRichEditControlToggleHeaderFooterLinkToPrevious
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Navigation'
    end
    object dxRichEditControlToggleDifferentFirstPage: TdxRichEditControlToggleDifferentFirstPage
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Options'
    end
    object dxRichEditControlToggleDifferentOddAndEvenPages: TdxRichEditControlToggleDifferentOddAndEvenPages
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Options'
    end
    object dxRichEditControlClosePageHeaderFooter: TdxRichEditControlClosePageHeaderFooter
      Category = 'DevExpress RichEdit Control.Header & Footer Design.Close'
    end
    object dxRichEditControlToggleShowTableGridLines: TdxRichEditControlToggleShowTableGridLines
      Category = 'DevExpress RichEdit Control.Table Layout.Table'
    end
    object dxRichEditControlShowTablePropertiesForm: TdxRichEditControlShowTablePropertiesForm
      Category = 'DevExpress RichEdit Control.Table Layout.Table'
    end
    object dxRichEditControlShowDeleteTableCellsForm: TdxRichEditControlShowDeleteTableCellsForm
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlDeleteTableColumns: TdxRichEditControlDeleteTableColumns
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlDeleteTableRows: TdxRichEditControlDeleteTableRows
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlDeleteTable: TdxRichEditControlDeleteTable
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlInsertTableRowAbove: TdxRichEditControlInsertTableRowAbove
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlInsertTableRowBelow: TdxRichEditControlInsertTableRowBelow
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlInsertTableColumnToTheLeft: TdxRichEditControlInsertTableColumnToTheLeft
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlInsertTableColumnToTheRight: TdxRichEditControlInsertTableColumnToTheRight
      Category = 'DevExpress RichEdit Control.Table Layout.Row & Columns'
    end
    object dxRichEditControlMergeTableCells: TdxRichEditControlMergeTableCells
      Category = 'DevExpress RichEdit Control.Table Layout.Merge'
    end
    object dxRichEditControlShowSplitTableCellsForm: TdxRichEditControlShowSplitTableCellsForm
      Category = 'DevExpress RichEdit Control.Table Layout.Merge'
    end
    object dxRichEditControlSplitTable: TdxRichEditControlSplitTable
      Category = 'DevExpress RichEdit Control.Table Layout.Merge'
    end
    object dxRichEditControlToggleTableAutoFitContents: TdxRichEditControlToggleTableAutoFitContents
      Category = 'DevExpress RichEdit Control.Table Layout.Cell Size'
    end
    object dxRichEditControlToggleTableAutoFitWindow: TdxRichEditControlToggleTableAutoFitWindow
      Category = 'DevExpress RichEdit Control.Table Layout.Cell Size'
    end
    object dxRichEditControlToggleTableFixedColumnWidth: TdxRichEditControlToggleTableFixedColumnWidth
      Category = 'DevExpress RichEdit Control.Table Layout.Cell Size'
    end
    object dxRichEditControlToggleTableCellsTopLeftAlignment: TdxRichEditControlToggleTableCellsTopLeftAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsTopCenterAlignment: TdxRichEditControlToggleTableCellsTopCenterAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsTopRightAlignment: TdxRichEditControlToggleTableCellsTopRightAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsMiddleLeftAlignment: TdxRichEditControlToggleTableCellsMiddleLeftAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsMiddleCenterAlignment: TdxRichEditControlToggleTableCellsMiddleCenterAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsMiddleRightAlignment: TdxRichEditControlToggleTableCellsMiddleRightAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsBottomLeftAlignment: TdxRichEditControlToggleTableCellsBottomLeftAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsBottomCenterAlignment: TdxRichEditControlToggleTableCellsBottomCenterAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlToggleTableCellsBottomRightAlignment: TdxRichEditControlToggleTableCellsBottomRightAlignment
      Category = 'DevExpress RichEdit Control.Table Layout.Alignment'
    end
    object dxRichEditControlTableStylesGallery: TdxRichEditControlTableStylesGallery
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsBottomBorder: TdxRichEditControlToggleTableCellsBottomBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsTopBorder: TdxRichEditControlToggleTableCellsTopBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsLeftBorder: TdxRichEditControlToggleTableCellsLeftBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsRightBorder: TdxRichEditControlToggleTableCellsRightBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlResetTableCellsBorders: TdxRichEditControlResetTableCellsBorders
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsAllBorders: TdxRichEditControlToggleTableCellsAllBorders
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsOutsideBorder: TdxRichEditControlToggleTableCellsOutsideBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsInsideBorder: TdxRichEditControlToggleTableCellsInsideBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsInsideHorizontalBorder: TdxRichEditControlToggleTableCellsInsideHorizontalBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlToggleTableCellsInsideVerticalBorder: TdxRichEditControlToggleTableCellsInsideVerticalBorder
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
    end
    object dxRichEditControlChangeFloatingObjectFillColor: TdxRichEditControlChangeFloatingObjectFillColor
      Category = 'DevExpress RichEdit Control.Format.Shape Styles'
    end
    object dxRichEditControlChangeFloatingObjectOutlineColor: TdxRichEditControlChangeFloatingObjectOutlineColor
      Category = 'DevExpress RichEdit Control.Format.Shape Styles'
    end
    object dxRichEditControlSetFloatingObjectSquareTextWrapType: TdxRichEditControlSetFloatingObjectSquareTextWrapType
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectTightTextWrapType: TdxRichEditControlSetFloatingObjectTightTextWrapType
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectThroughTextWrapType: TdxRichEditControlSetFloatingObjectThroughTextWrapType
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectTopAndBottomTextWrapType: TdxRichEditControlSetFloatingObjectTopAndBottomTextWrapType
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectBehindTextWrapType: TdxRichEditControlSetFloatingObjectBehindTextWrapType
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectInFrontOfTextWrapType: TdxRichEditControlSetFloatingObjectInFrontOfTextWrapType
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectTopLeftAlignment: TdxRichEditControlSetFloatingObjectTopLeftAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectTopCenterAlignment: TdxRichEditControlSetFloatingObjectTopCenterAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectTopRightAlignment: TdxRichEditControlSetFloatingObjectTopRightAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectMiddleLeftAlignment: TdxRichEditControlSetFloatingObjectMiddleLeftAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectMiddleCenterAlignment: TdxRichEditControlSetFloatingObjectMiddleCenterAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectMiddleRightAlignment: TdxRichEditControlSetFloatingObjectMiddleRightAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectBottomLeftAlignment: TdxRichEditControlSetFloatingObjectBottomLeftAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectBottomCenterAlignment: TdxRichEditControlSetFloatingObjectBottomCenterAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlSetFloatingObjectBottomRightAlignment: TdxRichEditControlSetFloatingObjectBottomRightAlignment
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlFloatingObjectBringForward: TdxRichEditControlFloatingObjectBringForward
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlFloatingObjectBringToFront: TdxRichEditControlFloatingObjectBringToFront
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlFloatingObjectBringInFrontOfText: TdxRichEditControlFloatingObjectBringInFrontOfText
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlFloatingObjectSendBackward: TdxRichEditControlFloatingObjectSendBackward
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlFloatingObjectSendToBack: TdxRichEditControlFloatingObjectSendToBack
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlFloatingObjectSendBehindText: TdxRichEditControlFloatingObjectSendBehindText
      Category = 'DevExpress RichEdit Control.Format.Arrange'
    end
    object dxRichEditControlShowPrintForm: TdxRichEditControlShowPrintForm
      Category = 'DevExpress RichEdit Control.File.Print'
    end
    object dxRichEditControlShowPrintPreviewForm: TdxRichEditControlShowPrintPreviewForm
      Category = 'DevExpress RichEdit Control.File.Print'
    end
    object dxRichEditControlShowPageSetupForm: TdxRichEditControlShowPageSetupForm
      Category = 'DevExpress RichEdit Control.File.Print'
    end
  end
  object man: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Home | Clipboard'
      'Home | Font'
      'Home | Paragraph'
      'Home | Styles'
      'Home | Editing'
      'Insert | Pages'
      'Insert | Tables'
      'Insert | Illustrations'
      'Insert | Links'
      'Insert | Header & Footer'
      'Insert | Text'
      'Insert | Symbols'
      'Page Layout | Page Setup'
      'Page Layout | Background'
      'References | Table of Contents'
      'References | Captions'
      'Mail Merge | Mail Merge'
      'Review | Proofing'
      'Review | Protect'
      'View | Document Views'
      'View | Show'
      'View | Zoom'
      'Header & Footer Design | Navigation'
      'Header & Footer Design | Options'
      'Header & Footer Design | Close'
      'Table Layout | Table'
      'Table Layout | Row & Columns'
      'Table Layout | Merge'
      'Table Layout | Cell Size'
      'Table Layout | Alignment'
      'Table Design | Table Styles'
      'Format | Shape Styles'
      'Format | Arrange'
      'File | Print')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.LargeImages = iml
    PopupMenuLinks = <>
    UseSystemFont = True
    PixelsPerInch = 96
    object dxbrClipboard: TdxBar
      Caption = 'Clipboard'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000021744558745469746C650050617374653B426172733B526962626F6E
        3B5374616E646172643B259B079D000001EF49444154785E75523B681451143D
        6F77418D86A056DB0AC26A61A512035A8C168A59B0102C5C2C836817145448E3
        070C2954B00AC4C23695209A66D32A29B7B6B050D2C8261A7666DFE7DEEBDC97
        9D0167DD03877BE631E7BC3B87312282024FDF7CD6D18541A2C7C20266C26090
        6D3A3BBC7C78F32E142FBFA428502BC4B7F54EF712DE0A33270B9D8B98BDD0C2
        F9B916CECD9E427FA79F246655EEDC6F775141A3106A6C5D5FC4A7B51E9E3CDB
        867316DE79386B71FCE01E4ECE77B0D3FB904C0E20C1D16333B83DF713DBDF7F
        00C6A05ECBD9A8E1C8D40198BD3EB2D46262000546A30EB4CE9C40B33983DD5F
        BB00044669540A606A58FE9A1D5A8E071000AE2CB1F7EEA69CBEB188D0DF8277
        0E2B1B6721C239B5C89C3183A316D267C6ABA5F654B941F0040916E22D82B5DA
        099E3FB882FFC113E3E18B8F2AEB6500B900D0101C2CC8E72482E277EA2190A8
        45460440C46A336580B701EC33B0B3FB648682D55C1A254E551CE8DF80603DD8
        65FA0991C46A8D09718A1453A20E24E31B884F630FE41C288C0A4434A82E8354
        108F6DE0202103FB7C9203094723AB510C507EC2E40E36BAABEFAFEA4DE93080
        9AED7D33974645D1C578C0FCEBAD6B8536C64C2F3CE23F1C572F8AAC0471A583
        0A586FB8F7783DBEC8C2A31EB8BA519814305C5BB9353DFAD50D14E393000CFE
        023DB570481AE91B650000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPaste'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnCut'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnCopy'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnSelectAll'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrFont: TdxBar
      Caption = 'Font'
      CaptionButtons = <>
      DockedLeft = 122
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000016744558745469746C6500466F6E74436F6C6F723B436F6C6F723B31
        8354C20000012D49444154785EA593214B04511485EFEC330A6211115C77ABE0
        3F3088C9A4980441108401C560B4EB1F1036592C229A2C068B36F13798ACE21A
        4D1BEEF163B9032FF8A6CC0CDF9C7378DCCBBB17A692645D9E9E757C66F2B0B4
        736112860F2F6A4F92D6618130414DF0F37CF97F83BC58521FBF454CE8AECC1F
        A2416984280E3047E89BE406A7F238F37283BC38A1359CC3AF33864C6B789379
        79078AD931DBF84F78873B93D7E8319C40FB0D0C44015C03D94731D601CC49AD
        37704443B13C39986EF0668E93CF8A26B851EB0850E3AE70677237D4C87BE8FD
        748CF6064A263F4437205FEAA3E45FF855D8A4E0B5B003FF90B408B740F6292E
        DF277F83C14B5ED3F15F8811AAAA4A8614E8E53E47D2B8D9C17C1CA4D0288A1C
        9AFBD071B38365E887367E25186479103A0C6F7F18602AAABF244BCB00000000
        49454E44AE426082}
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 120
          ViewLevels = [ivlControlOnly]
          Visible = True
          ItemName = 'cxBarEditItemFont'
        end
        item
          Position = ipContinuesRow
          UserDefine = [udWidth]
          UserWidth = 40
          ViewLevels = [ivlControlOnly]
          Visible = True
          ItemName = 'cxBarEditItemFontSize'
        end
        item
          ButtonGroup = bgpStart
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnGrowFont'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnShrinkFont'
        end
        item
          ButtonGroup = bgpStart
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          ButtonGroup = bgpStart
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnBold'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnItalic'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnUnderline'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnDoubleUnderline'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnStrikethrough'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnDoubleStrikethrough'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnSubscript'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnSuperscript'
        end
        item
          ButtonGroup = bgpStart
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxRibbonColorGalleryItemTextHighlightColor'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxRibbonColorGalleryItemFontColor'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrParagraph: TdxBar
      Caption = 'Paragraph'
      CaptionButtons = <>
      DockedLeft = 167
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000013744558745469746C6500416C69676E3B43656E7465723BAA4E5DA7
        0000019749444154785ECD91C94E2A411885FB1D5C48A29705A3403128202A37
        022A5C109C808D2B4DDCE8D2C79085BC1234F82084210C01C210C690DF3E65BA
        D284252E6E2767F1A7AAFFEF9C5312116DA5DF59B05AAD3E178B4561369B094D
        A7D3A25693C94408F372B9CC8B05CA50483DBE93FB6F965CC10C39CF1EC8797A
        4FECE48E1C815B72F85364F725C9E64DD28137417A6B8000D13AF850A9E3F1B8
        D8EFF7E56EB75B823A9D0E17E6E17028E31C2E14684E2CC0E70A662567302D21
        4A2CF3462C7043F6E31BB2F9404DD21F939F53F78C5EC9E289F27FB411F22A1D
        14D0DAED76A9D56A71359BCD326638535DAC7580CDD1F42BCFCC446690AF7966
        EB519C2C9E7F647147C9ECBA249D9E11805A0739E41A8D46C5C1602083DA6834
        CAF57A5D0873AFD793718E7B1B1D2899A570F245C2E650E2F9877CA8503D3185
        7C45BBFB3602C4C822929185373B402ED04101AD5AAD7E41954A85AB56AB95F1
        1A38470F4AD9A2034E3D8F3FA16D4DE698C86C765E908945C8C0C26470846847
        672400D73A402EB4AC0A24ADF032AAE0743E9F8B0EB6D0FFB0E01B87A9D41A31
        14381B0000000049454E44AE426082}
      ItemLinks = <
        item
          ButtonGroup = bgpStart
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnBullets'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnNumbering'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnMultilevellist'
        end
        item
          ButtonGroup = bgpStart
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnDecreaseIndent'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnIncreaseIndent'
        end
        item
          ButtonGroup = bgpStart
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnShowHide'
        end
        item
          ButtonGroup = bgpStart
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignTextLeft'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnCenter'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignTextRight'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnJustify'
        end
        item
          ButtonGroup = bgpStart
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem2'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrStyles: TdxBar
      Caption = 'Styles'
      CaptionButtons = <>
      DockedLeft = 230
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002D744558745469746C6500466F6E743B436F6C6F723B4368616E6765
        3B426172733B526962626F6E3B5374616E646172643B5180D882000003144944
        4154785E7D916D4C935714C7FFCF6B29B4D452DC008515EAEB0CB200190607A6
        D1A0633420C3007580096CAB092023B0908D984517B21162AC6C3A15D1606304
        AAC41886C6C807D8D887651F741B41C5B80F6232AC66EC85DA97E71EBDF14918
        59B25F72CEB9F7E6FECF4B8E90B5FF2CA03110116E9F6E10DF3C70AE5C526287
        FF0E3C99FF6DFC943DE5ADBA2069009106D2343046B87FF963E840669128484F
        00401420D5F0B3A0AAAFD8DE28DD7DE742CB45477937E362FE4E8CE1DFC85A38
        0C468499F38D82A3B8D1A6118A448D698AA248220CFB00F8B54838CC78112E66
        84656C707BB1AEF22800489B6ABC8DAFD77E359DED393396D3E4A3B57B8E4413
        73AAD70310B184A0DF251EE56838021038522418AD0E05035785A869DAB02279
        971A639494B8A47A009F0260BA58FEA9C1ED5525A9EAE7EB531F8A7C84D94B6D
        A2A3A4DD110A2EE6071F3FBC7CFF5AEF15168D3E955515921A5BAB98938D7A55
        65CABDBBDF9260D99F5AE2B2AA5AE404528B3F03CFFAA2FDAE35EF76CF00B001
        B06E721F39BBB9FE0CD95D5D64CD74BF0720CEE7CAF3DD3DF03EFDF9ED25BAEA
        DA49F5A2D82F8381A384FE0957328D32ECAE2F022006413581310D3171262C48
        4ADD50757EA9233EAD22C9B91D13C74F62706C7CE80663CD002039DEE9702615
        B653FCDA9D5B0098B9C9B1D6A48DEEAF7FDF58758C6AF7B6B0C99E6E5AB83840
        23454EAA10A5E104205E1F0B86F492437D89B99E5F799B582236A3B8B3EF034F
        278D8E4ED2DCD367D453D742C5A2E05F0158B8F86DEE5ECD2EB7CB065305B1F0
        8F0004DD0C9F145A0ADB94FEADDB9EF42133370B9FF74EE0CB1FA49171280D7F
        007FCD9695B0450058B5FD20A5383BC996ED21F39AB22A0031AD5BCC4EFF3EC7
        E2BDD1269A3A68A76F7625506246B34F52575A795187310D790072F11213008B
        3EBBB120D5F0DA49D7CA4773531DB470CF47C70B8CD4BA599DD7B723121196C1
        1F7403AFDE55601A193FBC8DA6071BC9BBC3421D590A55A64B1FF1B196FE2D21
        6339ECD6C3A07F76E07B45C477AB431A7E098468686C8EDD04101604019CFF4B
        10197CA00D03B8A2AF48E3423D12FE0B9E03EA30520FCBA1698E000000004945
        4E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemQuickStyles'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrEditing: TdxBar
      Caption = 'Editing'
      CaptionButtons = <>
      DockedLeft = 275
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000026744558745469746C650046696E643B426172733B526962626F6E3B
        5374616E646172643B536561726368BB659C08000002D149444154785EAD936D
        48936B18C7FF7B369FB5E3CB3C6AEACC66E66C94980AF6C1B74A462FE743E087
        2526299812C519A20B03C98A3AC9D2E8E518519F52222A2789ACF99264C58AD0
        322A848E9BBA6992D95496BACD3DDBF43EF7C62AE9ABFDE1C77D735DF7F5E7BA
        EEFB79788410FC2EF128020A4B09A230AB733FF8454CEDE54EFF7AF8EFC6CD6A
        4DFBA39A069DBDF282565F507A2AD96758A369939EB9D6ABAB6BEA75D55EE9D2
        A9EAEE487D466A4D07FC525FF46F84AAF3DA572F07C7C8F0E814B9DD6A20AA73
        5A0E40485D538F6BE0C3383159BE929B779F90AAFA760300BEEA6CDBCF2E9465
        F5F9FF5CEF21D3338BC43060240DD75BC9D1DA7B04C0969397F464F2CB376234
        5B49F3FD3EA23A7D8F9454DFC8FA3E0E43091286FD59BE4D168B2597070E9717
        939356184DA3D8B1F784D16432C3C97941C0032B12C2EB716085B01500F87E83
        2D698AE820365429A70636BB0B8B4E17161C2E78380F122591F0B8396ABA0CEF
        0A8150148C20FE0ABCCB284ECB514600E031F2F4FDF58A6CB9302E468CD4E418
        A46FDD88785FA1D78D71CB3838B71B3C1E81242A1407F2535176682FC0D9D689
        C2132E0010308C4054989F2547F7D31114553DC4DB8F56ECCE4D839B165A67A6
        C0D1B1A2C422E8FB465158A9C390D981A2821CDAA1BBC46FC0B9BCFCF03021BA
        0CA38854E4A17BC08CED294960593EC6FFD3FF151B17075FBEF38505EBF765A3
        67F013D25393E97D39F900186689B34F8E4DCC4091BB09F3AFFBB13B538A11F3
        17D817E626000C3916178C96092BF6E44961EB7F83FCCC784C4DCF8273DA2D00
        0833373D72B5B9F53912625834AA7642124CD0F2E031E667276E02B0DBAC9F2F
        B5689F214922C0BFD53990867970ABB9034EFBAC06808702B12C43A94EC93B36
        BC2DEF389165161B6365BB6A0044049E6A5D4A56E991949C8A77F2AC32929871
        F0BD44AE2807205AFD2DFC4189A66CA0C450820371040EB18198981242610371
        ACF96F64B046FD0FE22625E3DA6A63E80000000049454E44AE426082}
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnFind'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnReplace'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'btnUndo'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'btnRedo'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrPages: TdxBar
      Caption = 'Pages'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000016744558745469746C6500546578743B506167653B5265706F727476
        6161000000018E49444154785E7552CD4A03410C9E192B0A3E8B480FFEE1C18A
        1705C183545B2F0A45BCF5193CFA00E24910547A522F8237919EFD7D1B7527C9
        9899A4D3955DA79BCDEC4CF2E5CB97364208C65AEBCE079F4FCEB95630C1A4C5
        2EDEE936BFE211010CFB87F3EB7C8F0D23CBB2B58EF766E3BE9224D763B0B3EB
        8F5576136C6300444A9BC293864606F28A3F79AC999A7406804645CD08C02009
        3A95B2255F3FD5223C1266A625063EF77D79FB92938380253B682FB0B3FF3040
        A9434CA1BD39376E83D8EC888D880850C3003CE6A0C1C3BB14550AA4FC7B9DC5
        74EE7D0D834245243EDFDD6AFE1923A988C048C806586190662BD538E0E6FE4D
        671EFEE8D0EB2EA73320AC30B05EC7471CD0DD6E32509E7CF4DA8ADC03841A0D
        10195DC67975F79AC728DEA6CA47FB2B090401EBA640328548B5B3A4B5AD30C8
        FF11E2BD6300AA6901A9A4BC26AA0E42C4E502885427A2683033DD9009A460A6
        AEE529B641AA035501F0C77F3FF74F1ED782642711AD0D8A9E1E63958D2FBE86
        ECA00C0017A73B1BF22DBD89AF2CE94D920B36F30B206841CBFAC5FA2D000000
        0049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPage'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrTables: TdxBar
      Caption = 'Tables'
      CaptionButtons = <>
      DockedLeft = 64
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000010744558745469746C6500477269643B5461626C651BFD37E7000001
        C149444154785EA553316B145110FEDEEE4B8282A062215A080A2268B4D2DAAB
        CF4A62A560E92F506CADB4132B2B3BB148E02AB1118E748A360997D80BA74944
        62938B72D999716676F67155401C989DFDBEFD66DECC3C368908FEC752F143EC
        90EF92EEBFF83464A0C7AC4818CCA2513C9246319E190AC11AC5A2F3A29157B3
        E2DEBD5B9700520270C1C7D116AE5F39DD26A34DF8B0F61D3716CF808C1171FE
        D5F2FACDCC8659F065FB3794F602E31F131CDBDA07BBB6E3F6707C67520E397F
        EA88BD215B753221FCE1C6E1C19A45EB21E9C650CFF6E5F3681BE39F1388CFDD
        666F6E7C2BBBB068361A8D4DEE78E7E4518FF9623DC5C3FE054CA704A4E4D557
        DE6D62A9BF0844A2F12B6F3770A77FD9A1B1737585672F775135149B2F6D0AC8
        B0B9B71C1C491903C113112A6A2844EA91C10D6B885BE1989968B6A05F2DA92E
        3D7AFA5ECE9D3D0176659A595CF21903141E41D9B45FC7BF901B12DCBD7D15D3
        03F67CCB793358772ED6EFEAD78335E5AE95437255E1C9F321AAB63571E7AE5D
        E1168BC1143B302ECDEEC6B94C41CCE5AAB468A25A710A61D75A5DC53B100732
        D283C783619DE77B0289843276C1C5C45545D11CFC5935B4A09E4DFFAF7FA2D5
        F80B78A36F0152EFC4E70000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnTable'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrIllustrations: TdxBar
      Caption = 'Illustrations'
      CaptionButtons = <>
      DockedLeft = 129
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650053686170653BE4274AE20000
        02DD49444154785E6D934D88955518C77FE79DFB354E438A52D1C86C1A875228
        4ACCBAE4D038526A6A96499B2844D0A41CB20F285C548BC456969419B470577E
        D444E1A2C52C8A1AE81BAD06CAF0631C9DF2CE3477EE3BF7BEEFF97CBABCDCBB
        89FEF0F0FF3F07CE0F1E9E7314100179200728FE5F0278C08848A0ADD6A5C2A1
        CF87460B85A81C00111011082048AB079DBAB157B67F3904A4FF05E454A4CA9B
        EF791E102448E61008B4B2043E1A7DBB0CE4F71FFB29752E20226D0091B51EEB
        13A6E7C71115324890807721F35C471749C302140FEC58599F8C4D68D8C07B1F
        FE9C0194319ED4CC91BA3A4104F18138CE3331B59CB95A2FC675E1C3DDEC3B2C
        EF5CBB7CEEF5A5DD857380DF7BF86B8900A5B5A7A6AF506DFC459CFCC3C4952E
        7EFC6D0B372EBC8F4D6B6E67D7232B786C6815ABEFEC7BBC67D95D3FEC7CEDF8
        1620676DA00570189B504F6699FABBCEEFE7D7B2B1DCC76DFD4B888918AFA4C4
        4A35FB1BD83AD8B7E0BAC53DC736EF7AB3FFE80B035136429A3AB44B4952CDE4
        E501EE58B6145F2C3051350864A52D541B9E85A5222B97DFD43D53E97F09D89D
        018C765897A0ADE55AE51606CBD75399B7F8D60A69AF13A858C3CD3D8BF052DC
        00E4738068E3D14E1351409B123349A0D27074E615918A8822C17BF001B4F384
        AE025E5804642398F9393336F2E958D99840D45165765E9338453D1104508ACC
        41E88814B3B504A34DB5FD0E921307FF580F1481CE8DCFD4DF9ABC38FDE8E2DE
        25C42680084A29DA2A9614972E4C93D4AAA3808D44C4372BDEF6F2E969E06AE5
        D2F8815FCF4E24692D61413E4201D6F90CD4D9EC9BE7FC72E66272F5FCF78700
        8B8864F5F08B9F0128A058DEFEC6139BF68D34868F7E27074FFF2947BE99CA7C
        EF916F65FDF0A9C6AAADAF3E099400D506F0D073237C75A1D68694560C3EBDFA
        FE1D1F9C7C60CFF199079FFD58D6357DCD53EF9FBA7560E7BD4027A0D6ED3989
        6A7F8A0DC39F9045812FDEDDA6800EA008145A390006D0805BBBFB8480F02FE3
        EF97B5AD9587E20000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnInlinePicture'
        end
        item
          Visible = True
          ItemName = 'btnPicture'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrLinks: TdxBar
      Caption = 'Links'
      CaptionButtons = <>
      DockedLeft = 257
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000014744558745469746C650048797065726C696E6B3B5765623B06FEA0
        CE0000036F49444154785E5DD26B4C5B651C06F0BA8966662ED9C4B828642A59
        28B30C033B2D816119D0C2904BE95837DA420FAC3046D34E2CD1B6A3B4AB16C6
        2A05A183192E8B73CDA099ECC25A06AD2DB7029B61BA281B2223EAD4E81713F4
        D336CAE37B0CABC637793E9D3CBFFFFF9CF3B252D44116394F914424290665DC
        72B793A71C594AAEF43EA668CFFD44A9CBC529EC5292E79B493652F2EB2C00E1
        FC534E38742E8AAA703B72F4FE55CBE014EC431E5C0C7C81A3DDA7916FB7E3ED
        FAB1B554FAD2C00E6E4D2C83FC1F88D843CA791F5C8776B813FAC19368BAE240
        BBBB1FA53D9FE105CB5EC49864109B669151717598005B4936840166ED74AD77
        35B34783E44F332171974133A2C33BAE01348C2D4376D683486306B87A3BC4EF
        7FB54689CE9A09B0290C702BDCCE746B3BB69F8A4354171B6F346742E5BA0CEB
        CC2FB04CAE40E55C40E91933E8561344DA1BC8ADF22E10605B18E01D1959DA55
        7F04D1DABD78B16137E80B4E34DEFC1D1F4EFF05C3E80A949FCC43D0548DC659
        05689B1162F5CC4302BCFC2FA01C7D1C5B5B01D147BD90F50EC2E07B8086C09F
        D0795670BCFF0F1CB6DD46AC390BB26BB990B71D8544330B02BC1A062885FBBE
        D07411D1C78A21EF1887F4633F646D41281C77A168FF0985C6DBD8AA4A07BB35
        0159660944CAD11001C27F83955832E0CA3F7107FCDA3E24C9D5E096282090D7
        21F5B006197417B2AA038897A8917880469A588DD402ED2A9B9B6D27402483B0
        38059D4A816A662DBBCA09ABE302FC5373F8F9D7DFE09BF812667B1F78F97530
        DA7AE0F105B1B4FC03864626A0B37686D8BC9C26026C21616DA68ACF5F12969E
        823F38074B473FA4B52D90A89B515CD30851E549E4951B9153A64756491D8EE9
        5B70653880847D87E609F00A036CDCCE16250AA4EF8598C9124D337ACFF7A3A8
        CA02E6CC2F2CE2CE37DF62BFC280B633DD4829A8C6DD85EF41ED2F7F44801816
        25BBC6205BDE2AAAB9E51DBF05C3E973EB1375109089FB0E1E27EFAE628AE0E5
        5542A9B5E2F3211F386907BE23C08E27F7F9594A28D5995AFA566F04A6B1FCE3
        03B87D933034758538694537755647E8B2C78FF97B8BA4ECC5BBE6D6D0EB09FC
        76E65A3F0136305BBC995E5CCFCBA5E7520AAB1F2609E55FC7F1721B091EB773
        8FD016CF3F782F29877EC449132FBEB69BDF413AD1244F33C07F91E74822D73F
        CE4B24CF933CC3E0EB859DCCDACC64A6CCF4FE06A358007EE055FFED00000000
        49454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBookmark'
        end
        item
          Visible = True
          ItemName = 'btnHyperlink'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrHeaderFooter: TdxBar
      Caption = 'Header & Footer'
      CaptionButtons = <>
      DockedLeft = 425
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001D744558745469746C6500506167653B4865616465723B466F6F7465
        723B4564697494DD6A7D0000017D49444154785E6D53B14A1D51103DF3D67C87
        A4120BFB149A47400206B17C825DAA74219F606D2D7656626F211682200AB6FE
        408AFC43105DF7CE1C19662ED7E7EE6577E7F0DE3967CFCCB0421222D29D9C3F
        DECCBA6E4E107EBC904CD81E245086FEFECFCF2FDB245F5710670691F9AFFD0D
        C723112051F3797CF6B805A0734A351055F38ACBDB7F498D04469713548002EC
        7DFB8C522C5EDA0C00B570AF464C03B6E830131808350DD1728201A093821C3A
        4289664803899A403E1804EDFBE66A0A24AA01943A5AA6818E0DCAA02DB648D4
        A4552C740C0CC338015EB377838B97D768889ED46F238A4E24B052DA0C048901
        86B8252151A686E8B19C676415B7BE2346FD1FA5709CC063B9F6E2FA6FCA52BA
        B44E60F1630D3A35C4D83FA1B4ECBF5288F8A9619D5823063590B505811921D1
        771A0A902DA84E185889191CECAE87008451C04814DB31833936CB2E9B4179E9
        9FEE7E1F5E7D25DA104598EE7E019283E85FFE3FF8E6DF1BF4A7478B1D009FF2
        23A9115B6D98297E76D21B88C13979DDBC414F0000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnHeader'
        end
        item
          Visible = True
          ItemName = 'btnFooter'
        end
        item
          Visible = True
          ItemName = 'btnPageNumber'
        end
        item
          Visible = True
          ItemName = 'btnPageCount'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrText: TdxBar
      Caption = 'Text'
      CaptionButtons = <>
      DockedLeft = 660
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C65004C6162656C3BC22DEDE10000
        026949444154785EA5914D4F534114864729D0A2ADF6C396B6947E5EDA72B1E0
        6D533ED49A0622A685525A04BC1504B5A40282161B892221A0C55668401B4A08
        550413A33B5746F7FE048D1BF7626262DCB8C11C676EBAF06270C3246F66E6E4
        CC73CE790701C0BEF44F8019DE40CCC87384D7412C414107AAFB73C8D69F4536
        F631B2B2CB7B031CD175EEB17B7CA3ABF1D66B383E90DB16579E1059D92554D5
        B384A8EE456409A7F706D003AB0420A81FDF7AD330F10A1C4379300466580235
        87D2C8D4318F8C81E4DE002ED137AA728D6DFD72DF78B9E31CD9045360FE3D8E
        9718DAEFA34ADF2CD29D9BF92FA088EE5B1EADEECF7E6262F9B7CEEB2F803A9F
        D951382F58095CD73285B4CD77F800AA3B832C5D0B78B605442A55752D7ED0FB
        EFA56836758919DE04BA2F076ACFCD3406146BCEDC466A4F820F3075A6B8B9B8
        F6DB1276BD7F0E94EEC17AA1ACE268DDD0D3EFB557F250D172F76BB1582D213F
        A26C1CE7030CFE39A4F3CD70E6E1F693D8E5CFF82CC792D26CE69903030CED49
        903A221192A3705DE3037467A73963F01259428FBE983A52F8C14330B425A166
        600D6A06D7C0D6FB0464CCD577185026AD8DF2016AEF24679ED93FE92DF72440
        42B536E0BB984850262DB74756B6E98BABA03A19FF2DD234D8492E0FA03A3D41
        00A5C6B6D975852BF6119F0FC9981892D545B938159CCFD9D81530F81E80D812
        5CC231210F40E65231212B15CEFC90339737F0FD3031ABA052EDA968D0DA9B05
        4B7819944DF16F02B1B16A3740A86D9E068D770AE44C0C57E9EC216D1280C4DC
        AA56352540D9188763F57150B8C6A04C1FF8B91B5054A87AA4307BC95F1D080A
        312996ACB04B7880FDE80F6847AE0BFC9F87A70000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnTextBox'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrSymbols: TdxBar
      Caption = 'Symbols'
      CaptionButtons = <>
      DockedLeft = 724
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000D744558745469746C650053796D626F6C3B22EE4FD9000002BB4944
        4154785E65535D489351183EE7F39B3A4DD71F1568A4A9606CFEB5660CB22EA2
        1F52240B2A96252C179ABFA029D18514F44B0525E64FABD552532942BCAA9BBA
        0B0CBC0994882EBAE822AC4973B67D3FE77B3BEFD9BE1876D87BF6ED79BEF779
        DEF7BC6794FCBFE8AAC00509CE309FCD907073758C1177CFA4F85DD916287175
        8CDE77B606E778689CD3DCDD9373BB3B9E3F70D4DFAEE039320A97343EFAE746
        DC17A7C8D29759EBBAA25D3755456F079D45991AED53C28B330480A4666FAAB5
        66DBAE70EF74E5CFF2C0F70FAF2E2D7E7A1349AE26C5DD3531EEEA1C878AE680
        623F7DA70AB1A43664BBE7D67E57FBA8EA6A1D0347C3E04B8EA59905D0CACE60
        BDBB7B0A765E7806A5DEA17E4C28F33D26A5E7FCA4C43B62566AA9F00D3F74B6
        04A1FC7C000A8F5DF3A289847D532A37190610A633A2459626F0B00CC67023C0
        717BC31096CAA2BF7F4E180C08A594C8A9193E1415029C7582611083C7D2D78F
        F3D81B0A623262C00C82D8AFF9770BF81E8A0391CA31579CA87801287F209CD4
        E2A3C3441421424E40004488E9BC5260A061AE24684D9F432749A2246B6B9903
        09E10C2882AD0819C9965FE9405C5714C23465016D24DCA2E1901F4BA3BC20D9
        BAD683BD2D8CB65083C5CBFFFCA28D2266C958EFD1558D301E5A24F48463BA79
        C269F6FAFEA9725F004A1BFDEAF6C33D0738968A9CC9E71DECAA293ED5AF16D6
        DD85FCEAABD31CCB345B103D7F7BEF6F5E092DFA81114BE696A2B7F947FA7AD1
        15A3A8EE7AAF252B67468BC52C2CB6FCF4C76CB029F926A7F3794341CDE5A31C
        D898BBC77BC87E76040A8FDF8384CB9A1D9E4128F60CC066E7895A8EE5E4EE6B
        3999577D03F92C9C420AF66ADDB0EDB5FDCC304114C4E818410E3703A7C03FB6
        82BDD3B6822A71819548182959463E168E5F6B30CC718179CB05A02E87050688
        2502E23CA3099734545BF597C612A2092003F9248E24F895BF0F1F5BC909A5F9
        DC0000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSymbol'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrPageSetup: TdxBar
      Caption = 'Page Setup'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000016744558745469746C6500506167653B50617065723B53697A653BBD
        2F129E0000019149444154785E5592B18AD5401846CF971B651FC7C64A740541
        B0142B5B2B6BB1560B3BAB857D01B1F7095C10B6BDAFE3E2DD64FE63E14CC20D
        249929BE6FCEE19F3C7BF3590A4CB8FDF965BEFE71BC990E874B1104000D5068
        C042C2BAFEBDFDF0EEC98B591352520698C9E1F2FDDB475B782CCEB770F5FDF8
        1438CC2A548002486B0B6D2D96266E04A324085C3C0CB516C034538511A01740
        01557B08820546EC4A6B6B0099558254F582A581A262828A00615B5B70FF9F80
        D908CA80B86F85842228E0AE50084253DA3A089A10E9C4A9D650A81203085520
        821BC9B9026C04599642A4740F03BD020A4AA82A80CCB1514E4401B2D68A05AD
        7A681C2C140060C1DA1C042188B12BEC049C8D4FEC34CD1A0A74858D739BBF0A
        A6A38BA3CC09856A7D0A54690410B838DDDDFDFEF4EDD7F3B3AB9C117640713A
        FDB90596598D5386E074FDF5F52BE00190FE8E27FB1F810538E5F1CB8F50450E
        DB65D224696284DA29A268303281C79BAB4CB161A41962775D4BA3AA46A14CFA
        260A0C6DE6AAEE38C209891149FADC81697C5A480411E01F472A7E2E7DA1EEC6
        0000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemMargins'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemSize'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem6'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrBackground: TdxBar
      Caption = 'Background'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000016744558745469746C65004261636B67726F756E643B46696C6C3BB4
        301774000002CE49444154785EA5926D6895651CC67FF77D9EE76C1808F565D5
        022B04539372E569B3A1C64997494E042B674C8392A03E4CE9DDB276F24B3456
        B4494523D68B4210522D1015365D63A3068EA65030AC6D6E9EED6CC1D9D8CB79
        9EF3DCFF7FB0170E7EEE0717D7A7EB820B2E73BEBE0A0CEC387ECE0006B04BAE
        0B5EC070330A445E1844003425EF96F5752D372418BFD34D0EB0E2E1E7C9FC9B
        E3DA7016510308AA0654500C5194FBF5F82BDB929C39BA0555E5FDCDA58986CA
        BBB4A3F105D528AD3DDFD46B1004EA9C531151B72CB7A854539702C5DEDEC64E
        43A3897D76E8A14DABD76EA0F3BB9F595D9924B1EF209DAD29363EFB169EEF23
        02C6C65848C50D2E12006B01AFA9E681C325B7AF6ABEF5DE7236EEAEA6B9F625
        B25753945525F9BE691B2D7D15740CBDCB6C6E1A27822A44CE0118DBB077FDE1
        FBCB2B4E56D77FCE83BB9EE4F1831B78B57517D98109AEB51E637BE239F26D33
        74FFFD356D7FBD4698CFA302415E00B0C5682AB1FF08C6F884E36DCC8C5E24FB
        E70499BE618CCDD379AA85756B8E901ECBD13B7886B9F9699C2A2E8A008CCD64
        E73FEEFDE134F323A7991AFC85C9FE0C23BF0D128B09DDFD596EDBFA32EB92D5
        8C8E044C657304F910552D4C48B5FFF3C9D96FBF3AD1FEC59764FA2619EAB98E
        5F64B974658A921D753CF2D47EB03E6337428AE6D6108FDD8213C539592C00E6
        3EECBEFED1B90B630D3DE7D358DFD2DE3F4DE9CEA354EEA9C1FA45A8B1AC5AF1
        28DBEF7B1BCF8B831AA2E582D4E65201669A2F8F35CEACDDC71FE995DCB3E775
        1E7BBA16EB17E304E2F1624EBEF1135BCAAAB0310FA7B23C01CF858EF736DD21
        F5BDE9D992CA1A761E7B078707311F271650ACB50B2500AA1655967F60BCA52D
        00AEE3F7519ED95D461809A28082A2881A540514048388E04400F03EB83C0EC0
        09635C303F7BE9C5377FDCAA4B411444C018050001018C2A6130DB05E43D0A84
        A73E3DF004E0039602A6E037110239A3AAFC1FFE0357C2717D9C77D8F8000000
        0049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonColorGalleryItemPageColor'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrTableofContents: TdxBar
      Caption = 'Table of Contents'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnTableofContents'
        end
        item
          Visible = True
          ItemName = 'btnUpdateTable'
        end
        item
          Visible = True
          ItemName = 'btnAddText'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrCaptions: TdxBar
      Caption = 'Captions'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnInsertCaption'
        end
        item
          Visible = True
          ItemName = 'btnInsertTableofFigures'
        end
        item
          Visible = True
          ItemName = 'btnUpdateTable1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrMailMerge: TdxBar
      Caption = 'Mail Merge'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000010744558745469746C65004D61696C4D657267653BF2311537000002
        0849444154785E7D924F4B945114879F3B33DA084D44B6D0348AA0B24509152D
        5AD4C28590429B166D232B2C5AB46DDF271092222888C2458BD94988B48BA072
        374A447FC830C8512BC77975DE7BCF2F7967C697447BE0C0B98BF33B0F879B03
        DCD8DDBEBEACD360169DCD603D0A9E288A3F2F5556A7E616A2897BC58F454911
        5B9003B2857C76E2F0A993B4777551D8D3019936FE94977AE7A6A77A675E4F5E
        01F601DB06E46481EEA3C7C9177682844CB4B82A6D6E018B63803CC0B606E603
        711CD39229109567F9FDADC4F26C89EA7ADF08C8FE374021E07034710ED4789B
        F924C039C7261CA0BA41F0FC83C02100E47D6A00994D152737B01040E9B41CE0
        E0C9DEA7E8BC183EA79224CC48900939F1E8E6E97C12A0E0914BCD9C4002198C
        0CF52240121298EAFDF083F789590E9099F1E9DD1B3A8FD568CD1ABE56A3F26B
        052BD896C32608C136022AAF4AE5EBD35FC70777E7C74F145AADD342A0BC1CCF
        6B40DD927838318BF796541C02B7060E114C00B91C501D9DFCFE0C2876BEE4E7
        8F7E7A1A07D2B50B9A91E06ADFFE8DCDD6B409A16E20C9802A50ED283ADA9FF3
        8115E417B9D4D4BE3FFE85B8B13DF6813B178FE0538314BF0A8A5088408E1792
        90C48DFE83E9E6A6497A831455708A8035E4E7B9AC031A33B179B85E5B192C0C
        89066E9D5D1A11C3A36F094178338205CC946C0F82FA47DA9EE8F1ED33EDC08E
        F4E7E1D29E1AB0F817687A595F1A93EA940000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnInsertMergeField'
        end
        item
          Visible = True
          ItemName = 'btnShowAllFieldCodes'
        end
        item
          Visible = True
          ItemName = 'btnShowAllFieldResults'
        end
        item
          Visible = True
          ItemName = 'btnViewMergedData'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrProofing: TdxBar
      Caption = 'Proofing'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000017744558745469746C65005370656C6C436865636B3B5370656C6C3B
        53FC4602000002E349444154785E65927F48936B14C71F9DBFCA19DDA925534B
        9D3A6D9BDBEB720ABAAE9BEE75BB2A9A9699962204A636B2A566D245B952C1D4
        98FD7060964ED3A20CEE3547F68722256AA2E62F340B94B21FE294A4A4A86B9E
        DE07DED1C60E1C5E5EF83C9FF33D0F0F9290258A28D5799028CE92FE3CE5F648
        653944269C03715CB16A978FD09190A9E5118A52D84F960242C81E0090652309
        0587CBD4A911641950024F0C7204C9FE62450978ED8D700B8FD3E0832E543B50
        6D6723C0A01F4FE54F819420914DC8CF00212B0681B4B0D2831DF68730F63416
        3885C5AA112E1B818882451484415FAEC28F02614F488248F0E72970670BDCF9
        078AB080892578059C02A7A1FF1908833EDCF8600C7A07C97D79D242E0490B20
        589273C8DD5BE81A28CE2643A3F30137967805495CD32B7BDA73752340AA0D7F
        E1548ED868F175A6DB819EC6A0EF609B2F5FC64AAF7CD2D534F00E7ADE6C4076
        EDD0EF5D70656B07D1FCFF80E67E6CA1D9EF5B68E6DB4F34F57513E1E89CA834
        4F6AF240F3F07BE89C5B873C6D3F08536AFFB612D0D39CE834F6E6C3DEFB6259
        072F189FB68F2DC3DDE935286A1886B0942B068A71B3143048758BEA58DD1024
        971BBB88240D875E8599A079D87573E02DB48C99A0BC630A84A9D7469C99BB3D
        B0DC52E092553308C685CFD03EFA018E54F77D8AC9A93F292F686BAC33BE02C3
        B809AAFE7D0592CC9B1F77711379F88EF8297A642970921CD5EB4ED40F42EB84
        097A97BE80A669146ABAE7E1CEE42A5CEA5904695EDB265B785C4927B30B4DBC
        6125B0C3718934DDF5DCDA6750D3BB04FFBD5E07C38B15A87EBC08A91546F08B
        2ED36206B3F767D7105779D54A80E887B2839FA4D5675DEE87AAEE05A87CB400
        F9FAE7C0915D1CA7004FCCDC9B594577264D2888D4590BC49906B364E73EE5C5
        C68CEA3E287BF01244690D1BAC00528AD7EC985E45AD132BE8D6E8320A8CBF62
        2D20329A1171F8B659C20A21FF698AC9EF04365150618ECE91D7A1008BB610D8
        1403AF43C766D2529BFA05BA6881B1E52780230000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSpelling'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrProtect: TdxBar
      Caption = 'Protect'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000023744558745469746C65004564697452616E67655065726D69737369
        6F6E3B53656375726974793B7B1AED18000002BC49444154785E7D936D481559
        1CC69FB9CEF5ADFDB21242452DF6C252081A15921A15525C5358F083517E504A
        8C34CA97726BE152A1469A0A05995C83BD2C1141118A5251525CBD698295697D
        C92C0577352B6FABDE3B7367E69C7F67864154C2071E9EF9F2FFFD9F7386233D
        A8FA0323A353070DEEF8676C7CDAF9F9DB74FFBB8950DAE0C4AC0E2122C2B2BA
        7BCE85EADCA4AFAF3C0574253F950A53D76979DB56D502700ACB66DA8E148EB2
        BF1D26D8B41C54340466D468FFC047B872B7436EE5CE976311957F79DB2BE190
        41C4C139600D7042381CF65F2B49CB00A0C1965499BDA5A3EBEF220ABEAF274F
        D91E6A3A5F46AAAAD2CF54DADC470062E71B40488E8CF10C0F7DCA8A961504E7
        082959FB31A73268CC0081A0330211AC016ED6011C3B734EA3F77E3D1CEB73E2
        631E6F99CEE89C9D0879DBDFA25BFF8E6781E7088682D0058013ACEA9CB83081
        310B2019222DD2CAE45FAA0FA4A79DDC5BB42F76F5B164C4B9E2F1F4BF56B4F8
        1AA12A616BE8EBF719D435DDC1C1E22A0C0FF660C38EEC35DC06C80EA794F7E8
        750F38B3EA091398C8A7331D38B2AB1C4E168DEBDE362424AC85E7E821DC6BEB
        C4D4BF63371963E9569585BF4638E658C393C99AFCADF85F61703AA3C0988182
        B2CBB870B618672F5E85DB4C7783F6B6D31307400511CDDB049C68EA25539301
        853E8C7FA1811B8769A82689062E2452BF7B33F5FDF93BF5546CA487C77F7B01
        60858CC572D867B38EA28575447C7B87C492DB20A600862A1C02E941F8EA4EA5
        00885C0A00E364A508EBC60D9D0186027A7309B75ABA91579002E20698C12024
        2D05B07068CE57D8D8B59B138732378B0ADD30B70B1B18F9A25AC3E04C80394C
        2D0568DE73AE4CB39A7DA9BF969ED934023D04620CEEF25440004800B8000BD1
        2200119958C5362449D202B3BADF575B94CE7406A673EB585CC06614E607A0C9
        585E6A66F3A8CB6E242DDC653F26F507A124B4B097E1BD620000000049454E44
        AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnProtectDocument'
        end
        item
          Visible = True
          ItemName = 'btnUnprotectDocument'
        end
        item
          Visible = True
          ItemName = 'btnRangeEditingPermissions'
        end
        item
          Visible = True
          ItemName = 'btnEncryptwithPassword'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrDocumentViews: TdxBar
      Caption = 'Document Views'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000011744558745469746C650053696D706C65566965773BA37184340000
        01D049444154785E4D92BF4E1B4110C63F4BFB1269524534209FC903A4401448
        2928A0C5928D0D18625BAEE02D6C4B2601C7890181444545610941418F7CA4A5
        4AC34BF87616E6CFAD59EFDCD833DEEF373B736E747D7B1F42584100027F827C
        111F4008C43135921CF106F1238407C787CB1B6B50015DAC21725194ADA08201
        313EBEBC59714C63EB8CFF818402F42A45B446CF4264A80F84E37A82C6692A15
        F910F06B7719048213022007BB9562A4F76BC548E2CD622CC2E99D9F53A68A98
        03F23B137459E9D14B3FCC17244F2A28E63419D0AD26F17E678FAFC8328F59B4
        0CB39947677D4184860DFB2F111C91625A7F52F4B7B5C4F2B74F00F1CEC9760D
        28A13A4831DA2F49DC21F64072123CBDFB1FC919D33382F71E879B8B563ED964
        B889A457F838EFFAEA6725B32A846CE24AA1BC47B107D6149B28FAB72F4A6732
        65F05E858E36974C98A2A0CBA9835A2956D0FCFE259210E9F37EFC6D7E9D0BE4
        89C6706A73D684ACD8B88209B007B6FA4FB868BF8B9008D0FC3D97AD9E54C1B6
        1CD69C00ACE990316A807DFD642A7EB897A0769C0ADD938A8F7F2CA3DC7B82B7
        9E813D018E9F4C38D92DD9BBAFBCDF0789FD0672EC793BDE5D635241A0C9F8EA
        664D664B3A5B126F96C76131CBD92B3D7903B2B003B677363556000000004945
        4E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSimpleView'
        end
        item
          Visible = True
          ItemName = 'btnDraftView'
        end
        item
          Visible = True
          ItemName = 'btnPrintLayout'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrShow: TdxBar
      Caption = 'Show'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001C744558745469746C650052756C6572486F72697A6F6E74616C3B52
        756C65723B6BC8E036000001A249444154785EC593316B54411485BF997D2FE9
        923656B150B0D2C24EC114BA7FC17F939F6063A32058198B602116895965231A
        41240B112C641B8B40C040C0276F93F776E6DEEBE40D846D02C2165EE6CC9973
        39738681196766CC539E39CB013E0337DBBF9C2F4A81E0BE3FBAF3C1C19AA9A1
        09D641BB359658141103CBFDAC9526E8E7FEE3F1FD02B3B5EB0FD773A0196089
        6C56679802A0F531CDD19883EDEDBB4059483B0514A9C697DC30CF16CF88273F
        89BF0F995615B16D005C11DB904FCAD63C2EA4C34243AC0ED1EA086B6B9C4C71
        BE87B4310748144C03EEDC2C116283266DCD1F7472D26D2234586C3A8FEB15F8
        1E6834724010E2F10FE4D73EA07C1C8CB8D7BF0D92838783031EF46F25678973
        9EAD3723FAFD9B8808003EC68835159F065F13D79828C5D20AC39D1145AFC4D4
        51AEDC6067EB1BBE5C0483852BD7303500E7352A120435C32DAF6289457C362C
        5F45134B041383A5D54EE3173A1F803F6D6577FFD526A7B5F165F32D752DECBD
        789DB4B0FBFCBC1F183EDB6092F8DD930DCE26C2FBA72F9904DB0382031681DE
        CCB376FFC00604A0F9EF9F69FE80BF8C441365A06782F60000000049454E44AE
        426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnHorizontalRuler'
        end
        item
          Visible = True
          ItemName = 'btnVerticalRuler'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrZoom: TdxBar
      Caption = 'Zoom'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000B744558745469746C65005A6F6F6D3BCF09FEBC0000035A49444154
        785E7D936B4C1C7514C57F33BBB0BBBC7641046A2AD0D242B616ABB605D41462
        7996F8819268254693A6311AF41BA6180214A4055A959AC6588DB18FB0049342
        237DA821585B405AB1A948080F53A3B5B42C9447175876766699BF5308899F3C
        C9B92737B9E7E4DE0F1721C40A01D3C79F77EC38F54D5FFBD9B6FEFB67DB6F8A
        33E7FA27BF6AE9B950FB514B26100C486BF3D547DB015869720BF759BE7475D7
        B67D37A88EFE392516BD7E616045476E4F0AD7F9FEC0E1A6F39FEEC8C87500B2
        E1E1FDDA16D660FAA2F9DAE1CEEE31A16ACBE287BE7F44F5C95FC581DAABA2CA
        D04BBD7F0BEF922A5ABFFD4594D7B95A011B2095967F0D80FCC9C94BDBA31CF6
        83BBD236D2E41AA4F3C63D0AD2E229CE4B25608DA2A3D7CDF1D62172B2B6E270
        D85F2B39F0E11EC0E4F3F901904342EC155B926383AEDE9A60CAE3A766FF76E2
        9F70101F63E3796734492949B83D1A3FDD9CE099D44482ADF652204851140064
        1D9196B83E8A1F6F8DB3775722F37EC1AC6F9939839884618064E77A6E0C4FB2
        31218E40403C07981545E5C25BE9C89AA6AFB35ACD3C58505892830C73803925
        C0BCA61B5C263C44223A3204AFAA116C09C6AF6A9180E1D3305BACC88AE29F5A
        F269C6908D2BB73D8CCDAA3C547566D4004B0822224CE8928AC36165EEA11763
        F579004D0BA0EB3AF2C282B767E48F09763A63989D79C0A8C7CFC8829F2509C2
        C34D58424CDC754FB32DE9318686FFC2E75B1C00960D1845204FBAC74F5DECFC
        8DF4CD51C44698718FDFC32C544243C1A72A0C8EDE415AD6D8141B46C7C51E3C
        3313CD802684BE1220019637DEFDECF453290925050569FC7EDF38C3ED61DAD8
        22CE6E2525CEC106870D97EB32E18B6344DEF9BEFE83CBC34781C573FB5FD065
        40FDB9ABB9B4EFFAC089A6136D3AD3D3BCEC5CC77BBB9DE427C7B078779C63C7
        CE10ED1DA2B67433D9D9CF561CC9771E04425F39DD27AFFD810C583372DECECB
        2EAAE8CA2D3EA4E4141F12D945556A6661D9B56D19FB4A2AB3363474D7BF2AC4
        40A3B85EBF5754BF94DC08D8FFFB4C1260066C4038605F2561800588284B7FB2
        BEABB25088DE32D1539927EAF2B71E917617D5201020745851C12A044820B1DA
        5FE9689081B0779E8EAB28CCDA549E9F9380CB35E6E5FFD0F2FA4E1A3213A87B
        319E9A8CF8B55323DE4C7EBCEE78EE16AD714F6ACBBF059CA12764F2DBD90000
        000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnZoomOut'
        end
        item
          Visible = True
          ItemName = 'btnZoomIn'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrNavigation: TdxBar
      Caption = 'Navigation'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000011744558745469746C6500476F546F466F6F7465723B2E2AF2700000
        01C849444154785E85933B6855411086BFA3624082622B0AB9C6CA422BED7CE4
        062456568285DE085662210A8A85DAC4C6424404410583365A6823161646C4CA
        324A9A086AD4C25A4173CE3D3B339EDD1D30D7CB210BFF998161FEF9E6C01466
        C6FFAF280A6E3F7965AA8AAA10A3844629174494ABA78F8E9AD9EF75F8BBFEFC
        CB9C41D7D49879BA08FDAFECDBB3937E1DA8FA8D9A584705E1FDC222C006E09F
        8119DD4B473A005455C5BD674BBC7DB780A8B82285A0A6A88302B801A8AF52D6
        8A58C1B1A9BD94FD3AE1AA084124AD71EBC547EE9E3FB405F8396010D1011EBE
        F98E99A118A68D00554B93A727C618DDFC2BD67FE06F88E0F8FEAD50904D148C
        9C9B1589527C508B4124F8E6D3B381A6664D26BD6E07116D31F0C28903DB5003
        234DF5759C42415723987DBD940D7C6F5F25E52727C7116D25B04C7070CCA747
        D1C8D7A088B1DDC00BCCCE7D46351B787443E84DEEC0565BA137D1C9CD060639
        4F317F445A0CFCEF7AB3B17C635326101021E51A8C73627C3883EDBE2383B7A0
        CACBB3F7E7A7625390C04583EDD333104A9065A8FF40882A997FF478F8166E9E
        DA7578C5358E5CB83C527E7A7025216B0015459D84A8815B185618BF566D04D6
        036B5668ADC7DA6F81BFA89E834DAEDE54500000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGotoHeader'
        end
        item
          Visible = True
          ItemName = 'btnGotoFooter'
        end
        item
          Visible = True
          ItemName = 'btnShowNext'
        end
        item
          Visible = True
          ItemName = 'btnShowPrevious'
        end
        item
          Visible = True
          ItemName = 'btnLinktoPrevious'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrOptions: TdxBar
      Caption = 'Options'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001E744558745469746C6500446966666572656E744669727374506167
        653B506167653B4166DE820000020D49444154785E65CF4F48556D10C7F1EFB9
        E7944251B4AAA8458150D1FF76DDE212D142215A0551AF104ACB70555A6164B8
        08058B245A484594B5296A57EF4A34D4C810EC0F41AB40B7416176EF3DDC6766
        F23907CE55CFC030ABF97D6622336369F53CFF02809AD1DBBA3FEC793A3D1204
        61494C5131547D2B71B53C79E7E2B113112BCBE066EBBE0028008D2252EA3CBD
        135143542108288411BD4FA68BC0AA2CA0EBF10C402200852B0FA7465894AB4E
        E979F615496536AE0F397BBC09110308A3A5727FFBC14C764E4A37FEDB9D93AF
        0E7DA01AC78848026501629AC81DF7DF2FCA8552C5299D8F66525994CD1B22DA
        9A772472CD09E2AC1E102C565D76A5BEF64339B9637022919D084E5C32812002
        12F9CCF091110A56FAA95DB4BD56D4CB666C5BBB8B8EE26D449454F6537DF8B2
        1742BFDC7DEA1A6A0E35417088397A5F0CE464BF2CA2CB2E08BCE097BF57C618
        EF5B43F1F23C98653FBB9A97D3C5BBC31F319802AAD90BEA534D989B68C0A9B1
        B5612FB39519342FF3B2FFDC01600EF853BF20F959D872B8CCA737058FA71768
        5DBEF560124DE55933FB05905D205E3087A9B1B050C63094242093FF1F3C9FC9
        A44576818A61383EBF8DF95BA930FAEA07DB9B0D1FDC7D6F0CB5E5722EC00B62
        8E3D2D11C5934DAC8B36F1BBB61A1FFC6EE8C20A391FE0E2726DFCFAF0C05155
        256DC30CE2F95A5ECE07108F5EFAD60234022110A40D405C97F3F50F32C28CD2
        9B0122C70000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnDifferentFirstPage'
        end
        item
          Visible = True
          ItemName = 'btnDifferentOddEvenPages'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrClose: TdxBar
      Caption = 'Close'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001D744558745469746C6500436C6F73653B457869743B426172733B52
        6962626F6E3B4603B9E8000002AD49444154785E85934B4C546714C77FF73232
        0C041DC2237644C368F109868D98A0290BDA60E2DE9526921856C3C2A08C2E1A
        A336A64DB48D81A8892D6E241A7CA20B1530261849DA4D47596818082F015118
        0698B973DFB7773EB1333BEE97FFCD3927DFF97DE77B1CE9E3AF17293FF3B30C
        48426B7D9939765A1290337AE1DC4B8F2CD73B0E802306C24CEB9BE7ACFA6206
        86650FECFCE55283079025DBAE2F3D5CB79A94B58E206692C5CF1606933DAF7F
        006451BA69986099A8C3C38C3C7846D791D3BCB97413351A151AFCADD38D8589
        DE7F412A3A426A388AC801D92300A689E36A2A1225129923D8D1C9FC9387FCDD
        D587244BC4037BDC581B91AB97716C93F2AA6D989A004802A0AF28382EF19F3B
        FD34F4F7515852C4E2AE20FFFED10140CDC9101B0ABD54B4FFCEAB1F7F62D3F9
        0AB4643203589E9C469F9926B8BF8AF947DD94B5849072246A5A43E040913F9F
        BC75394C3DEE2658BB9BD4F07BE2E3B35915A83AFAA719766CCDE7C3403F43C8
        6C6D6EC65FE8C391C0B660E8FA359203BD546EF7A34E4C60A49C2C8066602514
        B4D94F98F12596150DDB721043DC84CC4A3A168FA14FA75CA085A17D05885B30
        D280548AE8FB39947D8D048E3661D936DE5C99BC5C8FB0BF3BD684527B88D1D1
        18B6AAE22E9A5D8186954C105B50680C87503D3EF2BDEE9E6FFD0940F9F11380
        8FFA700BBD4FEEB2A94842D73D990A74DDC45C49B2A37A336FDB4E5122AB8C5F
        6FE7CBBDDB7C763571A39D328FCEBB702BDF6F2FC352750C4DCFBC0343750189
        243E3381131BE369DD018A4BD71328CE136730D7D3CDD3CEBFD8B2A518AF99C0
        4C030CFEDF82EBE802602C2CE22DC8676F7500633981E2DE0C1694FAFD6C2C29
        419D8FA12515B06C4C43461080822B6595CF7D927410475A3DF9ACA6B0859FDD
        50C2566C7BF0ECD258A3E846200FF066B5AAB4462B3B800628FF0122CC6063F4
        5F96130000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCloseHeaderandFooter'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrTable: TdxBar
      Caption = 'Table'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001C744558745469746C65005461626C6550726F706572746965733B54
        61626C653BE8BCC9780000028B49444154785E7D536D485351187EEEDDDD1659
        DB8A28CA4A42D13EA42242A1B2C2C04C8AE85F100446118A5056F4CB3FD1AF12
        2C0A414D34FB02354A08A33233675FA666E5B048932DC5A9B9DCD6C6E6EEEE79
        BBF7E4F426D803CF79795FCEF39EE73D9C23E495F58211815456E4A7620E083A
        8A872BB7151A4CC2210212244D5C9EB741D46D802E8A2F8B4F1CB0C6CDAB5714
        068D11398AB7811118B7C663CB9A54F08EC7AF7F6A2608BB1923288C6199D588
        B4641BA2C30EACF8D5861DFBF7829408143982483804DFC4042E74DF46D2C644
        480004A68AB3D2578111B0D02C62E52203BCFD5D10C65B9191BD1DD18007635D
        76CCB799110E0410F4FBB0DE1B85BDC7016E9D18E362CDC192380163BD1DC0D7
        46EC54C52FEA1E6072B807D6E44DF00C8E223A1984228760F501038343BC01BF
        C4BE1F3F6193C218ECB6C3D8FF18892909B8537205E96909B0B7F420E8EC842D
        79337C235EB806DCE8E813E1F705A1C178FE96833484C361BA5970905C4DA554
        7EE608B536DCA38ADC741AA92FA087E772A8A928932EEE5B4B978FE5504D6337
        018897A081682A10BFA8BAFB2D38595C055114A1280AEA6A2F615DD252740D99
        907BE3392C160BEEBE7603805F8A8DF0A87314AB179B907ABA1A82007C7085E0
        09C8589EB2070B76FD46DBAB0664145EC3977103BE3B3CE8FCE6450CA6B3D59F
        498F9A16D774A23AE0A335BE77922CCB1443EED57704C022C6ACEBC166723E86
        D96CC690972049DCB07EEAA9774084867637FC21195CABB2BAD905C69B69295F
        50F6CCC90F23028FB1176B3E55F991F4A86A76D26C943D1D203D8E96BC210056
        51E767B6BDFFD768E6D318F34BDB9F889294A9306E6DC6262330A8D4EA88D518
        D7464281B6DAA2AC6C21D6048061D6B7C5DC91430610FE03D322A31F5383B2DB
        0000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnViewGridlines'
        end
        item
          Visible = True
          ItemName = 'btnTableProperties'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrRowColumns: TdxBar
      Caption = 'Row & Columns'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000021744558745469746C6500496E736572745461626C65526F77734162
        6F76653B5461626C653BD57466D80000022049444154785E5D533D685351183D
        2F8D89A6198A436D53709120884A6A8A1471B0626C1174721207755074147454
        FC9B0511A90A22888BC40E2E8D8393A0586B8AD0254A4187D428A8D5AAFDB1EF
        5ECFB9DC9B9A7C70F27D5FEEF9CE3DF7BEF7A22BE5F75058C158971F8F4FC3C7
        49E20E81037B3773DDC0580B630812AF9FD80E78818848787410C9ADC7CA77B7
        1D1FB3CCA300D2C45A621D91F17DC2524C83D1A547B5674C435217BE7EF981E7
        537528D8627721876C57860E80989CE5A58517B7CE0CEEA3C0425202E40C5D38
        9C87A231B788AECE148022769E7A8257B70F39910F9F7F239FCBBAFADCFDB7BB
        00AC219C80945DC84175660EA5FE6E1223D7475124066AF55FD8D8DD09D9368E
        8F44387BC7F4D9CC8A481A023CC142640F206C14EA81D1A5F55CFB1E8E804D47
        AF916088984E6240B5C0DAC4EA995D6FF0B17C236C0E0AC8A57583CB8DD76041
        227BC2B066A3AC7ED5116C8B0040EB330F2F32FB252B1D5F1BF82197C5D564AB
        830785095C3DB2057F638BCA5403A5C206885B79338BFD3B7A5C3DCE7AB83F27
        3D9CBF57053018859B8CFEDB810839000EC65B0FEE34DB74A0C577F579D4080D
        3DAD7ED2D1E15C4CCEC2F1E562B2EE5F6327B0EA40E47C6F96CFBF4764E65E67
        DDC0A254644D4878B8D88791813E3A68BB03132E4C36FD8D1BD7EAA7E59D103D
        3868AAA44FDF7C5949A6D27BE2E6E303C16C4C4B1F44FEFCFC363176F9E0885E
        A4F015A68470A476B4FDAF5824E629B0F20FF7C68559C2C6F29B000000004945
        4E44AE426082}
      ItemLinks = <
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem7'
        end
        item
          Visible = True
          ItemName = 'btnInsertAbove'
        end
        item
          Visible = True
          ItemName = 'btnInsertBelow'
        end
        item
          Visible = True
          ItemName = 'btnInsertLeft'
        end
        item
          Visible = True
          ItemName = 'btnInsertRight'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrMerge: TdxBar
      Caption = 'Merge'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000017744558745469746C65004D657267653B4D6572676543
        656C6C733BDFCE3B44000001DA49444154785EA593BB6B554110C67F73EEFA00
        1F209884A0B7B0898D04F1018A924761E59FA0BD858DA5AD6027888D95451A51
        84205805629128D74A2410141441410DD104440493FBDAF9BCCC653985450A3F
        CEEC2CDFD9F39B6196634003B0889D457D0E01B2DBF71696CD1AD3145760A6C8
        452AAB0C701459E4DC7F998C6AFAC6B5D9308481C3CADB6F9C3A7114D5B578B3
        FA85D3934DCC0C0418DCB9FF7C2A650949F4FA8E048DCAD8DAEA9011E6A53A6C
        B7BB38808743AA2A9A470E61B7EE2E68EADC045FD77E0675F4F07E9EBEBB026E
        0106475420101E5ECD11C925CE9C6C32396899201BF3ABCED5CB97A8A5925019
        A360EED92249B9F459BF7517426CFCF90E52395F18186264DF389E21B9C3ABD7
        9F585BFF05C0D8C801FA2E24216510B88105BF7CAE0877276539E7CF1EA3D713
        32D8DDA878B202222008475E57874080844B2445B5A086290539F6A38336EBB6
        23D72B2267276577965B1FF8B1F91B09C6C70E925D3C985F248050AE13214C90
        0515E19124317361826EDF01480DC3FDF1C03B4EC8082DB5DE337B313C84C56D
        CD3D6A91DC1D17A4548103824E2F2351B72B687732EE56AE3006FDF1F30676FD
        E6C3A5B46BCF0CA83C11410809C928A4D82A3C7ADDF60B03F6026987BFD1F857
        02FA2689FFD15F654423D8B259E1820000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnMergeCells'
        end
        item
          Visible = True
          ItemName = 'btnSplitCells'
        end
        item
          Visible = True
          ItemName = 'btnSplitTable'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrCellSize: TdxBar
      Caption = 'Cell Size'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000021744558745469746C65005461626C654175746F466974436F6E7465
        6E74733B5461626C653BA79AF4F30000019049444154785E9D903D6B14611845
        CF3B3356E21F30A5FF606B9114F662933A858896BB7E90462C53185C10454550
        B08A8D60235AD9043F9A2062AD364921A8088A5992B947989D605842849CE6BC
        F7C2C3C3F31695BD2C8EC61A89192BA32437A343234FEE2E1566A89821095162
        466D1B92AC98A0613F9AF34B77D414633FE8D86425C19801BA1E9D4B7279E1C2
        321212D0F8F4C1B55281A006546DEA7A54D7CD66CCC064BD8D83BAAE369BA619
        892A534947A31229F4CDD6D6E44674DC6D8E03C9FA64D2CEA1C3FA485D54040A
        9D98FD44162E2EAB629C8BD9341C1737549E3DBC5E98A1610613125187E21565
        2841D9970254BD0B53FE6F1008B0531696DFBC92329F480C4948BBFB96B47DA7
        5D6FDFEFEC4CD65EDF3E7BBAA154F3674E9D4021884AC2D40A9DFF650523ABCF
        DF9F04EA4645E0DBAF6D1454C0CE7D464401ED334847D5007CDAF8CED71F7FFA
        ED10C54812DADE8944A6E721C894AB8F3F3ACBBD179F0FCCAAE76EBD133856A1
        1C8638751365756D839FBFB7D9CBFD975F0ECCDAA970E9D187439DB0387E2B70
        F42F7460E2F5A35BF3570000000049454E44AE426082}
      ItemLinks = <
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem8'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrAlignment: TdxBar
      Caption = 'Alignment'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000003D744558745469746C6500416C69676E4D6964646C6543656E746572
        3B416C69676E6D656E743B4D6964646C653B43656E7465723B4D6964646C6543
        656E7465723B8CE012DB0000016B49444154785EA593BF6A156110C57FBB592B
        5FC3978804BC62212A3E87758A40445218102C149F40B0B2BFDE3A5A24E902D6
        82EF10E58AF74FEE9CA36406F6835B0471E0F00DBB9C39BFDDD9EDDECDBEB3FF
        F44E0F74256E38AB27804D07F46FA7DF4EFA7E6742950C96908D948A102111CE
        7EBD589CBF79B6FB0060E72F85FFB50EDE5F18B83D34482CD6990A64B28D0DD1
        90C8E6C77C458400FA81A68CC1465066133232D81E1F096A005C13B8525D379F
        BC382B83905221313DBE4738E94202E886C42D6C67F2F4F82E56A2672A39C423
        99621CD0A9081E1F9DA2306E9323506D40A58F47133649404BC0A7977B586E92
        4BA6CED4CF5F2B22DC10D4343BCD8F0E3F23AB92934012B3D70F13DF10F2F63B
        0819DBCC5E4DC6E4DA848B40A2889A2D444BB08D5DE671A001B5049BDAE9E57C
        95A6A272ED3D0047196BDD45E001D07AB9FCF2FCC3D7FBF9BDA7B2F7F5A9E6BA
        8A70F97B7E0E5CD5DFC5AD5257E286DEC015B0E86CF33FF507E40EDD06B8303A
        0E0000000049454E44AE426082}
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignTopLeft'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignTopCenter'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignTopRight'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignCenterLeft'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignCenter'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignCenterRight'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignBottomLeft'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignBottomCenter'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'btnAlignBottomRight'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrTableStyles: TdxBar
      Caption = 'Table Styles'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000013744558745469746C65005461626C653B466F726D6174
        3BEEACCAE3000002B349444154785E85926F48956718C67FCFFBE784D88C73F4
        38CE6665C64116B83F6D945F1483881284091BA34F456BEB43CC0FD22008FCB0
        8D82DA87C6289B6EB2898233C336D8C436B5E9B4DA87ADD188A58343E599A566
        9D3F74F49CF77DEE69EFCB8164633FB8B878E0E6BAEE1B1E059880C17FA3C883
        F872651900EBDDD323C3CA306B119027124F5A10BC7745C001D18880E3E6463F
        38D2B013C801585AABDA37EBABF0C6E1D6D43C95D112BF58B83939C7C1BA4DF9
        3D4E9EB9540B98F9805CD64510E6D2391021762F492852849FC7ED99248EE322
        286CCBA0BC2C08602AA54C40D4DE0F07E5D5AA8DDCB99F4294E09DE23B1E2FAF
        D3084255E5733C7898A4B8FB78FBDA80FDC68DC189435636EBB0E58552C2EBD7
        8128AE5E8B515D5D8E1285208C5F89D158FF0AB669A0D0FC76EA2BC2E1E03B25
        353BB8F5FD4FADC6CA0988207E9DE37AD55E276857639906AE9BE37AEB092289
        694AEB7632D6F60503F1E96F557DF305D9BE2DFAE4D63C7881026CAD08B13562
        91BAD446E9749CE89ED719FDBC839E81E1DE1F5CE76D0EBDDF258F924B32B790
        91D9659DF9726CC597B5280B894519BDFAA7F4B475C8D8C72725D1D329FDBB76
        48A3615E0C4111601839C7F556C5438BA00C85650AB9A50CB15F4678E6F92815
        079A681FF895F61F2F5F18D1EEBE0548EF016D6532E9B1A663DD35080842D1DA
        0206872CF4EC4D8CEB9DD80B9354BD35C9479F8ED277C5EC4F611F5C249B1211
        5DA714008540100801C5C0B3FB5F2A6C38BF7FF3E3A9EFDE9389967239B73B24
        25154D5D66201C040CFFB7F21A8088E40598B51BD66CF8AC21FC777CE2A824A6
        BAE46C4D8134BF1898F5C38D55F3583C8DBD7BA3FD4974DB9648E26E9ABE96C3
        CC241DE2297D02488B886615AB03F4EFD399BEBF3AC76D839FCB965CFE985F92
        DE81B81E02B24A29FE2F20F775CC3D0F7C0318800B647D17FE857F00273C6EB6
        B34173A40000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemTableStyles'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem9'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrShapeStyles: TdxBar
      Caption = 'Shape Styles'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000030744558745469746C6500466C6F6174696E674F626A6563744F7574
        6C696E65436F6C6F723B466C6F6174696E674F626A6563743B7AD16B1E000002
        3D49444154785EA5D25D4853611C06F07767A9FBFEE86BF991F3E3B4746EB5AD
        D92E02CB357573B118052115215418C604C50826495999ADA2A422F2220AFA06
        FBD0928518D445D1A51883D020A48BAEBA29E8A2FAF79CD7B3718849171DF85D
        1C1E9EE77D0F1C46443933379B16854705022C0135A81E1E7232E5C0BFCA052F
        4E064E4DF6D7D3FD84EBB4F40EAA45077E7EEEE1995C2E9C381E189C7DB2937E
        FDFE483377B6D370DC7E46BA0D2F3AFCDBC8B1214A6B7C92568890E80D732817
        3DEBAF1FFA301AE7E51F73097A9574512AB44ACA347C402A296EA23C593376AC
        FE6CE6418C97BFCD74D0546F0D4DA53653B7D7720179212F8838314F59FBB8CF
        7FEEFDED282F7F7DD74E935D22A50736D161B7E922721D08BC50E509D3DF273F
        4AFACF4FDF68E1E52F2FDB28DD594963C98D74A0C6308CDC00C2BE9222C64BD5
        EB9A9403EADDB150C3EB549897E7C7E334D161A7D11E2FB58BBACBC88D20B4D9
        0AD9DE6279A0CA1D520E683C5BBB2F3DBD3E48DFE7DFD2F38376BAD759477BEC
        DA2BC84C20CCDD8DB01DCB0AD8FE72CDC240455D503960F4351F999D7E93A65B
        4347E944A348BB4A3557119841C88C045966A491C52C6AD625EA1706ECCE2DC4
        D53690748AB52C48265BE093CEEABC56663606B3DF1C35A999A4D528B008F4B9
        8D7C2067BCD7C3E45FD50C56D0CBEFAAB041602D7A813583349210756CC06B66
        D96B6B4127170C6092472CF2D052580E2B6025D8A0185D79204F0825500AABA1
        1C2AA012AA4104476E205F086BA1169CE00237AC072FF8C09F1DF82F7F003A7C
        7F2F9B1AF61E0000000049454E44AE426082}
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxRibbonColorGalleryItemShapeFill'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxRibbonColorGalleryItemShapeOutline'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrArrange: TdxBar
      Caption = 'Arrange'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000020744558745469746C65004272696E673B546F2046726F6E743B4672
        6F6E743B4F72646572020D7497000001E649444154785E7D913D6B944F14C57F
        77772D423E816813ACB5F005B4F20163912F112CAC04111B4B412B1B6BAB8865
        10414441FDFF4137A410226A61614014142D044121EEDBCCDC7B94DD671F7683
        E6C030CDCCB9BF736E8789ACB9E7254092F8973A80DDB8B5F1CC5A5649A23901
        EEA57BF5D2D93340EC65D02AEED595F3A79144CC4CBBFFE46D05EC33B3F2172A
        35063917B23BDBEB97E97F7D5353C001C4C6F593C3C6535014DDE56B5BCB8037
        1146A34CF160E7D32B4EAD5E00454DE2980245801C1474D76E5780CD4548A950
        4A10C5091FE13FDE230903844093D35EDC3F7E03B4E64A1C1B789053A03C405E
        EA3F02629A1ACF7D3C07BB096230E875EF3E78591DF240654894020814306364
        A31E6542D0363303D401F2DACDD51560F1E1C5C3DF63D4234A02A931514D60EA
        1325F87FF35DEFC5EB2FE3157724053034B3710F9EFAA8E47ABA9A0E24611178
        16C78F1C6473EB7305B43B34C2223B4A3D54128A6022D55B10D172A238BF0689
        51CA00366B8097C087039413128068F28B3199BB48C549A900B4660DA23FF4EE
        D33B1B154C8B83FA4280492C2C1DC3C36A8379827C6EFDC3CA74B54CB470EFD1
        D6B7134797F8B93302335AED36616D72D945302D931999597AFC7CBBFBDFE6C7
        2A2498C60A91D3A80B78873DD4ACB8A16AC8041420FD0621C0746CF11A9DD000
        00000049454E44AE426082}
      ItemLinks = <
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem10'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem11'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem12'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarSubItem13'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrPrint: TdxBar
      Caption = 'Print'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 967
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000C744558745469746C65005072696E743BC83632EA00000267494441
        54785E7D93CB6B135114C6BF99C434A60F05698B1B5716752582E84AAD2822B6
        88B8101F50B45441210BEBC285150591A250A326462AA218F20FB810178A482C
        AD165AD0958216051F68D1966426F3B82FCFDCCC0C71512F7C73EE3DDCEF77EE
        DC87A19442D40C6AB74A332F4CD3EC05745E7FA33982F1CAF0E0D65D34E69127
        897F9B49EA3D7374A376AA901041F2E5D9ED0012A4A5019C0B28092C5A5E58D9
        808244476B0B38135111C4005AB55E7D587D191712928C147579052308908272
        5C03D2E4610064A0C0648E8E5776DF2EBF7D33385CB0BF7C7E0F2915494288C0
        28C0833E69EEE33B1C3E35FA67ECE1CCF4C5DCD33D0012C9E0B33CD3513EB477
        6DD744E54930D4D5852008240CD55807A3B1EB3AB0EC1A8EF4ADDF547A2C4B00
        D66880E0AAAB7B550675CB42329186904A5754A119000125015C38561DAB3B33
        604C75462B303D5F5042229D4AE0E78FEF3878EC4274046150210C686F4BE8B9
        9EC7D00460700832347000378B252C2C542145E0931AA1A4D23BBC72453B4E0F
        1D87C3380138026F03E032D409D2B3A107C5FC95C6A1C8F0084D8A8D0C744602
        B6CB41459B003E47CDE1A8D7194E666FE07FED5EFE2C7C9102F385E60600C3F7
        04AA1643D576B0BFBF0FD981CD284CCDEBCD6402641038BFA31BC5F22C7E2FDA
        A03F81CF1A0013009BFFF5753277E719EE8E3F070FCFDD63244E002E29070DE3
        D4B976BD8C91CB0FF0E9C3E46B10C708EF762BA985D43632F6722E7B628BDE79
        4087F846161E4DE3EAB99DEB0054490EC94E2AA54490085FA3655BD6ABDCFDA9
        6DF1B6A9F8ADC2756B1300BE91C75EEA31F9B94BFDFB00A44866EC44FCB23D92
        DB6CF80BF54A6944F3A08E160000000049454E44AE426082}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPrint'
        end
        item
          Visible = True
          ItemName = 'btnPrintPreview'
        end
        item
          Visible = True
          ItemName = 'btnPageSetup'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnPaste: TdxBarLargeButton
      Action = dxRichEditControlPasteSelection
      Category = 1
      LargeImageIndex = 0
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnCut: TdxBarButton
      Action = dxRichEditControlCutSelection
      Category = 1
      LargeImageIndex = 1
    end
    object btnCopy: TdxBarButton
      Action = dxRichEditControlCopySelection
      Category = 1
      LargeImageIndex = 2
    end
    object btnSelectAll: TdxBarButton
      Action = dxRichEditControlSelectAll
      Category = 1
      LargeImageIndex = 3
    end
    object cxBarEditItemFont: TcxBarEditItem
      Action = dxRichEditControlChangeFontName
      Category = 2
      PropertiesClassName = 'TcxFontNameComboBoxProperties'
      Properties.FontPreview.Visible = False
      Properties.FontTypes = [cxftTTF]
    end
    object cxBarEditItemFontSize: TcxBarEditItem
      Action = dxRichEditControlChangeFontSize
      Category = 2
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        '8'
        '9'
        '10'
        '11'
        '12'
        '14'
        '16'
        '18'
        '20'
        '22'
        '24'
        '26'
        '28'
        '36'
        '48'
        '72')
    end
    object btnGrowFont: TdxBarButton
      Action = dxRichEditControlIncreaseFontSize
      Category = 2
      LargeImageIndex = 6
    end
    object btnShrinkFont: TdxBarButton
      Action = dxRichEditControlDecreaseFontSize
      Category = 2
      LargeImageIndex = 7
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Change Case'
      Category = 2
      Visible = ivAlways
      LargeImageIndex = 8
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnUPPERCASE'
        end
        item
          Visible = True
          ItemName = 'btnlowercase'
        end
        item
          Visible = True
          ItemName = 'btntOGGLEcASE'
        end>
    end
    object btnUPPERCASE: TdxBarLargeButton
      Action = dxRichEditControlTextUpperCase
      Category = 2
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnlowercase: TdxBarLargeButton
      Action = dxRichEditControlTextLowerCase
      Category = 2
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btntOGGLEcASE: TdxBarLargeButton
      Action = dxRichEditControlToggleTextCase
      Category = 2
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBold: TdxBarButton
      Action = dxRichEditControlToggleFontBold
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 9
    end
    object btnItalic: TdxBarButton
      Action = dxRichEditControlToggleFontItalic
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 10
    end
    object btnUnderline: TdxBarButton
      Action = dxRichEditControlToggleFontUnderline
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 11
    end
    object btnDoubleUnderline: TdxBarButton
      Action = dxRichEditControlToggleFontDoubleUnderline
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 12
    end
    object btnStrikethrough: TdxBarButton
      Action = dxRichEditControlToggleFontStrikeout
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 13
    end
    object btnDoubleStrikethrough: TdxBarButton
      Action = dxRichEditControlToggleFontDoubleStrikeout
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 14
    end
    object btnSubscript: TdxBarButton
      Action = dxRichEditControlToggleFontSubscript
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 15
    end
    object btnSuperscript: TdxBarButton
      Action = dxRichEditControlToggleFontSuperscript
      Category = 2
      ButtonStyle = bsChecked
      LargeImageIndex = 16
    end
    object dxRibbonColorGalleryItemTextHighlightColor: TdxRibbonColorGalleryItem
      Action = dxRichEditControlTextHighlight
      Category = 2
      LargeImageIndex = 17
    end
    object dxRibbonColorGalleryItemFontColor: TdxRibbonColorGalleryItem
      Action = dxRichEditControlChangeFontColor
      Category = 2
      LargeImageIndex = 18
    end
    object btnBullets: TdxBarButton
      Action = dxRichEditControlToggleBulletedList
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 19
    end
    object btnNumbering: TdxBarButton
      Action = dxRichEditControlToggleSimpleNumberingList
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 20
    end
    object btnMultilevellist: TdxBarButton
      Action = dxRichEditControlToggleMultiLevelList
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 21
    end
    object btnDecreaseIndent: TdxBarButton
      Action = dxRichEditControlDecrementIndent
      Category = 3
      LargeImageIndex = 22
    end
    object btnIncreaseIndent: TdxBarButton
      Action = dxRichEditControlIncrementIndent
      Category = 3
      LargeImageIndex = 23
    end
    object btnShowHide: TdxBarButton
      Action = dxRichEditControlToggleShowWhitespace
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 24
    end
    object btnAlignTextLeft: TdxBarButton
      Action = dxRichEditControlToggleParagraphAlignmentLeft
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 25
    end
    object btnCenter: TdxBarButton
      Action = dxRichEditControlToggleParagraphAlignmentCenter
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 26
    end
    object btnAlignTextRight: TdxBarButton
      Action = dxRichEditControlToggleParagraphAlignmentRight
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 27
    end
    object btnJustify: TdxBarButton
      Action = dxRichEditControlToggleParagraphAlignmentJustify
      Category = 3
      ButtonStyle = bsChecked
      LargeImageIndex = 28
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Line Spacing'
      Category = 3
      Visible = ivAlways
      LargeImageIndex = 29
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn'
        end
        item
          Visible = True
          ItemName = 'btn1'
        end
        item
          Visible = True
          ItemName = 'btn2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnParagraph'
        end>
    end
    object btn: TdxBarLargeButton
      Action = dxRichEditControlSetSingleParagraphSpacing
      Category = 3
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn1: TdxBarLargeButton
      Action = dxRichEditControlSetSesquialteralParagraphSpacing
      Category = 3
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn2: TdxBarLargeButton
      Action = dxRichEditControlSetDoubleParagraphSpacing
      Category = 3
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnParagraph: TdxBarLargeButton
      Action = dxRichEditControlShowParagraphForm
      Category = 3
      LargeImageIndex = 30
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxRibbonGalleryItemQuickStyles: TdxRibbonGalleryItem
      Action = dxRichEditControlQuickStylesGallery
      Category = 4
      LargeImageIndex = 31
      GalleryOptions.ColumnCount = 4
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrHeight
      GalleryInMenuOptions.ItemTextKind = itkNone
      ItemLinks = <>
      object dxRibbonGalleryItemQuickStylesGroup1: TdxRibbonGalleryGroup
      end
    end
    object btnFind: TdxBarButton
      Action = dxRichEditControlSearchFind
      Category = 5
      LargeImageIndex = 32
    end
    object btnReplace: TdxBarButton
      Action = dxRichEditControlSearchReplace
      Category = 5
      LargeImageIndex = 33
    end
    object btnUndo: TdxBarLargeButton
      Action = dxRichEditControlUndo
      Category = 5
      LargeImageIndex = 34
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnRedo: TdxBarLargeButton
      Action = dxRichEditControlRedo
      Category = 5
      LargeImageIndex = 35
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPage: TdxBarLargeButton
      Action = dxRichEditControlInsertPageBreak
      Category = 6
      LargeImageIndex = 36
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTable: TdxBarLargeButton
      Action = dxRichEditControlShowInsertTableForm
      Category = 7
      LargeImageIndex = 37
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInlinePicture: TdxBarLargeButton
      Action = dxRichEditControlInsertPicture
      Category = 8
      LargeImageIndex = 38
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPicture: TdxBarLargeButton
      Action = dxRichEditControlInsertFloatingObjectPicture
      Category = 8
      LargeImageIndex = 39
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBookmark: TdxBarLargeButton
      Action = dxRichEditControlShowBookmarkForm
      Category = 9
      LargeImageIndex = 40
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnHyperlink: TdxBarLargeButton
      Action = dxRichEditControlShowHyperlinkForm
      Category = 9
      LargeImageIndex = 41
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnHeader: TdxBarLargeButton
      Action = dxRichEditControlEditPageHeader
      Category = 10
      LargeImageIndex = 42
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnFooter: TdxBarLargeButton
      Action = dxRichEditControlEditPageFooter
      Category = 10
      LargeImageIndex = 43
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPageNumber: TdxBarLargeButton
      Action = dxRichEditControlInsertPageNumberField
      Category = 10
      LargeImageIndex = 44
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPageCount: TdxBarLargeButton
      Action = dxRichEditControlInsertPageCountField
      Category = 10
      LargeImageIndex = 45
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTextBox: TdxBarLargeButton
      Action = dxRichEditControlInsertTextBox
      Category = 11
      LargeImageIndex = 46
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSymbol: TdxBarLargeButton
      Action = dxRichEditControlShowSymbolForm
      Category = 12
      LargeImageIndex = 47
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxRibbonGalleryItemMargins: TdxRibbonGalleryItem
      Action = dxRichEditControlPageMarginsGallery
      Category = 13
      LargeImageIndex = 52
      GalleryOptions.ColumnCount = 1
      GalleryFilter.Categories = <>
      GalleryInRibbonOptions.Collapsed = True
      GalleryInRibbonOptions.MinColumnCount = 1
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      GalleryInMenuOptions.ItemTextKind = itkCaptionAndDescription
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCustomMargins'
        end>
      object dxRibbonGalleryItemMarginsGroup1: TdxRibbonGalleryGroup
        Options.Images = iml
        object dxRibbonGalleryItemMarginsGroup1Item1: TdxRibbonGalleryGroupItem
          Caption = 'Normal'
          Description = 'Top:'#9'0,79 in    Bottom:'#9'0,79 in'#13#10'Left:'#9'1,18 in    Right:'#9'0,59 in'
          ImageIndex = 48
          ActionIndex = 0
        end
        object dxRibbonGalleryItemMarginsGroup1Item2: TdxRibbonGalleryGroupItem
          Caption = 'Narrow'
          Description = 'Top:'#9'0,50 in    Bottom:'#9'0,50 in'#13#10'Left:'#9'0,50 in    Right:'#9'0,50 in'
          ImageIndex = 49
          ActionIndex = 1
        end
        object dxRibbonGalleryItemMarginsGroup1Item3: TdxRibbonGalleryGroupItem
          Caption = 'Moderate'
          Description = 'Top:'#9'1,00 in    Bottom:'#9'1,00 in'#13#10'Left:'#9'0,75 in    Right:'#9'0,75 in'
          ImageIndex = 50
          ActionIndex = 2
        end
        object dxRibbonGalleryItemMarginsGroup1Item4: TdxRibbonGalleryGroupItem
          Caption = 'Wide'
          Description = 'Top:'#9'1,00 in    Bottom:'#9'1,00 in'#13#10'Left:'#9'2,00 in    Right:'#9'2,00 in'
          ImageIndex = 51
          ActionIndex = 3
        end
      end
    end
    object btnCustomMargins: TdxBarLargeButton
      Action = dxRichEditControlShowPageMarginsSetupForm
      Category = 13
      LargeImageIndex = 53
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Orientation'
      Category = 13
      Visible = ivAlways
      LargeImageIndex = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPortrait'
        end
        item
          Visible = True
          ItemName = 'btnLandscape'
        end>
    end
    object btnPortrait: TdxBarLargeButton
      Action = dxRichEditControlSetPortraitPageOrientation
      Category = 13
      ButtonStyle = bsChecked
      LargeImageIndex = 55
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLandscape: TdxBarLargeButton
      Action = dxRichEditControlSetLandscapePageOrientation
      Category = 13
      ButtonStyle = bsChecked
      LargeImageIndex = 56
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxRibbonGalleryItemSize: TdxRibbonGalleryItem
      Action = dxRichEditControlPaperSizeGallery
      Category = 13
      LargeImageIndex = 67
      GalleryOptions.ColumnCount = 1
      GalleryOptions.LongDescriptionDefaultRowCount = 1
      GalleryFilter.Categories = <>
      GalleryInRibbonOptions.Collapsed = True
      GalleryInRibbonOptions.MinColumnCount = 1
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      GalleryInMenuOptions.ItemTextKind = itkCaptionAndDescription
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnMorePaperSizes'
        end>
      object dxRibbonGalleryItemSizeGroup1: TdxRibbonGalleryGroup
        Options.Images = iml
        object dxRibbonGalleryItemSizeGroup1Item1: TdxRibbonGalleryGroupItem
          Caption = 'Letter'
          Description = '216,00 mm x 279,00 mm'
          ImageIndex = 57
          ActionIndex = 1
        end
        object dxRibbonGalleryItemSizeGroup1Item2: TdxRibbonGalleryGroupItem
          Caption = 'Tabloid'
          Description = '279,00 mm x 432,00 mm'
          ImageIndex = 58
          ActionIndex = 3
        end
        object dxRibbonGalleryItemSizeGroup1Item3: TdxRibbonGalleryGroupItem
          Caption = 'Legal'
          Description = '216,00 mm x 356,00 mm'
          ImageIndex = 59
          ActionIndex = 5
        end
        object dxRibbonGalleryItemSizeGroup1Item4: TdxRibbonGalleryGroupItem
          Caption = 'Statement'
          Description = '140,00 mm x 216,00 mm'
          ImageIndex = 60
          ActionIndex = 6
        end
        object dxRibbonGalleryItemSizeGroup1Item5: TdxRibbonGalleryGroupItem
          Caption = 'Executive'
          Description = '184,00 mm x 267,00 mm'
          ImageIndex = 61
          ActionIndex = 7
        end
        object dxRibbonGalleryItemSizeGroup1Item6: TdxRibbonGalleryGroupItem
          Caption = 'A3'
          Description = '297,00 mm x 420,00 mm'
          ImageIndex = 62
          ActionIndex = 8
        end
        object dxRibbonGalleryItemSizeGroup1Item7: TdxRibbonGalleryGroupItem
          Caption = 'A4'
          Description = '210,00 mm x 297,00 mm'
          ImageIndex = 63
          ActionIndex = 9
        end
        object dxRibbonGalleryItemSizeGroup1Item8: TdxRibbonGalleryGroupItem
          Caption = 'A5'
          Description = '148,00 mm x 210,00 mm'
          ImageIndex = 64
          ActionIndex = 11
        end
        object dxRibbonGalleryItemSizeGroup1Item9: TdxRibbonGalleryGroupItem
          Caption = 'B4'
          Description = '250,00 mm x 354,00 mm'
          ImageIndex = 65
          ActionIndex = 12
        end
        object dxRibbonGalleryItemSizeGroup1Item10: TdxRibbonGalleryGroupItem
          Caption = 'B5'
          Description = '182,00 mm x 257,00 mm'
          ImageIndex = 66
          ActionIndex = 13
        end
      end
    end
    object btnMorePaperSizes: TdxBarLargeButton
      Action = dxRichEditControlShowPagePaperSetupForm
      Category = 13
      LargeImageIndex = 68
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Columns'
      Category = 13
      Visible = ivAlways
      LargeImageIndex = 69
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOne'
        end
        item
          Visible = True
          ItemName = 'btnTwo'
        end
        item
          Visible = True
          ItemName = 'btnThree'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnMoreColumns'
        end>
    end
    object btnOne: TdxBarLargeButton
      Action = dxRichEditControlSetSectionOneColumn
      Category = 13
      ButtonStyle = bsChecked
      LargeImageIndex = 70
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTwo: TdxBarLargeButton
      Action = dxRichEditControlSetSectionTwoColumns
      Category = 13
      ButtonStyle = bsChecked
      LargeImageIndex = 71
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnThree: TdxBarLargeButton
      Action = dxRichEditControlSetSectionThreeColumns
      Category = 13
      ButtonStyle = bsChecked
      LargeImageIndex = 72
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnMoreColumns: TdxBarLargeButton
      Action = dxRichEditControlShowColumnsSetupForm
      Category = 13
      LargeImageIndex = 73
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'Breaks'
      Category = 13
      Visible = ivAlways
      LargeImageIndex = 74
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPage'
        end
        item
          Visible = True
          ItemName = 'btnColumn'
        end
        item
          Visible = True
          ItemName = 'btnSectionNextPage'
        end
        item
          Visible = True
          ItemName = 'btnSectionEvenPage'
        end
        item
          Visible = True
          ItemName = 'btnSectionOddPage'
        end>
    end
    object btnColumn: TdxBarLargeButton
      Action = dxRichEditControlInsertColumnBreak
      Category = 13
      LargeImageIndex = 75
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSectionNextPage: TdxBarLargeButton
      Action = dxRichEditControlInsertSectionBreakNextPage
      Category = 13
      LargeImageIndex = 76
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSectionEvenPage: TdxBarLargeButton
      Action = dxRichEditControlInsertSectionBreakEvenPage
      Category = 13
      LargeImageIndex = 77
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSectionOddPage: TdxBarLargeButton
      Action = dxRichEditControlInsertSectionBreakOddPage
      Category = 13
      LargeImageIndex = 78
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = 'Line Numbers'
      Category = 13
      Visible = ivAlways
      LargeImageIndex = 79
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNone'
        end
        item
          Visible = True
          ItemName = 'btnContinuous'
        end
        item
          Visible = True
          ItemName = 'btnRestartEachPage'
        end
        item
          Visible = True
          ItemName = 'btnRestartEachSection'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnLineNumberingOptions'
        end>
    end
    object btnNone: TdxBarLargeButton
      Action = dxRichEditControlSetSectionLineNumberingNone
      Category = 13
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnContinuous: TdxBarLargeButton
      Action = dxRichEditControlSetSectionLineNumberingContinuous
      Category = 13
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnRestartEachPage: TdxBarLargeButton
      Action = dxRichEditControlSetSectionLineNumberingRestartNewPage
      Category = 13
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnRestartEachSection: TdxBarLargeButton
      Action = dxRichEditControlSetSectionLineNumberingRestartNewSection
      Category = 13
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLineNumberingOptions: TdxBarLargeButton
      Action = dxRichEditControlShowLineNumberingForm
      Category = 13
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxRibbonColorGalleryItemPageColor: TdxRibbonColorGalleryItem
      Action = dxRichEditControlChangePageColor
      Category = 14
      LargeImageIndex = 80
    end
    object btnTableofContents: TdxBarLargeButton
      Action = dxRichEditControlInsertTableOfContents
      Category = 15
      LargeImageIndex = 81
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnUpdateTable: TdxBarLargeButton
      Action = dxRichEditControlUpdateTableOfContents
      Category = 15
      LargeImageIndex = 82
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnAddText: TdxBarLargeButton
      Action = dxRichEditControlAddParagraphsToTableOfContentsPlaceholder
      Category = 15
      ButtonStyle = bsDropDown
      LargeImageIndex = 83
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDoNotShowinTableofContents: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphBodyTextLevel
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading1Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel1: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading2Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel2: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading3Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel3: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading4Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel4: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading5Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel5: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading6Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel6: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading7Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel7: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading8Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLevel8: TdxBarLargeButton
      Action = dxRichEditControlTableOfContentsSetParagraphHeading9Level
      Category = 15
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsertCaption: TdxBarLargeButton
      Action = dxRichEditControlInsertCaptionPlaceholder
      Category = 16
      ButtonStyle = bsDropDown
      LargeImageIndex = 84
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnFiguresCaption: TdxBarLargeButton
      Action = dxRichEditControlInsertFigureCaption
      Category = 16
      LargeImageIndex = 85
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTablesCaption: TdxBarLargeButton
      Action = dxRichEditControlInsertTableCaption
      Category = 16
      LargeImageIndex = 86
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnEquationsCaption: TdxBarLargeButton
      Action = dxRichEditControlInsertEquationCaption
      Category = 16
      LargeImageIndex = 87
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsertTableofFigures: TdxBarLargeButton
      Action = dxRichEditControlInsertTableOfFiguresPlaceholder
      Category = 16
      ButtonStyle = bsDropDown
      LargeImageIndex = 88
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTableofFigures: TdxBarLargeButton
      Action = dxRichEditControlInsertTableOfFigures
      Category = 16
      LargeImageIndex = 89
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTableofTables: TdxBarLargeButton
      Action = dxRichEditControlInsertTableOfTables
      Category = 16
      LargeImageIndex = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTableofEquations: TdxBarLargeButton
      Action = dxRichEditControlInsertTableOfEquations
      Category = 16
      LargeImageIndex = 91
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnUpdateTable1: TdxBarLargeButton
      Action = dxRichEditControlUpdateTableOfFigures
      Category = 16
      LargeImageIndex = 92
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsertMergeField: TdxBarLargeButton
      Action = dxRichEditControlShowInsertMergeFieldForm
      Category = 17
      LargeImageIndex = 93
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnShowAllFieldCodes: TdxBarLargeButton
      Action = dxRichEditControlShowAllFieldCodes
      Category = 17
      LargeImageIndex = 94
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnShowAllFieldResults: TdxBarLargeButton
      Action = dxRichEditControlShowAllFieldResults
      Category = 17
      LargeImageIndex = 95
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnViewMergedData: TdxBarLargeButton
      Action = dxRichEditControlToggleViewMergedData
      Category = 17
      LargeImageIndex = 96
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSpelling: TdxBarLargeButton
      Action = dxRichEditControlCheckSpelling
      Category = 18
      LargeImageIndex = 97
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnProtectDocument: TdxBarLargeButton
      Action = dxRichEditControlProtectDocument
      Category = 19
      LargeImageIndex = 98
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnUnprotectDocument: TdxBarLargeButton
      Action = dxRichEditControlUnprotectDocument
      Category = 19
      LargeImageIndex = 99
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnRangeEditingPermissions: TdxBarLargeButton
      Action = dxRichEditControlShowRangeEditingPermissions
      Category = 19
      LargeImageIndex = 100
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnEncryptwithPassword: TdxBarLargeButton
      Action = dxRichEditControlEncryptDocument
      Category = 19
      LargeImageIndex = 101
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSimpleView: TdxBarLargeButton
      Action = dxRichEditControlSwitchToSimpleView
      Category = 20
      ButtonStyle = bsChecked
      LargeImageIndex = 102
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDraftView: TdxBarLargeButton
      Action = dxRichEditControlSwitchToDraftView
      Category = 20
      ButtonStyle = bsChecked
      LargeImageIndex = 103
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPrintLayout: TdxBarLargeButton
      Action = dxRichEditControlSwitchToPrintLayoutView
      Category = 20
      ButtonStyle = bsChecked
      LargeImageIndex = 104
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnHorizontalRuler: TdxBarLargeButton
      Action = dxRichEditControlToggleShowHorizontalRuler
      Category = 21
      ButtonStyle = bsChecked
      LargeImageIndex = 105
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnVerticalRuler: TdxBarLargeButton
      Action = dxRichEditControlToggleShowVerticalRuler
      Category = 21
      ButtonStyle = bsChecked
      LargeImageIndex = 106
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnZoomOut: TdxBarLargeButton
      Action = dxRichEditControlZoomOut
      Category = 22
      LargeImageIndex = 107
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnZoomIn: TdxBarLargeButton
      Action = dxRichEditControlZoomIn
      Category = 22
      LargeImageIndex = 108
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnGotoHeader: TdxBarLargeButton
      Action = dxRichEditControlGoToPageHeader
      Category = 23
      LargeImageIndex = 109
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnGotoFooter: TdxBarLargeButton
      Action = dxRichEditControlGoToPageFooter
      Category = 23
      LargeImageIndex = 110
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnShowNext: TdxBarLargeButton
      Action = dxRichEditControlGoToNextPageHeaderFooter
      Category = 23
      LargeImageIndex = 111
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnShowPrevious: TdxBarLargeButton
      Action = dxRichEditControlGoToPreviousPageHeaderFooter
      Category = 23
      LargeImageIndex = 112
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLinktoPrevious: TdxBarLargeButton
      Action = dxRichEditControlToggleHeaderFooterLinkToPrevious
      Category = 23
      LargeImageIndex = 113
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDifferentFirstPage: TdxBarLargeButton
      Action = dxRichEditControlToggleDifferentFirstPage
      Category = 24
      LargeImageIndex = 114
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDifferentOddEvenPages: TdxBarLargeButton
      Action = dxRichEditControlToggleDifferentOddAndEvenPages
      Category = 24
      LargeImageIndex = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnCloseHeaderandFooter: TdxBarLargeButton
      Action = dxRichEditControlClosePageHeaderFooter
      Category = 25
      LargeImageIndex = 116
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnViewGridlines: TdxBarLargeButton
      Action = dxRichEditControlToggleShowTableGridLines
      Category = 26
      ButtonStyle = bsChecked
      LargeImageIndex = 117
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTableProperties: TdxBarLargeButton
      Action = dxRichEditControlShowTablePropertiesForm
      Category = 26
      LargeImageIndex = 118
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = 'Delete'
      Category = 27
      Visible = ivAlways
      LargeImageIndex = 119
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnDeleteCells'
        end
        item
          Visible = True
          ItemName = 'btnDeleteColumns'
        end
        item
          Visible = True
          ItemName = 'btnDeleteRows'
        end
        item
          Visible = True
          ItemName = 'btnDeleteTable'
        end>
    end
    object btnDeleteCells: TdxBarLargeButton
      Action = dxRichEditControlShowDeleteTableCellsForm
      Category = 27
      LargeImageIndex = 120
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDeleteColumns: TdxBarLargeButton
      Action = dxRichEditControlDeleteTableColumns
      Category = 27
      LargeImageIndex = 121
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDeleteRows: TdxBarLargeButton
      Action = dxRichEditControlDeleteTableRows
      Category = 27
      LargeImageIndex = 122
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDeleteTable: TdxBarLargeButton
      Action = dxRichEditControlDeleteTable
      Category = 27
      LargeImageIndex = 123
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsertAbove: TdxBarLargeButton
      Action = dxRichEditControlInsertTableRowAbove
      Category = 27
      LargeImageIndex = 124
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsertBelow: TdxBarLargeButton
      Action = dxRichEditControlInsertTableRowBelow
      Category = 27
      LargeImageIndex = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsertLeft: TdxBarLargeButton
      Action = dxRichEditControlInsertTableColumnToTheLeft
      Category = 27
      LargeImageIndex = 126
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsertRight: TdxBarLargeButton
      Action = dxRichEditControlInsertTableColumnToTheRight
      Category = 27
      LargeImageIndex = 127
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnMergeCells: TdxBarLargeButton
      Action = dxRichEditControlMergeTableCells
      Category = 28
      LargeImageIndex = 128
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSplitCells: TdxBarLargeButton
      Action = dxRichEditControlShowSplitTableCellsForm
      Category = 28
      LargeImageIndex = 129
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSplitTable: TdxBarLargeButton
      Action = dxRichEditControlSplitTable
      Category = 28
      LargeImageIndex = 130
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = 'AutoFit'
      Category = 29
      Visible = ivAlways
      LargeImageIndex = 131
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAutoFitContents'
        end
        item
          Visible = True
          ItemName = 'btnAutoFitWindow'
        end
        item
          Visible = True
          ItemName = 'btnFixedColumnWidth'
        end>
    end
    object btnAutoFitContents: TdxBarLargeButton
      Action = dxRichEditControlToggleTableAutoFitContents
      Category = 29
      LargeImageIndex = 132
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnAutoFitWindow: TdxBarLargeButton
      Action = dxRichEditControlToggleTableAutoFitWindow
      Category = 29
      LargeImageIndex = 133
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnFixedColumnWidth: TdxBarLargeButton
      Action = dxRichEditControlToggleTableFixedColumnWidth
      Category = 29
      LargeImageIndex = 134
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnAlignTopLeft: TdxBarButton
      Action = dxRichEditControlToggleTableCellsTopLeftAlignment
      Category = 30
      LargeImageIndex = 135
    end
    object btnAlignTopCenter: TdxBarButton
      Action = dxRichEditControlToggleTableCellsTopCenterAlignment
      Category = 30
      LargeImageIndex = 136
    end
    object btnAlignTopRight: TdxBarButton
      Action = dxRichEditControlToggleTableCellsTopRightAlignment
      Category = 30
      LargeImageIndex = 137
    end
    object btnAlignCenterLeft: TdxBarButton
      Action = dxRichEditControlToggleTableCellsMiddleLeftAlignment
      Category = 30
      LargeImageIndex = 138
    end
    object btnAlignCenter: TdxBarButton
      Action = dxRichEditControlToggleTableCellsMiddleCenterAlignment
      Category = 30
      LargeImageIndex = 139
    end
    object btnAlignCenterRight: TdxBarButton
      Action = dxRichEditControlToggleTableCellsMiddleRightAlignment
      Category = 30
      LargeImageIndex = 140
    end
    object btnAlignBottomLeft: TdxBarButton
      Action = dxRichEditControlToggleTableCellsBottomLeftAlignment
      Category = 30
      LargeImageIndex = 141
    end
    object btnAlignBottomCenter: TdxBarButton
      Action = dxRichEditControlToggleTableCellsBottomCenterAlignment
      Category = 30
      LargeImageIndex = 142
    end
    object btnAlignBottomRight: TdxBarButton
      Action = dxRichEditControlToggleTableCellsBottomRightAlignment
      Category = 30
      LargeImageIndex = 143
    end
    object dxRibbonGalleryItemTableStyles: TdxRibbonGalleryItem
      Action = dxRichEditControlTableStylesGallery
      Category = 31
      LargeImageIndex = 144
      GalleryOptions.ColumnCount = 7
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrHeight
      GalleryInMenuOptions.ItemTextKind = itkNone
      ItemLinks = <>
      object dxRibbonGalleryItemTableStylesGroup1: TdxRibbonGalleryGroup
      end
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = 'Borders'
      Category = 31
      Visible = ivAlways
      LargeImageIndex = 145
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBottomBorder'
        end
        item
          Visible = True
          ItemName = 'btnTopBorder'
        end
        item
          Visible = True
          ItemName = 'btnLeftBorder'
        end
        item
          Visible = True
          ItemName = 'btnRightBorder'
        end
        item
          Visible = True
          ItemName = 'btnNoBorder'
        end
        item
          Visible = True
          ItemName = 'btnAllBorders'
        end
        item
          Visible = True
          ItemName = 'btnOutsideBorders'
        end
        item
          Visible = True
          ItemName = 'btnInsideBorders'
        end
        item
          Visible = True
          ItemName = 'btnInsideHorizontalBorder'
        end
        item
          Visible = True
          ItemName = 'btnInsideVerticalBorder'
        end>
    end
    object btnBottomBorder: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsBottomBorder
      Category = 31
      LargeImageIndex = 146
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTopBorder: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsTopBorder
      Category = 31
      LargeImageIndex = 147
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnLeftBorder: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsLeftBorder
      Category = 31
      LargeImageIndex = 148
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnRightBorder: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsRightBorder
      Category = 31
      LargeImageIndex = 149
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnNoBorder: TdxBarLargeButton
      Action = dxRichEditControlResetTableCellsBorders
      Category = 31
      LargeImageIndex = 150
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnAllBorders: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsAllBorders
      Category = 31
      LargeImageIndex = 151
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnOutsideBorders: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsOutsideBorder
      Category = 31
      LargeImageIndex = 152
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsideBorders: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsInsideBorder
      Category = 31
      LargeImageIndex = 153
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsideHorizontalBorder: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsInsideHorizontalBorder
      Category = 31
      LargeImageIndex = 154
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInsideVerticalBorder: TdxBarLargeButton
      Action = dxRichEditControlToggleTableCellsInsideVerticalBorder
      Category = 31
      LargeImageIndex = 155
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxRibbonColorGalleryItemShapeFill: TdxRibbonColorGalleryItem
      Action = dxRichEditControlChangeFloatingObjectFillColor
      Category = 32
      LargeImageIndex = 156
    end
    object dxRibbonColorGalleryItemShapeOutline: TdxRibbonColorGalleryItem
      Action = dxRichEditControlChangeFloatingObjectOutlineColor
      Category = 32
      LargeImageIndex = 157
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = 'Wrap Text'
      Category = 33
      Visible = ivAlways
      LargeImageIndex = 158
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSquare'
        end
        item
          Visible = True
          ItemName = 'btnTight'
        end
        item
          Visible = True
          ItemName = 'btnThrough'
        end
        item
          Visible = True
          ItemName = 'btnTopandBottom'
        end
        item
          Visible = True
          ItemName = 'btnBehindText'
        end
        item
          Visible = True
          ItemName = 'btnInFrontofText'
        end>
    end
    object btnSquare: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectSquareTextWrapType
      Category = 33
      LargeImageIndex = 159
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTight: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectTightTextWrapType
      Category = 33
      LargeImageIndex = 160
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnThrough: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectThroughTextWrapType
      Category = 33
      LargeImageIndex = 161
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTopandBottom: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectTopAndBottomTextWrapType
      Category = 33
      LargeImageIndex = 162
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBehindText: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectBehindTextWrapType
      Category = 33
      LargeImageIndex = 163
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnInFrontofText: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectInFrontOfTextWrapType
      Category = 33
      LargeImageIndex = 164
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem11: TdxBarSubItem
      Caption = 'Position'
      Category = 33
      Visible = ivAlways
      LargeImageIndex = 165
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnTopLeft'
        end
        item
          Visible = True
          ItemName = 'btnTopCenter'
        end
        item
          Visible = True
          ItemName = 'btnTopRight'
        end
        item
          Visible = True
          ItemName = 'btnMiddleLeft'
        end
        item
          Visible = True
          ItemName = 'btnMiddleCenter'
        end
        item
          Visible = True
          ItemName = 'btnMiddleRight'
        end
        item
          Visible = True
          ItemName = 'btnBottomLeft'
        end
        item
          Visible = True
          ItemName = 'btnBottomCenter'
        end
        item
          Visible = True
          ItemName = 'btnBottomRight'
        end>
    end
    object btnTopLeft: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectTopLeftAlignment
      Category = 33
      LargeImageIndex = 166
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTopCenter: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectTopCenterAlignment
      Category = 33
      LargeImageIndex = 167
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnTopRight: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectTopRightAlignment
      Category = 33
      LargeImageIndex = 168
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnMiddleLeft: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectMiddleLeftAlignment
      Category = 33
      LargeImageIndex = 169
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnMiddleCenter: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectMiddleCenterAlignment
      Category = 33
      LargeImageIndex = 170
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnMiddleRight: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectMiddleRightAlignment
      Category = 33
      LargeImageIndex = 171
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBottomLeft: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectBottomLeftAlignment
      Category = 33
      LargeImageIndex = 172
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBottomCenter: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectBottomCenterAlignment
      Category = 33
      LargeImageIndex = 173
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBottomRight: TdxBarLargeButton
      Action = dxRichEditControlSetFloatingObjectBottomRightAlignment
      Category = 33
      LargeImageIndex = 174
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem12: TdxBarSubItem
      Caption = 'Bring To Front'
      Category = 33
      Visible = ivAlways
      LargeImageIndex = 175
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBringForward'
        end
        item
          Visible = True
          ItemName = 'btnBringtoFront'
        end
        item
          Visible = True
          ItemName = 'btnBringinFrontofText'
        end>
    end
    object btnBringForward: TdxBarLargeButton
      Action = dxRichEditControlFloatingObjectBringForward
      Category = 33
      LargeImageIndex = 176
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBringtoFront: TdxBarLargeButton
      Action = dxRichEditControlFloatingObjectBringToFront
      Category = 33
      LargeImageIndex = 177
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnBringinFrontofText: TdxBarLargeButton
      Action = dxRichEditControlFloatingObjectBringInFrontOfText
      Category = 33
      LargeImageIndex = 178
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem13: TdxBarSubItem
      Caption = 'Send To Back'
      Category = 33
      Visible = ivAlways
      LargeImageIndex = 179
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSendBackward'
        end
        item
          Visible = True
          ItemName = 'btnSendtoBack'
        end
        item
          Visible = True
          ItemName = 'btnSendBehindText'
        end>
    end
    object btnSendBackward: TdxBarLargeButton
      Action = dxRichEditControlFloatingObjectSendBackward
      Category = 33
      LargeImageIndex = 180
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSendtoBack: TdxBarLargeButton
      Action = dxRichEditControlFloatingObjectSendToBack
      Category = 33
      LargeImageIndex = 181
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnSendBehindText: TdxBarLargeButton
      Action = dxRichEditControlFloatingObjectSendBehindText
      Category = 33
      LargeImageIndex = 182
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPrint: TdxBarLargeButton
      Action = dxRichEditControlShowPrintForm
      Category = 34
      LargeImageIndex = 183
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPrintPreview: TdxBarLargeButton
      Action = dxRichEditControlShowPrintPreviewForm
      Category = 34
      LargeImageIndex = 184
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnPageSetup: TdxBarLargeButton
      Action = dxRichEditControlShowPageSetupForm
      Category = 34
      LargeImageIndex = 185
      SyncImageIndex = False
      ImageIndex = -1
    end
  end
  object iml: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 7209614
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C650050617374653B426172733B526962626F6E
          3B5374616E646172643B259B079D0000064449444154785E85976D885C6715C7
          7FE7DE3B33BB33BBD96EB2D98D6E52562A7EA968DB101B59535F4A5F44285811
          151B69B596C6375A44C837DB6F7EAD504441ADB5AE2DE24B1015B41429D85243
          A2821F5AD0C686E6656D926E32C9EECEDCE7397F93DD87B95CDCDD39309C7B9F
          E7E19EFFF99FFF39F78E4902C0CCA80C6363B32F3FFAC4DCF43BAE7F32CF8ADB
          DF3A7FFECFE7CEFEE7D02F7EFCD809406C6AD59E543F565037AB7E00E4402379
          806272C7AEA7EEB96BEF81EB774FF2DAEB8B773CF36C7F01B807080080032B40
          4C81BD0E82AD011CFFD9C18F8CB61ADF31635F67EE2E9E7A31E7CA6A814C283A
          125C775D8737CE5E246B1490151FF8E2B77E741609C919C99D073E9A539E7C9E
          3CE3F89595FEE1DBBFF1AB1712106D05C0001B6D160BBBF77F6EA6BD7D0FDD95
          16E77EFD020F7EE1E3CCECDC467488EEBC7D69854B977B84E0DC7FDF1D8C8D36
          E887C8A9D3E778FA2747B8D2B889DDFBEFA3152FDCB278FC773F05F6003E9C01
          C8CCB4163C5EFE2779D8CE9D37459EFCDE73ECDC3DC7ECEC14EDCE28EDF60879
          9EB3BCBCCAEB27CF7271E9126F9C38CD5B674E72E0C68CDEF97FB3AC65266FD8
          0BEE33409612D4D0122846E4115FF92F992E70EBCDB38C8DBCC98BAF1CE7E8BF
          8C2B65C6CA6A4188804A1A59C96811989D32E66F1D636AB2608C53E4A5C8BC44
          EE35510F2B01EE0E0A28044C7D9AE1356EBC618C8991494EBDB9C4CA6A9F3246
          A2048222379AAD51461B4EA7D9BDEA97E98C148C8DE698AD3FA702F01866368C
          01813BF2003819A2E54BCC4D47C6F392A50B5DDC851CCC846546061485513432
          1A79C14833A33091C909C199D931DB1C7FE7BBE3AE89C558145F51B71B74ECD8
          0FB43180149C1810C25C80939BB36BEE66B64DAFD25B2E114232CC1C0C4C0990
          19990118B198A2BD7B1F133BCEB7C71A53857B2FF47A16DA6DEFEFDDFB50B806
          A20EA02A011E03489000E08E9781DFFF639A334B2308A181B204020964800400
          0AC03C07BF367F3AAD1043F9973FFE66E1EEF1F15107C58D45A8C8358F1C7347
          38D1B5B6767AA9C5E1431F669855E0EADA7FFCBB7F9A37AC198256E171FB3F00
          1E85428962097224211C45E11EF0945D1984502D9A44DDE4882C796835735CC2
          206FB532DBA40B2228400C7500417870E402AA60AAC4036420100ED4F73DDDC8
          1D97E5319606B001038E7C5D03264702C9D1DA7A1C0414C2A016B0F2C9241CAF
          18023C08C0B61E44B10F31E072D28CC7A3882120799D01BC9621B58C537B0072
          12264F00D890013C3A7840310543E0426BEB5509C05102F2CC91BFE32E5CC245
          EA2488EE3CF8997D156BA43DC83665C083A358220F24FE913BB89047A2940257
          EABBF7EEF7A605AB389118384F059370694B06CC63445EA2C11CA8BA20461F64
          E70C9A9E9FFF769D0139B847E4223AB8C4A183FB2BD500DA82014B6D08B19F00
          008A20A128D6F501D41880CF7EE2FDE94A55C669173754090697B62C011E031E
          4A88011072C71DA4F5EC5DCEC004423CFDCB63443972924F6C487CFDFE0FD518
          88615809828397691E3828511B1DA58783AA2E70E3F39FBC054958AA8A5481AB
          DA1124E11EB616618C0EB18418911C530A1885475F070628090BC40F9FFB2B42
          C885BB522090C4235FBA0D5159D49039E021E2A13FE8021F7402283A3E48BDA2
          F5814FEF83942118C853C6D4B421817BD2C02625D07A09FA981578EC41AABDDC
          D6BC4721C011A464BEBFF032526205E1EE9034F0CD873F46550950F42D19F032
          C4C5F3A7CECC8C77B6514848914C8220ACD9AEDA5024BB26B403D56B19434A57
          80AA830888DA9C0107FA2716971FF5E75F7A2293766A201C70199DF76CC37DAE
          DE05F5D18BEA6F4764E9DE954AB9B90604948F3CFBEA11E00F40511D6CDAF6ED
          D3ADED3BFF3673E7A7E68F5693502988D53481A503896D32100947DC7A0E4460
          15E857C13118B3A9A977B5C627A6DBC2ABAE160803D5A950A67A5D3DA94610E5
          6426F2BCB1210315909ABDCF2626F6647953FD9401E3A30D808AF23A2B40FD13
          4D325C8EBB10C45ECF550320A9025237CC50A7F3D5D8F3CBCB65BFF7F2C38717
          3E883408AE74ED9EC0E0780D8C00903BA1EC1F15BA5C14E6F0ED0460A819DDEE
          43A1DDCEBBAFBEF2D2BD666507B28632654206D4C66BDD6386616E809752A35B
          E4F9DBDD6E28C194000CB76B9FD0573FA57BE3E3C585108A8BFDD6156BC79114
          68F8DFFAE5E6AA9ABD8E1A0D8BDDAE95579FE700FF035802C08A010C91F50000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C65004375743B426172733B526962626F6E3B53
          74616E646172643B9EE424DE000007E549444154785ECD5569505467167D4689
          5BC0C424B319C71A97188D32A06283CB18D4E0862B820AB8208A2C2D826C0A88
          4D03DDD2D0021284661751B0C1B02F238282A86C362A12356A2B101985882B13
          DB68CE7CDFAB7E5D5D3443D58C3F666ED5A9C7BB55E79D733FEE779A01F03FC5
          FF8781A4EC06269180565064197320A2944520FB2C610225254C4078310B7F8A
          4345CC7E0A7111B38F4521B34F54C8F811F8861568E01D4A1092CF901AD4076C
          690C2466B1E2835273AFE068C6450125044A88201566058B59416D513F4E34AC
          808008534156349FF1A20821106AC43FD823C815780A4E83FECDF6B40DC84ED6
          B3068E665E2E69B8D68198D4EA604A7ACFE3E5C407BB079D0A2E3BD78A9576A2
          52FAAE6320FE441D139F59C7488E964D3CFEFD95DEBAE63644C8CE0ADFC7847A
          D221FCC02C6169552B767925F47EB3D27B4ABF274026678E1EBFCC3A8E4A3E17
          50DDA0C4C5A6FB083B521A421DFF175353113DD7FD2742A8787AF63958580B0E
          D05EBF3B1047C48F1CAB659B365BBC471C4E3EAFEC7AF20A35F577111491174A
          27A1C4FF40FC43E77DC7434B2A6FA0F3510F2CED43957F9E686A4087E9D7C077
          C72E32D169B55C7FD081F0DC85A9F27ABCF9F51DCE5DFA11BE21F230CEFDC0E2
          ACC05027BF6361549C96D7C134CC5DE26EC1F1E72DF763740C44A7D632646AB6
          E91592471F4382A485F20B4D4AD64445CD4DB8076488E864546800F1614E3E69
          A2E2CA16D0AABCD002F335FEB9A43F9C9B7EEE526F1D0344BC9A912454B24DCF
          60D6C0A09D7BA2C68BE3CA9FDFEF7C0AD5AF6F5156D502272F999833D1477C08
          1571F44A11179F65C5D1DDF30A1B764A9F4F9BBDFE2B6E7AB3255E0C6FB1878E
          01225EC588E22AD826B9AF2CA863BE7FDADECCD3F5E8EC7E01D59BB7283AD38C
          CD2E31E1F498A9B096F8C8ED9E49878AD4E22F7B5588961563CE120F1FEDE9A9
          F82C73775D0362222E8C29679BEE41392C2861DC04C391FC808C56456B071E3E
          7ECE9AF8BEB401EBB74B247462F5641F3978248517555C07AD9E972ADCBCF310
          E6AB025A47E87F365A7B77669AF319E3F97C5D03C2E832E6A0B4986DEE26E2FC
          0372861F28674FC1DA2164812032FF5DDBA367E878F41CAF8989530597B0CC26
          504A08BFDBB23B3EA2502DDEF5EC35BA9EFE0227CFB877D3781BBFA526B5B284
          88BB31867377E91A0892D298CD679B6E44D82DE014E34AA05EB0A1B6CE51E939
          254D6827261E743EC1CB57FF444A66396C1CA58D9C78E7935E16792575305DEC
          9E4178067D6F8EE19C5DCC34DE0E5D03FEE27C92E5B96CD3D53F9B8867332EE4
          C9259AC9DF368C73F448E8BE71A71377DB1FE3C6ED36145528C8EDB8055A0F1E
          F5A2FDF14B28DB7BB0DCE660CF17E3795FD21B41B9DA06A699EE64A6CE76D435
          E01D729AF114B0474E84B318E7FD04FBB2B40346CF628DAF9B502A47CBED07C8
          2EB88C0B8D4AFC0640F9D30B283B5FE02E7906879F8491D936BA65FAFD85D714
          93EDCC5733B6EA1A18B8340133DA7C95CFD52329E5B840A25AD1D286F4531771
          F6E26DDC6A7F8A7AC55D9898EF6E2684DF130CD564FE0035A0012E56B98021F8
          C3DAAD227941F935FC46460F9616A0EE6A1B79E6E307650F1CDD63316DB62D0D
          913F12E87106B431B0015D513DF524FAF4A3560E92D8BCB26656FCEAED6E1C49
          AB829D731C8EA45622B7F012DC7CE3E1EA130743D32D0984F3A93AB0F4387059
          309001567C47F4D9892E890D0297E42BF52E49CDAAEDDF5D52D809F21A320B1A
          A152BD41FDCDC768BAD5A541CBAD7FC07ED761C4A69420A7B4117EA26C58BA1D
          6DD81C5ED66477A8E2B58DB0A8616D60AE70A153B42611FF9D810FEC0F154FDA
          115F279755DE47FDBD67E87AF516CD6D2F5074ED67945FEF466CFADFB16CA318
          4B6DC4B0582FC2E275A158B82698FEEF316B011F9EC24CA4D5B423B5A603676E
          74E3C79EB784D785D0AC2BB0D89B953BD34638955B4E8D01ED3CB78FAA0E8E3B
          730F55ADDDD82A398FAFED32B1415C8D826B4F9052D58E399B63E89219124C26
          F89A603A01FDE8048A6F1DA31589E7DA9154F5132C03CA317543222C03CB2123
          EFDEB25AF0B6C58771E1D4D7006D0CB51257369CF9A1079B24D598EE989138F6
          1BE75986DBD393578B6B71BCBE0BC68EE9D709EF4FEABD18A6C6876A8C5CEA7D
          529154FD108B7CCBF0D78DD2C4716676B38C3645262FF62B4774D97D186E8A6B
          E2AE687F06862F3950AAAAE9780323E71C8C99EF64427A9F8F99E7606AE49A87
          D8C65F30D93645C52D589F2D1F4CF90B7667A8C22A9EC2684B12C69A6E62F963
          675B9BCE704885A0FC0926AD89A6FC8FB98CE86B6004CF25A331AAFA11AC62AF
          83E79193327E91B399E99E9CB475E4DD36E50EBE581EA920C44FB80F18CE71A2
          5C0DDFD83EA6D136E12656865583E7244B193FDFDECCD449966629AAC1EAC8AB
          18B328543190816193D7878B5C9315702DF81936C94AAC3A7C1DD6C9F7609BD5
          8DF97B0BF189995F243D42EE4A71B9CEF1FFB23C4864233E8B0D494A58452BB0
          22E43CD6455D81B5EC1EE6F1E518CDF38AD0E6F75D42BDCF676F9B3E7E9D287F
          6140315624DC8357D973B89E50629E77214699FA158EF8D26A8656C673A5E17F
          6A6C377DDC0A41BE093F07CB22AEC23AA9034B0E35C3D8598E8F793E852327AD
          E5F83A4BA899E2A3296B8D0C4CDC2406663E8A5173FC55063CDF66FD197CE9F0
          89AB66D245EB2F50B4F9FA93571B19CC74938CE2792B4699ED277C9F667D6357
          E9F0092B75F8FD05D160ADF41B4DF0997AE94651737DC439EE7BF0078EE221DA
          31AAFBE3A2E1BE075FD780C6880E748BE3BE17FF5FAC57759B4588C1B9000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000025744558745469746C6500436F70793B426172733B526962626F6E3B
          5374616E646172643B436C6F6E656D0EDF5B0000057B49444154785E9D966FA8
          1CE515C67FE79DB97BD3264B3F09458A16ADD70F516323681383F562488A4844
          2828164429A4B548A129A237B635BDDA8622041411691114C42F1614D18A70EB
          9F264255B4C44AD5226D28422842B4DA9BBB3B33EF797ADD7D9997C1DD4DE859
          06CE0ECB9C679EF99D67D62431A9FAFD3EA9C2C38F1F5EC16C11093040743A81
          0432C60DF09F4F57EFD97FDBD5CB8003FACDC32B428E803B6FDD452A4A669701
          86D9E2F7F66C6152555543139DA6890CEBC8DA5AC3894F4E32A89A9FFFF2D053
          76F7BEEB968178C70F77F2E737FFAE95573F00E80A303326D5A64D9B005A97A2
          3B9241EB01B800406608C3255E7BFB43F6DE70292707CDCF967EFD7B3BB8FFBB
          CB40F3AD4B16F8C57DCF08382D07ACAA2A2BCB32B83B92882EA0F51A01160C13
          94211083036258D7005C76F15944F7BBF61D78C20E1DB8712462F9F63D0E689A
          00836C7D8CD1CC2C7CEDAB7DDC7D74C8F3F39740886006065618C2A8063500A1
          086CDFFA75BC8EFBABA547EDC183372F0335898B8902EE7FF4D531702E0C4388
          BFBEFF11EFAC1FD380BB60E10CB6AD0F9284476730AC0028831109ECB8EC1B34
          EE4BC37DBFE57787F67644949380FBF14DDBA6025747A7A923C3BA1901F7D1C7
          AB7CFAD9803FBDFEC1BAE567836038AC3183B23042308A425CB563018F71A96A
          1EE2B1077E7400501690CB94A86ADC9177818B0E123886CB685CBCFCDA3FF8E9
          F7AFE0D917DFE5C87A7FE1E633E96FEC71C7AF9EC6A1750CC48E4BCF65E1BC73
          96807B813881814CBC3B193840E99982A3221043C07086550DC0E2F6F35839F2
          3EAFFFE518D77D670B83AAA16A228AD04451C74861F0AFE39F0114D320A4134C
          09326B7B278440908F80738CE15A0540510476EE389F175EFA1B6F1CFD27576E
          5B40A14451B86B9413C140FE610BF94407DCD36C07ACE50CE100388C44984570
          B19681C308EC5EDCCC732B6FF3E29177D9B57801A15720416C4ACA021CCFDB06
          7C0142A5B8541A47EA25DAF2B47AC2260277EDEE8B78EA0F6FF1FCCA51AED9F5
          4D2C046CCE982B0C6FC802263A20B576A390AC1060092AB50ECECD177CA5BF81
          1FDCF904EEEA00B7FBCACDBC77EC2475DDD09B9FC7828DC2CADD670AC0DB6C05
          703C275F2BDCDD0985F1E50D3D6EBEFE72FE7B724055D5C446D48DD3C44869B6
          9E1FFF267A83D4A308612442640133B70029C715F99C003300A3578E1DE86F9C
          27A67CA8D38BA92C6C74CE5D48421AB3E351A780300A1011A0BB0DD9010C5C98
          416FAEC025A482D82BE84527363E12E02401CA37E25227F22740A80C9D916FDE
          8D56461B0F46BADE18C41012C0C65C3906CE951D90382503E61E532B945A7594
          90604CBDA53E090F165070CA22E01E9184B291C4F4653603CA778C921872657B
          5AF2B3684130C3424038D145FAE4DFCE0E22471938D48AB0E43DB8BA92D46D90
          A048C0C91D8FE041EDDB726610354D8E20243C8F41DEFD47286534BB090E4AC0
          29392025F1D22C063234DEBD2202B23043E468508E0A7021AC052E0D24CD47A7
          82501E11A0AEB769887598686F3DB94AE83E8E18D3E0165265A766E7408ED4EC
          8081BA562868428A3A109293CE865EE04BBD403957220CF7BC431319F0D6AB2E
          601946E50DF134388583E4A031FD620CDCF37F7C8763C7570956804135583B0C
          0C019FB905DEEE8C65D07CDC39B9A4D68EFC12039480DB77EB9EAD65597E1242
          A881080C80B524405F142047AD0386486001DE12E94040780634CBEAA45ED334
          278013EB22EA10828038E95FB1E5E798C112C2276C8208A0CEC06EE5F8C5DDEB
          75113550F57ABD7C89295B204521A0BF712ED32EBAA104F9BC947BD4119480F3
          CFABAA2A0D8743C1F42876A05E1BACBEF293BB9FFCB6484E5B0A204BC3D4DD12
          29F748C83217F5B00B1CC034014AC7F09143B7EC01E68102303A75DADF13325D
          E0A60BC82232A9B3069D7E65E0A6D4FF00EBFB1275126F380F0000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000017744558745469746C650053656C656374416C6C3B5365
          6C6563743B9D11A241000005A749444154785EC5977B6C544518C5CFEC526978
          53BB351AFFF20FC5B628F2AA51282D261424582B0A48A191A010438C46A26D69
          210584146A0C107C0530056A09AF0AF828512CA04428DB2255040201C4A2B0BB
          2D14FA60DBDDF93E776EEF642FBBDD0DB5219EECCD9D3B93DCEF3767BEB3DB0A
          66C6FFA95EB0282B3BD7C46128B9AE79D4482424C41B93960FDC2E3720201C0E
          738DCD1B036EB75B8D4482C3A19E19A2735E3D783C6ED4FEBC5D8401E8B2D7D4
          8B3908515DB5194AA3D373820CE69AF3601994468ECB360A0830C8BCD7FEBC0D
          4AC3C74C87527C00064C608EE2003301C43856552AA085523D1008D3D6286BE5
          616B13B2163031C12ADB9D0000E3DE8989C0C4911D7029FBEF2182CBE5011005
          8041A2F35CB7406BED173F319BF668E967D6FD000136ED63DD8C6643E6BEF99C
          80A9DFAB778BA82970C43B102A2216ACCBB0F5A8D81CEBAA0A48804D0A0DD2AD
          18828947A4CED48DA30158C78BA009B40B4108736475020ADDFAAE7193E67243
          8347CF850374D6A2100748B0B5AAB5209B0EC0EA88BE1861E2684DA85FCC1C0A
          C00C010E01D040DA0986E5FC39381601C1D4D88CD7C06CCC453C02A390559259
          80F46C70978BDFCEB0E65C17E16831220394A2C7305424496FDEC2C928FAA8D2
          7062E9C2E76372E617E66DF9FC83558B8AF72EB7DB6CB90681E95AFD05A7D0AE
          398FD74069D6EB0528DBB8A2AB18B2A8FB6557780A4C7FAD3E2C5B38597F91C5
          D8847DF9AB7372ED2BF3328B001400A0D9F3163342D272F664A52D7B6E010714
          2986F723549274E0EF34AF70F5D7CA1DACCCCFECAB4C9A3C29BD4892B4EDD8FC
          61F17BCB7615D96CF6F72104DE9D3F5EE826FD32B06B6242440022E6A1295921
          3194825928004B0F08ACCC9B02007600B1CC8417A7A4C32FE5129252942C7979
          A9E9847C67DE4D68A5A4CFA49A9A5A0C7F6A9888FA63641549B06ECE20382377
          C51E10114A16BF348089C0048C1DF7B49A5BACA02BCAD71503687FD03150FEE3
          6E32C9C9A8218922C79010164361CDBDB6B3A4304B3BD087984120B4B4B5634C
          AA82E042E99762EF8E8F0D88871206C92BAE1BA4EDE7880026A15552B26E25CB
          D931162EDD0D2925D62C9B368865A70352129A5BBD7876EC68352E9024C537BB
          3E5310DE871F188C51A9D30006281280C7ED41A85617660A7421218476B01FB1
          04311B00CC0A4262F88827E1F57A1729272AF76C30201A1A5C10B0450660B038
          53FB2DBA2941C4AAB06A4280183E29D174B3158F272529A87C4924BEDFB7A9F8
          D2E9C3BD01F89303F35D02C4C5E91876174082C870C0B0B7A5B90DEDB7DBE185
          40E2D064F8FD324FFA7DFCE3775B560368DBB773BDDF8C1487A6801F1B3651C7
          F06E240C00C90680DFE7474BAB17AD6D5EC0FC616BBAD586A427922189F29908
          55FBCB4A00B42A27BA4C0198BBEF80613FE1E6AD16DCBEED834D0004C0113740
          6F05A3468F0493CC9792F8F00FE5AB94130064580A06DFFD31087D2749E8E8F0
          A12D1043BBDD86D8183B7A05AEB56B3E0DCC77003A472CD03BB6EFA2B489B3DB
          0FEDDF5ADC05000CDB52D266A8111A1B1B71E1D401A3D0C8D457CC14B2F17924
          310D174F1FBACF002082DF4F10361BC8E7C3B69D153C73D60C3164C8A3385475
          60D5F123FB369A3BF69B97170085A5A0B1A121F85B6FD6D2BA1E58D3131C5C13
          1AC080E8F0A26247C5D5068FE7E4DFF597272507CEBEC6593B15C07A00CD003A
          0090E5C27FFDD74CFFA1110360F08417DEB85690FF16D6ACDD70A5B6FA60766C
          9F7E7129CF8CFF6ACE9C6C949696A3EE44F5F4BA9A0395A60B04CBF66CE8B988
          89B06EFDA6FABA1347A6FE75E9D4E9737F1C735EFEF3F2C9EB8D8D484C4A44FF
          01F1390A56A72B2D23477BDB630052B64AE9BFF05BEDD1CC8BE77E3D0BA045C5
          ACB5B9A9ECE83127FA0FEC0F7BAF98746BB499ADDF843D0768F7B8EA33CE9F3D
          7E15804F5B7CFE4CF5F63EFD062EA83EEA74B7B4DCF80440BBB65DD7EF690F40
          37A1E924EBE2E6736F7599E30EB3F3A506D4FA1744E0C90011C5A7EA00000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002D744558745469746C6500466F6E743B436F6C6F723B4368616E6765
          3B426172733B526962626F6E3B5374616E646172643B5180D882000009044944
          4154785E9556097014551AFE5E774FCF95C94588211960920C0942E40A978829
          0924C811DD08AC180B297475510BA9DD45612DA9955AA950AE78B085A2EBBD16
          96CAAEB06C818B88065070C583AC0408241173421226E74C4F1FEFEDCCEB6E93
          B592ADE24BDECCEBD7FFFCFFD7DF7F5413C6180AD7BD8DF837E2FF040063E6A2
          8C5F9FDE751F0140666FD8FDB028BB7680010635100E85F654BFF2C05D008C09
          AB77B218402903610C8C19B64F50EE8B8251868B7B1EC56048004C43705B6E68
          9301E20E6143101CF20A4912410402893910959C4B4617AF4D6D3CB2ABB3E6AD
          8769FEDD2F304601069D3B8BEF29FFE017768421080096C1C0D3F3AB810F72C3
          3D959904640E08E14F12FF939C0EB77754EE72007F018FA503149C34F7609876
          F62165189A00A8C9D2D6811B32CAD77F5E5D4B0008AE94CCE52082183F330523
          70C84E080E4F0580D70010A6B3F85D4ED05692808252EB8CD161143023F25C31
          AEB955030601004E4074C8CB05424C5ED67D4112203A5C378D59B03EF8E3E117
          CE5FF86003CB2EAF64264366A680CB61984774981450FE54D4921F5C3A0A869A
          371FE4C53771D5B6B120E24C5DD71087284A004C799D6E197272C6DD00B670AD
          A961969061162210DF53D37E58050CC3626CA50B062763417025A6971BAA2E6A
          6AE4474914CE128F6F21114C13499621CAAE95009E02A037EC7B827067C38090
          AD180CC14E01D329676A509D7F7352B6FCB25CAEAA0AFADBAF7C18E9EEFCD030
          74ABA81908E1B5903DBA74C32D00445C1B6C05A895869F7A07E7DFFD0D977FFC
          8ACD013061B6D61F46A4BBFDA3AEDA33D5AEA28AE70597E06256AB3ABC5E88CE
          C40A009F0230F81A1A6428027CA898DD627035E820F9DD23FCCB2835A086FB43
          ED5FBD7722DAD5AC8F9A75C727A2C3B184700119248703A2C3799BD73FF577FD
          4DDF76022007E795325EAC84808061D1918FC90745F3C67A24E97D01986150BC
          F17D77E8A1811AE02A00CCCCBFCD561224D72F34250A3D12FD24165C05C0D4DE
          AE7D0E97678928F2F8DC5EF6787D493945653102EF00A0E3B265060BC1D7FF49
          DEB9F1E6804F168FE74ECDCEF4DFBB067B56AD5B33C19764D600D5CDDC53A6F3
          0EA8DBB391E73E58F66880107186D2DB073DD2B5D79A4A46DB37FBF7E95145E1
          6A51CA1593DD1E48724285A52AA13AE581634B7875C68DD9A96EE7F1090B0A33
          FDAB5763EFDA8D98797D7A5CED952601A673E9A1E9A066AB71029EF4C08A78C1
          A9E13EA5EB42D5C7566E6957EDF13E2D123E6CE83C655C3D519220B8DD4549E3
          4AFD00C4BCB70F0800C82BD3660732123C559316CDCC4C5BB418471EAF44E168
          37BA7BC2A86F6BF9D24C81A603D678FD61FF663248FEDBB58802231C39D6D7F8
          759F2D3800AAF6846269F02D1524118481CF0D97274174A6E6AC04F02700ECA5
          29334667F8DC55936F9DE14F99BF009FFFF179E4A7013D9D617C79E6727D537F
          E41EAB0DCD414475031684EC85EB0380384DEDED8716E9FED856C56EB5B6537F
          3FA82B113B0DBC93248F07A2D35701C0F587BC82DC0C9FF7E89492427FCABC79
          F862EB0EE42403A1D60E7CFA5D53FDF7A1EEE2EDAD8D2D5611EAB105AE801548
          F48C0CDC25108048A2A1F7367D06C00940B209F635575343538E88BA7331ACA9
          44888058718E9B933F7F71418A5A3975DEE4AC94F9F370B2722772D3655CBED8
          80AA7357EA2FF4878B5FEBEA6C064025B308F9FC45E3A1AD03F2CBEEDB28004F
          728A28172EFDF775D316018C7092F6C81644D13CA37C84F27A18210BB83F517B
          697A718177C48278F01711F427A0B9BA06472E74D49DED0F97BCDBD7CD833F9E
          92CE4C05A8C615B0208C297E289F106952A4BB074A28640660BCDA078615031C
          EE8418C16408B2C4837B955EDCD77E0C453707BD234A16E0C4B697306E6C122E
          9D3A8D23173BEBCE459492F723BD4D00E8B7374FA4EF9E6E81A5C0FFF6BE3B2D
          504E751DBD6D2D46E8DCC11B22ADA72F5B2D68DBD8635C0E2C7EF26577F2C832
          97A1604DFD0114CFCA44DAADA538117BF2BC9C54349CF81A871B3AEB6A14B574
          6F34DC64751233A22A34DD80A50045EBD167EC229344A77B991A51A0477ABF89
          056F0510B108309B84B5DCD1AB2DFF48F0FACA26FB1D985B528191592E9CDCB6
          0B79B929A83FFE153E6AE8A83B1D554B0EE96AB31DFCE4E4B14C5754C45BDC2A
          421516447FD1AF278048E3A3BD5761283D87016800F4C1046C5B0046B27AA976
          725A0E7BF0DE15A4A060349E5B72076ECFF2A0F6F8291C6808357EA945979E34
          B456CB07FB7C7C2633A21AE2D029B526A1C160B7986BC498725006B52F0CADAF
          E3B03D7C5227ADE1463F6B4747764EDEF3F7AE2A233363C1376DDB8731BF7F1A
          7BBB9C78AF45C3FB23A67C180B7ED54E5F55761AD3550D7A54E58B0E7EE1B4DA
          2C35FFCE17EAAEAF7891A5CF7A2422C80919D6B9D0B4298D07B702BB762CB96E
          D9BAE2F9274ACA7E459568946DACDCCBDE3A54C31E786A379BBBF87E162CDDCC
          9227AE3A0F200B80C78A41EC97607B09839D06166E5A410431078C42F27A3BA9
          DA2700700010FCDB3AE27B7EFDCCC2B495C160E29EF515EAECDDDB2793DF6EF9
          1B46E566E2934F8FA1FAE821B40963C0DC49F08C1C9397945F7E27002F0079A0
          7606F093D371CBB61F722667ED22440488006FDAA8ACAC5B1EAF4A9EB8F21100
          926DF7D89CE499FE40CACB37AD9E8B8CD23B7175DF1B98FACD93D8BD630BAA3F
          AF428723074C70711FEE94342406A66FF705971FB0951CEA7D80A3A7B5692663
          F6FB2805810123AA04A9AA076D9526A4397CA37CE21B737F394D16530A103AB6
          1797CEB420DCD70BB9C78FF37A32C8D58BA6398305065DE99D8E61205905A25F
          FEE2B9444BEEC1321956173000F284C2458F4D9CF6434E62C6F5B8FAC5415CAE
          6D43FDC510DAA392AE5E39766B779B5637D03136F85E0510E5FB9F810CAEEC21
          2462F66CC82FDD58947343E1FE3FDFDD2EB1A36FA2E9FC655C38D38EC61E86E6
          282A5F3FAB3C034019A25D99B50C7B1F036C483F634A8720284C5AFE6C796A46
          C6CEB2DB674B5BBEED40EA77FB31AAA61AADFD404863CFBE5DAB3ECD8795ADD6
          3018EA1EE16C860021C426208D5FBAB58C317983AE19415DD347EA8A523BB6E7
          B373BEAE933BFFD5AC9F04A0D883A6222072975217C55FBB077CDB71AE910087
          DD8AB2A5181924A9662D3A20F550189E8084FF0F3B986605B459B1C16BE0ECDA
          F15FB5BBE68A81A91F580000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500466F6E743B53697A653BFC1BADA5000007
          6B49444154785EC5577B6C14C7199F99DDDBBD3B1FB6317183C0954DC223220F
          51B7204869EA92529550535E5652A21AA3563488464A68D588B4521429A14A4C
          9B0AF54525EC02094950521B5AC8039BBA8A22B7A8E5910A4A082A6A4B0C1827
          F63D7CBB77BB3393EFDB9DB93D1FF007F9A7237D373BDFEC37DFEBF77DB347C9
          CD8DCAF725B9C921E54411DAFCFD3DA57324CE225A1119D2C9DF7E872AE5ACCC
          08C139DFCE189B473EFD3861066AA50CF551AD38E29DDA192A5FF8C37D9B9969
          EDC03D504CF263E9D728A5F56D1BB67EB93224347485E81F9C272E65B0FAC39E
          4E6282A2685308A51C269CA30833C28C36D3047B292526F0DD6C7E7926E7ECDA
          DFB50D5854924F378E99A17E542C88E4A175014F48E072DCA4777D7BDB344A8D
          7B430F42EB63713BB170E3AFFE75F6951F6D0186BFA6E389C85E294B9110842A
          19021E3FDF7EE5EAC78F6C7AFCA78B7EF3C2D6C15BEBEB4E9B52F884827EA104
          851030052B72BA6B5390F778EDB4B5042C90328A65CCB2E027B10E56BB74D4A3
          F04691A744A02F1A381B1E797CDB22DCF9DE63CF2EEA7DE9670586BAB852CCC1
          182938101CC385463D3362D65AA63DC13D2180C98819B3BED8B0E4D199F8CEEB
          BB9FA3E8AF062E3A21359688D44EEDE97971FB80803340F900AE99E09C70EE13
          0154520CBC33BB3707E0BBF3E16D8D70FE02DFF7885FF488500AF05D2B112776
          EDD48741830144156EB562F50C24C2B4AE5CB7A55BA7488D6E26040FBDE240BE
          0823C179097C76F56756F91E379C4CE6BFC5FCF85BC2076345E891096930CCC4
          43DA809EBD9D9404295445ADD359016A3D2331E9A3720C3B1C0C331A2465147E
          6659AB7C374F9C91AB3D6E7AA447F8F8AE08BC6214D210B76734DCBFA5451941
          840A77E0B5AE280D7251C2686440A0180FE408161E44E1DCCB5B82F0CF5EFD93
          262AD9C2621E0C181B7E73F8BDBE3F7A85828B070B85052B9924865D8D6034C2
          F354CECB5321B421DA02111900CA43CF7D607A684854FBC929D3D6F8B05770F2
          A3C3FFD83F38F2CFB7D37EC1EDD7511052201089118BAFA89A3EAF1A8D3EF8F2
          0B5468EF5534CA0DC12164790A387A1DA68023494F87DF64B1C44ADF2D10EEE4
          FB8BE9A122F078213B7A80FBBE066230DB55C949D533BED48A32281B55829E75
          1528C52232C044E5A2AC1D5FE8DD1AE4FEF6E53F6882A8CE77B3A3C47372BD28
          86347CF2D001FBBEF61D9426E3AAF0A11D24010B294CC32B401E7A48D59E6E5E
          E57D5594839023E838B0C02BE995BC67C95B1ADBB034BDFCB89B3EFF9723E83D
          CA8E7DF06ECE779CBE200D0A078669020E92F7D5CC5ADA805838B47F079664C9
          734126A64056464097CA7F0E3F4575F8A995F8A6E7B8042AE09DF18BC77328A7
          4814B21F1F882553DF60C42C796755A50CBBF6362CC9E781B810926B119DF2E8
          41946340F781A8F61B973EDA44246B2EE47210FECC111D155D6AC3C77BDFF01D
          D7255C79C5C3341889200D16107BE3F55F52D8D49D5083B6B208084343050F49
          293212B7347D8B510AA18D719EBD882DD3064A2A4AE43E7C0FB2E31E4530E2A1
          D8BE19331007B36A66B7CE9FD01951B1880059F951624A2C3DE2930FFB9F2B85
          DFB4132B24AC1235B5C6D4E6E5C76EFDDC322514DD072CB89AA3368B698C4FAA
          26F9543DA6E1AF401EF0A2AEA852A1579101DC2F67B086964D73807D8F93CE10
          6774143528D0E0AC301C203F4512B5B5C4B0AC52A981E1D017522B99957A5214
          7385B77A778AAFADD888BB13DB9F109101223040946A1FD0BF0AFB7DF6F2453E
          F6FE91BB9DCBA7AE94A1866A4381ACC6654FEF4CD6D5B7D2B0E8C28F95544D5D
          AA69C903997307F703C77FFBE0EFC8575BBFAB637F6D04307F97DFFD850699C9
          ACE41ACF7510FDC741F925E039CA002D4515D95EE64A8FA8AE6B658649B49736
          A4C1B1AB1F84FD5EA0021027D1CD782D08A5E47A614C5FBC712EA5E61D856C96
          7027D3877904F291EAEEE9005AEF4FBEABDD53FCE2E8FB7D7D9EE314C2CB2944
          7C2C160714D7B6D87573A6EACE2834F07415908A56AC4BCC9EF2D95568A6379E
          25FEF8477DBAF9D4DDBD5EEA1B10E7DAB9EB24F29D917359CFCD0E0ACE153855
          4F9854675B93673FA8AA871DFDD32E8AFBFD87BADA2BAEC37636FCB75F336569
          DCB4526DA8C4F30A6EEE7FEF9C5161A7A1724E10B0F83C76661F557BD2CB8C1C
          C2AE28B8BA21816BA56A889998F2902ADB18103D7AB81B65362C79A0A305A3F1
          95651D2DB8D6CD25DEB8F48936CACCDB50672C51F511A0982961367A7A2FD561
          4E9F0D94532567093E7E45481E7D7E616B064C24EA1BE6D4DCB11A8D48A9E644
          39E77B5FEAEA1C44CBF775770EC2B487A295B35677FE9999F6026A180407F73C
          327EF5F2F9FCD50BDD63675EFD39E61B4856CF5A2B331FBCA6019B6CFAFA3303
          D4B26618A63D39C268F4555C74F264ECFCF1BF0F9DF8FDB1AAAAAA3BAFF3F97E
          C2C4293D34B4401F20A508BCE04567A6F0F8CC720159219EBE74A199AA0F0D29
          5556A422759EEFE6BE60DBB60B215F4C2AC6C09BBB0955E1B175AE141105C0A2
          2EA5D4EDAB118124F7EF5EFD0EBE9F50F22C92537374EB145DD7FDB165599FBF
          4E048E69854C51F9908A44691D8D1BC9D11B9CC1F5F3357F4E15DD60542AAE90
          BDB921AFFBEF1819FFCFF109A10D18A5E9DC5B890000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001B744558745469746C6500466F6E743B53697A653B496E6372656173
          653B5570CFB133C4000007EF49444154785EC5576B6C1CD5153E775EBBB36BAF
          1F312921C66C5207A74913DAD0A08856519A56A4040C98D8C110C53CFA704504
          165510110251AAA2D0367D38282A6E9BA4340A4DDA6230158F264B280405541E
          4A0CE4299A2A26716227F5AE77ED999DB98FCEB97347AC2D6FA4F64FAFF4F9CE
          9E7BCE3DC7E73BE78C860821E0FFB98CFFD6801032E1E7A463F13F05D0B961DB
          0461CF93F75C85FBDAFBBB0FF91E03CFF3A077DB06797655E75638D4F36DA29C
          6B2541F00062FE3D3DC1CE4070110A190310A822A44CC8B330D413BB7F303103
          94F9B0F5679D36E7FC21B4DDB1B9EBBBCD6B7EE8787E11A215395FB2FED975BA
          15DF8C1731CE607C64E42FFDBFF9DEED1F6FEB14F3EEDC22905ACE0510012004
          0D20A4538E3BE72A404501A37E0006D4F78031B67667EF9B4B8A45173ADA9677
          E40BB91EAFE8C0A4A569A6D566183A108D80214C281AB11B2E5FFEFDDA817D4F
          5F38FCCC3ADEB4A65B088E3EA9748CCF5CFE513FA02480E2B8031EA5F0FBEE75
          F5A707CF77ECDBFF61C3D0F0107C6D715347EFF6475FFE7AF3BD03A5BC2FE8D8
          781901722D10A2D22AC088997672C6E75B01E0B7207D51490A9741202BA15E24
          E4A2A4060AE305F03C99E6FBB6EFCA3439AEA36B84C3A6EE1D4D3FF9D1BAAEFE
          03BB1F04D8254858815ABCE6B256209A8E64864D44C0B462A099893B00602B0A
          0415822BDED1215240804B5A4494852880B1D12C3CF7CC63D7BEFED6C11B3F3C
          7AB22E3006C334E1E0E14FA6F5BEB8F7863367CEF401C0FEA8F074D36AD50881
          30C59264D00C0D7433FED5866F76359ECA741F3BF1E7F56256CB46114628420A
          643A58282AAD813DBD9B6CC7711ED8F95C66F658360F0C2870C6C18EDBF0D496
          EDB3DA5ABE75DFE0E0E0FBC8D6FCB54F5E0144BF86521F70E93A5E11D210B32D
          B0AA2F5D03008FCB5C7316D61EC33898D4178C87FAA519C08B0DC3C8FDFAA75D
          EFBAAE4B1863042D11966589643299CF64324599FED4F416E651DDF79C5386AE
          1D2189CA154403498561591074463B00FC38003DD9F7086958F958982410AA0E
          18804CC4C400B8699ADF0900A9540AA65AAB57AFD664FA2DABA5E8BA303E3CF4
          BC659B47F498BD4287300B84C85A9875F975EB970DECD994918966E85D654084
          8E8540280A264FB8791D5B80470AAA6D8EFDF1013C2473DB1E4D83D096F863E3
          E0E4865FCD1EFFB83FBEF48E5F69712D1EDE27C04C26418FA5B0185F0FC038F7
          1908F9A43A868701F190020D262DC6D51463C14E79B0F1E848B3A7D5AFE29C81
          373E3632FCEEEEB787FBFF96F38BEE6B8C51BC10218B5737633725EBBF8CA924
          A7F76E24C2A7927B2EF04E065CEAB3A90310E8D8F781A1738E8A349AF98666C4
          6FF1DD2250A7F85A317BDAC378BD7CB68F51AC6C35DD0258896465D5ECA5CD8A
          6282D5CFB90782E24454C1323AF5CB88531E2A494B804F7A1F92ADD7D8FC609A
          107DB19B1F01EA645F4055C4D90FFEDA77C5B23B376BF1441C69433BCB4E8061
          55200DBB02F81C9D09AED21F80A196989A022E6848814F81531FA2DE4F4C4FB7
          61AABDF1829B3DF1C65E640BD5B3C7DF2AF8CE7886D1883A0EBA618066DB4BAB
          E65C578F9D3A74A09B088E3460FA43AA78590A7C2A81693BF9E223A424FD37FB
          8E0B6CDCD95F1878BF80AA0ADC1B1DE963CA0683C0228E272AF458EDEC764583
          261D332603E4180CA56502E0619B70CA2291366B45571A405FE4E5C7C077727B
          4B5EC53A2A9C7DAFF715EA3AAE742EF9E5602412A0C72A91060B752FBCD74342
          EE7D59E0C045B922A4809D83CACA919EB8247DBB460088A1339AFFF4EF00100B
          9050B00BA7FB39F3DD7D9CD268D603213A9876C59CAAB9372F568112BC3BCA10
          E3658B50487A07F63CF159FA2DFB268EDEAA6B74EBEA1BFFF1B945D70308A2DE
          03089C507A28E39FBD6A6315956026EB90867702F8F24C700877983A00C17D10
          0CA2A5352CBFB7891063A1931B05776404A24BB81AD5EA8D84FF6D1060356896
          297F0B29B341B72A6FD1AC8A87B95728663FDAC1ABBED02E400E24522E034C5A
          47C567D7A55B30B5F9B367D8C8D15716388387CEA9168C74222AADF4CAC77B12
          35D39B01F9525758C9546D45FA1B2B478FF7FD090068EEC82E485DD98AA7E532
          C061F0CD4D5191197ACC5EE5392E5027FF41E07C10001C15407409518879B9A1
          E7E395B5CDC430143D0056650A8C58EA3600C0D9510CC0547D952B422F12E8F5
          4B3BE70131E616F33960EE6806790C4011B55FBA9BD62EBC8BD62CB8CB57726F
          E47826E3BB6E110B2D8269C641B7AB96C56A9B2E8D26E345E700672292EBF169
          0D2DC897571807BF703E130D9FDA85770BC1C24EC1BD7ADE1A817267F858DE77
          F26F238D68271D81002B551BB36AAEBC4D758F56F8E70B0478993930F4CE539A
          8A34AE5B156D7272061C144EED3FACD24E847A61E10E01B28777127526BCFCF9
          973855D35408B9C712010DF6B476D5B6660032F6AF97C8540110D5B3F1F48A0D
          6D44D36763951BC9E405EE153465AC8D7CF407821940648F3E4B4AEC2C410BE7
          E4202BA141334CB02FA96FAA6ABA1583A8403D65432607209DCC59F5F33DB1EA
          994F13A24B9564DD8C9933973DFC46F5FCF6FB231E738163215869E056FAFA27
          5E4DCCF86237D18DB0DF85CA4200BBBA0E52E9AB7F51D9D8FA724445D94FB3D1
          C14FAF415B90F61C08306045B7917BB47162C78849762717853274AE58111291
          055037FF958B7D1BF200F4DC815FA622AE144015A0A7BA405434DE2A907FB504
          9EFDFBE0EF6AA2D95F624726DDEFA976E4F2500831F9A3339A0193E9110A7C8A
          0F5152C68E94B98345CFE5BE8EB9C4D44B5C44C614CAAEC936FF01BE66EB1703
          A553870000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C6500466F6E743B53697A653B44656372656173
          653B446F776E528A1DBB000005D449444154785EED566B6C5445149EB97BF7EE
          DDBBBB2D85ED035B6929685BAC2D1591E20F402A500C4540C40089F27C68A2E0
          AB89FC3186C44742822262F921600021B13134268244A3800682202089624321
          0AA4C50265DBDDBDCF99F1CCEC6C8D2D6D965FFCE12467E77566CE37DF3967F6
          62C618BA9BA2A0BB2CF700DC03700F807ABB498C71267B719F9609CD401863FD
          01342C5A8F8A4B8A7B17C7ADDD8318A5A933C51C8371CAC399AD4BB074EC0355
          A463CAB5725913652CE5040B6704F6F1652CE6CEEF7EF9FFB7483B94076D83F1
          684A2906455C618C4198AAAA177C3EDFAAB12F6EA7679B96735BB5F6F57D6D0C
          A3222769A364D7B5863FF7361E847932E685ADB08DF462177D019EA1D6BDAFF6
          67404A801092FDD686ED1362712BC86F4F6023F13CE4583DD6679BD7770483C1
          0038B738D89A955B2601B422D50F47180C59DD816530FF1D28E0F69870C8A8BC
          3D9340E8C0493863EE3AD3719C0FA74FA9BE685949E4BA0E721D07DDBCDE8966
          4D7BEC523C1EDF52B5629B29A9579480B140C15838F0292AF2F9B599C36B17E5
          F2B5F3BB5EC1947888120E005A8F807A88413B2000DB31916118C7C6D7941DC8
          1F66DC741CA035DE8D86467C5D53278D3F909797F73321E206385254A161C5FF
          3450299D50A40674DD28285F20F322E59070E7146C447F70000EDC7AEAACD52C
          91487CBC70DE13AD663C463BFFB94A572D9DD76A9AE6E68AE7B7B0DF77BE246E
          5F52B7728A6BBA799E69B7314A10011654CD8FB04F5F2CC3AA5C686EC41C0425
          04310ED2E53935080013002413DDA8B0B0F072E1F0BC5D55158557268E2BBF5A
          525CB4BBB4B4F46F815E66BE2F109E6F033BB12B7F347AB6ED720630528005AD
          66F8E3CBC7F4B2E08273CF45028808853BF03BE038493070D0989AE9ACA3A3E3
          F337D6AD98CCCF3879F2E4CEF2859BD8F92FD68AD20BE5976AC0FA6CD736AFB6
          B5BC77B46A79D3113F53EAB002007403F923F94BC0EE4D5002C0882843962A61
          345812BA96854C33816CDB44D5D5D5897038FC2EE8FBAB3F3D1DF75C0F49F115
          D7ADA9774D3BC7B3AC668EDB4DDC6AE69522F240D390A2EACFFAC3B93A3FFBAF
          036F4318288FBDCC07323003ADE77EF8DF4BF8E0828D67D3C831B469FA157F68
          AE15EB416EE2C6B730F6DA7FD9BFFFFEC94B3721ACE860C759C81DFAF033F5D7
          8E357DC559A004481035484033798AA51097F25F51BF975AD68BE41B563E3902
          A4D613DBBAD5F9EB97C739805B6DC7E3F74D58780863DF6C9E075AD080923478
          327E0DEA32E222819F32F04F33FE3312F52BB297FC477FB472FA9310AA219E95
          6C717BAE11C90AB2629D2D3C0C945170EE87640C4D0B8FA82DE00CB71FD98845
          09CA6AC8180085B813F180D0B49D0AF4CF87200331891F61AC831ABC6D3FB1F7
          2762BB31EE80F29234C27E3D5AF15CBA24C55B400588CC4340853143970F6D10
          F4678FAA8D209F3A53D775A41657EE882CFA84AFCBF79E899B0BC660D6AF8710
          80E500B891D37962338D3EBA86472073008232467B932FFAD0CC063769EAA613
          037054FAE66D0A849E3584BF03A22F4A3218AECC1A555FD3DD76F09828498F1B
          DE01038478C28904E0C7AA31CFECEA42E6F58B4B6F9EDBF70D4F40692A1882C7
          293CF2A9774EAB9A9E2D580867239F1EE5C9780AD4BD71661BCBA95AC6324F42
          60A0FDF00722F6396553A398B2299E95B012574E7C0F7371A93DA0DDBC25763C
          067A10800BE6B4401001A8B9108A90641A77FDB61D670CA0E3E8462CD7B5AC92
          897380769D7AEE29BBEB6212A5B874250B442AB5BB3B0F8B3F21517218E9D9B9
          39E19133E6CB84F5DDE93721D6A3A30323EA1A1BFCC6D0D7B03F80B470B696F5
          40C3237C4D6A5A94E8D8C5658A668C10254FE197B310C942E182B2C6F0C85973
          78546EB30FA9830108E656443CA2EDF1BA6EC8AF323C5E0D151C825E48026069
          5B2598FF916BB2098ED98E52C6A9062356A868D93B60D89CDED3F7936CA08F52
          2C516BB2554099A4DE96F4A737ABD22EC0FB7D98A5D2DE927B19970C1810E2F5
          1E20453AA5B265122891368E18F717266CE49E4C4390362403AD6760D77F4F1F
          F917E3A63EEA3F17919C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001A744558745469746C65004368616E676554657874436173653B5465
          78743B9A7B093B0000058A49444154785EED576B6C1455143E77667667D96ED9
          DDCE963E80B6CBB65A5A1ED9AD208404C16A106C282D6D1101691A8A2D915730
          12418A148D4062C40A8A49130A8890F21448100B488306EC0F69C456A8405BA4
          BC0AA1D2D7BE668E732737CB24DBA45154FE30C997BBB3E73BE77EF73C6E7609
          22C2937C3878C2CF5301E46F72F07FCD00B3F30C1CC57F96819C8FCE83A22820
          CB14321C5FF702B5F113DF3ED1AEBEDB8281E0859FB64C1F0B00F2C8A27D1854
          39A8F2B529527179F7DC7F244060AB1668CCC878F619E03800195FFAF5188BD9
          681BE771C2C9B38DEEB4D95FB81AF794FE9E9BF51C02281A6FEFA17300A850B7
          C713404FAFBF12CA0FB72835672F65473B2C100C2A60B3464247879403001B81
          6E1F72C4C7EA0CEE9100D4566419289B91C4A9A92F308946F0FA15888A8AA49C
          7C5AB675339DDA054641A528808F2D806520B439195BB2D7258A82F397C63F8E
          DEBCD30111112218458327257F9B0B9848D5055083F22F0890510BCAEA403883
          39CFE70DC0DDA6F30B7FBBDC0A82C081431A0820980AA8DF87F9C90481FA287D
          4D27E90BFD670010D6E638353222E6F5FA7C07AE1EFFE081D7EB3BDDD3D905D1
          D15620849BC9FC0065605943FDC63C83A0C2C020E84699F429407ED484C45D54
          E5128D068FEC0F5CA0FB04FDBEEFEFB4FF0976AB054C034CEEC4AC8D2ECADB30
          3B856819400C6DEE2EDA3925A3E4407546E9A1BB9E92433E4FC9419FBBB8BA6E
          54E1CE5226848C5E500D61CFA4776A42413216562F9AB0F4183E9357914A4F90
          94B571B8BB781F2EDD71095F5C79029D79DBD6B09311677E65C86FD4FC1DD35E
          5E5583D9E567307D5ED5120088487FA36AED8CF5B5386DCD294C9FB3BD0C008C
          1A3FBC0794D0770A70999D9DDD179AF62F69A6B696632B9B3BBBBAEB7BBA7B21
          3656028E3316B19412D0A51F39C1131921C2956BB7CF34EC2AA4CA94869D859B
          9BAEB481E4180832E173437EE12590B520C9AFBE27F13C9F1BF47B6BB59431C8
          BEAE236D37EF83C56C024BA43969C894F231D4BF797F31499AF9A5368F0F6F5C
          AC6C6CBC56D67DB76931EB4C4221CB411814650159C6D16C4F127611FDF8C934
          428D2629F9A5287B04C4C55A9705E6EC5A0688DA21535CB19090E8008E23E070
          D8A1E39E9D36639D0A8552688CD69A0DF701E06315FCB0DC2DF99C607403E127
          4F1897A6DD338A2C870ECD44A0A01F1DCDC809990344636F43C3A54D8844416D
          E091345EBCCCC9322E961C5176C96183ABBC710600AC56116C3DF82661FE8233
          7B73016FB2BD1F1F2F255E6F6E29EFB975B1B84E34D5653C9F06B24E4018586D
          CC69857B1E3CFBFAF6C3006051615221B2353229FBB38A29AB4E60E1D67A1C31
          7F37C64D5E358935154F79C3723F5F3771F9517C65F5779838FDD3F5006055E1
          48CAABC44595BF6262AE562A1B15CA0483A09FDFD4D9DBF26207D96CADD75AEA
          E9C9540474B504D9DF55DFD5D9A35D4A515A1924AD0C8C63208601F387A70E85
          9AD33F43EB91A515B43C9A0D15208400B2710D6B42B60A0A08195DDD5EF03DBC
          55CBECA883D2D9F243ED9DF607C01302B40C9C609AAECB00870089269311788E
          8381C92F4A54546472A64310785098167D13EA5FF894BCAD058387C42D308902
          581D71E93113DEB2335B881B91307E52B4640503CF81288A3038614842FCD40D
          2B6CA36645D3E84AA0F7585BDB3D484E498218CF6B5543A76E5A11E39E75302E
          36CAEBED0D00CFF3A00A92A4B1C5128B4D081361489DF7955796154054B48E0D
          7A3BB2AE7FB3FC5B7A724636AA35EC456489410C5DC1819E7BD9B76BCA4EDA47
          E4C444BA322B3841CCA2360CFACFFA1FDED8420C66A7C12CBD8B40AC88726BB0
          BB7DEEED53E5E7686CC282F3BA5402DB34C0FA0075234B39065D6650D72B32F3
          37E87A4B0E1D807DC7F87EB62A443F82FAC07A8471C21F457FF1F4F543B69FD8
          0C61CE7D82E8D10FA7DFD84FFF9A3D71014F05FC05FCA560EA6C621BA9000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C6500426F6C643B426172733B526962626F6E3B
          5374616E64617264DFCD2ACA0000076749444154785EC5577B7013C719DF7B48
          3AD97AF825D9C6100C18074829A104C86342A3B129656270C769024CA169D2D0
          4E1B12D27A78662684C224664CFEE81432ED2493293464483243306368F38010
          1EC193D0623703136C4CC0069344E8614B3A9DA4DBDD7EBBBA3BD4985AFAAFAB
          5969EF76BFDDDFF7FA7D2B81528AFE9F4DFEEE842008A869F93AD4B9BF5DC823
          6BCEDF5683C69FFC8622929D25F0610F021B138A8E1F791D998ACBB7133EF4D6
          8E4EFCB7975C6C112124778A09FE2F6009587B9D0D24494A816C4F269339E9F1
          782E069A567330845206646C0B401330C6C28A5F3EFF80964A8F9EB780F06FFE
          6BB3497A79A95B63AF645122F553260C3F70EFDDF7CF9E356D652A953A313C3C
          BCE3D19F6F8C93AC027901F0565559114F2635391489B914450149D3D694DB5E
          4B69281E8B030082322951A684BA24D9012E24E844D7179E0F8E7F36E1CE4935
          A1CDEB9E92CBCA4AFCAF6CFFED9AE736EFCA20F2DF00C4DB29278AE2C557B6AF
          3DB0AB7DDDBF1E5D1AE84B269388F20FE1F218BEC2A19BA8EDC5A7FFF9DEBE9D
          27DF7C6DDBE996A687FA304E13B6A54DB62197CB8D2E5F0B963FBBAE6D6622A1
          CE80B6F4D4077F1528C17901A0258FB5FEDEE1703C450869BF7FFEF7437A4667
          C1C33B0CB81933E914AAAF9BA886C3E1C79D4EC78EC75A160E02D84BC9A40A20
          012826E01A1B0A8622EE37DF3E540DDB06A0234CF35B802F5AD4B29646A3D12E
          C56167E1C34DCDDD40291F534258C6D0DADADA0108B44E08B89DCD0FFFF09B22
          A723853100A659C08A528C3E3EDEE50365EE60F145889E1F0045183153C562B1
          140F34C201643543590BE830CE4D43AFD7FB3E00FAD657EE5171466796E27B08
          A2888686869C18674D4F302D0000BE957ED4885C420DF3E3ACF644B77C293CB8
          F0710E0264AE3A1D0E9DF0F584CBA4D21A521C366B31C8E6CF020CC2B9D18A09
          E1C8CD54C862C116279CFC708FB065CB16112C304DD352129317A8C0D7AAB111
          34B1C69F84C04E64F7CE14600142B9D61003FC0062FADDD40C3AF3736E6B6D6D
          5D0C39EFB97CE59A471245BE8796D4D0703482963435DE0070837C6B9C9707B8
          7606D3584167BAC478CF806064F85504A00138E0D903878E56A5755DB60932D2
          B4388A8682E8DE7933BF6D6E5A1802F94333E735012EBD0022E228490E20330B
          381BF029760844BE0069B80FE6AB0E1E3EE67FFBDDF727A701D448348C926A9C
          3EBC68C1F54DEB9FBE02E9F877A7D379FAAEB98B0B8B018692E45A80609ED75C
          738382DDA515E8E5F6D7A78A9234F5CBFEABDE5028AA3090BED2E2C4F47B7E10
          59F6D32537EAA6D4C6C1F7FBDBDADADE983E67116C8339F8FC41C835B6489F3F
          732B18CF261F9C3EDB53290AC07C7605C9924CEF9E3939C826264FAA550DCBC9
          00A06ECD9A3553B66EDDDA7BE7AC465A502DA084B06E553F36262611A16C8086
          82D7D1932B5BFA31A6E2C0B51B45E72F7E557AEE8B7E3F9339FBEFBECAD7F6BC
          87EA2655477EF5C432F7FC79B3E7C4E3F13697CBF551DDF702341F0023C7690E
          2FB0BC070002B70CEF9A1A47AB7ED6F2354C1F06DA9E178D0E57FEE92F6F4D3C
          73F6FC3859B6235BB18C068722A5BFDBF052C9EA271EE9FBC5AA659B82C1E080
          CFE7EB655B8E95865CDB0CC1B73800C63CF5082728634C58DDA75555553BBBBB
          BB57959595EEDFD4BAFAF2F4A977DCCCA4D3D9BA01EE71792B843FEEDE33F5F4
          99CF4BED76FB4A465C05C480CE4D0D542C5455731E808EAD3B00328808FCCB5F
          0402014632BB229148C5234B1B3C3D3DAF56088AD37021414A915778F5CF6F4C
          983F77F65C13C0D81630A2DE6CD46042FE6B74944344F5B31A383900E07766CF
          9A11E3CC4189C996487116A373DD3D2518E3E28E8E8E2206228F05AC74B14888
          130835DF718B58E4D4DB735430D8B077F7EEDD58B68918C0CA88AD6342D01389
          843432129300647E1798516F0132EA3BA77E230B30A6A3E4366CD8500E73A2A6
          6992CD5E9CBDFFF1B5E0521077B98AB1DBED2E200B3066C75875C1EAC84A4DCB
          BCB96DFCF8F1F75C1D1C52744C0489624B3E191F41E5E5DE34C40C696E6E4E16
          540BBEECFE5070BBB72A04D43623DF3A8F8F2D0002EB7BF7EE7502E5AE3871EA
          F31211898862C3F81843510BA28605F32300E01BB3C28F05801F0E03116E3B0D
          37BE0E4A5C7762109111178220F25A70E1C285FB4A4A4A8A20C59687C3914907
          3B8F8E87FCB4A87C643884045DC56B9FF9F53500D0C5F4CB7B2D87B2BA11FC38
          037A6DC7E18FFC50E9B216C8A90FC5EE0A74E41FC7CA172F0ABC3C303864EFFA
          EC9CF7E0E18F6BA2C3AAC2D29371410C0E576341FA872D1BFBEAEBEBC290A6FB
          461DF65D3FC26122446CE773EBB7CDB9D43FE0BE19893925C99E5B8A2DFBA553
          49CE19CCE43C6D01A88E3328A32590968C237F85477DF1858D971A1B1E8A80B5
          5EF0FBFD277D3577D1E0F5F363FE33E2939F7C72AA4C4D2461DE48254A723040
          E76FCDBB4196BEC78DAB54BD3E77A676C234B5B16141F8C73F6A88288AD2AFAA
          6A7B7575F5055FCD0C10CF5F8C2804133DFBE99133CCC718E35CD30BA3039698
          8CC86FC9D0AEC0300CEF2EEBBA7E0A2EABE79868051C6E30695E1798912D9A11
          8E0A6FB9114EAD3EBA8DE5024B18177AF868D9C2DB7F006F690130341E0B7700
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002D744558745469746C6500466F6E743B5374796C653B4974616C6963
          3B426172733B526962626F6E3B5374616E646172643B3D0F11FE000005314944
          4154785EC5565D6C1465143DDFEE76FBB3FDA102B5D296B6DBD256F929C600FA
          20D844E34F6224819437942778304612135E0C093151DE488C418D1105A3898D
          C4606223684234A05124620C02D2EEF607BAED9652A5DDEEECCC7CF758BFDD99
          362660993E78379BDD4CF6CE3DE7DC73BE594512FF6745709B524AE10EA5B0F0
          320C492E18805F4F6E7B09A4E4A709F1D5E76F35903CA6B55E8872864428141A
          DBF2CCAE1D77AD8029D15004A4C0C0719CA5C9C191D82BFB0F6F00149422488F
          64E13B016A0D473B282D51B9E31F1DFAE2CCC9630A38CABB062004E8DF38DF9F
          BE3159B4BCBA7C6AF2D6745928140D4379F2122244CECA429C9C5EBEB432BB6E
          4DEB4DFC4785EE0840C43087F914D3F0C886B5E7DE3EB4EFEC9B07F7FE64E76C
          0869005000DBB650551E9DFEF0DD033FBE7FF8C099BD2F3E7F12C0A94D8FED60
          A015901AA0028520044F6CDD73E1DBDE23BBC7C7C7DBC2E1D011428C4C2C78CD
          CA66D1FDDCE6917BAAAB2E2793C9973B3A3AA6376ED941502308007F30585002
          0A8F3EF5022B2A2A9A2E5E4A94D08014CFE6709C1CD6AD6EBBE5BAEEF19DBBF7
          4F6DDCBC1D141742060320A201704E6602674F1D55C03BF1BE816B3114AE8384
          169A9DB5B536CE388E73895A438C420A840403A02966FF202020D41C93F8C0E0
          680C409E1D05B66DA366D992997038ECF6F6F60E69D1203C7F040440AD0D3B16
          1C4EC207703D958EC10C1073DD756CAC68A99F0130D0DDDD2DEB1F7ED64F0785
          4101886168DA0B83FAFBFB2B492E4B8D4E940909956767F6DF545F9B01900060
          588BE959040023A347DB480AD4D6D6C66F4EFE15F9F3D65471241231CA28E623
          D8D2D290D15A0F00802B2E2084105044D01488192C502088F3678E2BA58EC5AF
          5C1D28A7886F4C11310A74B4B5FC03A03F8F57FCF591013D20DA851F35FA341A
          AFF60FC708423401108E7651521471EBEB6A73D3D3D389FB3B1FA79720D31734
          866E210180F82C48B60C0D8F95818030CFD2CE59B8AF766946293535BBA21BED
          9D5D00E9278412780586457E9710EF31DC7C2D3516F3CF09124E2E8BFABAC60C
          8064BE4D83BEFB0514060740DFC9403A9DAE21191B19B9514621A8CC3863C078
          73C30CC9C41C302918D0400F9802ADFD63F8F70BDFA8929292F8D0B554493667
          45C29122400A1EB02DB4B7C6332252005030A0379C8B882108FF280D85422D97
          AE2463E61A753E015AC3C9E5B0764D7BC675DD4453FB26D28BAF6F60047F1670
          1E0392F1FEE4704C2850DA086086572FA9B02A2B2BDCC46C9978FECBFDC16368
          6EE6DF48CD56F3E0702A46B220338CFCF1C69A1900A39D9D9DD986D68700A1DF
          4708C8C02674CD6C82E8E9E989906C181A1E8D5108510440D876162B1BEA3224
          9373C635AC177F0E88F6141074757535672D2B3A3E3E510A158210E69DB32DAC
          6A6D9A11917C04C5632CF0C5A32C2686C460DF39555454B4F6D7DF2EC71C57AB
          7018BE375C3B87073A5665B4D689F90A8084F742E0185263B8EFBC3A71E244B9
          526ADBCFBF5CAC22E7C50C80B82EE2CD8D562A95322B90F9AEA7808B8961DFC5
          EFB78AC8D3B66DAF9C9898ACFAF2E4772BBC7FBF1EB158653573B61DAAAFAF3F
          6859D604C9371A5BD70FB0105F054002C65089C8F6F73EE8D9F4F5E91FEE1D4B
          4F963A8E8E28E5CF0629881697AA5D7B5E7D30446BF5EBAFEDFBA335DE144A5F
          BFA296AD584590D06678D01490F8F8934FEBAE8F8C9582DED19B672F9833DA18
          50AC1DAB38120E735E84FDB90C0A201289F0F4A9CFCEB9AEABB4D6B7CDB352CA
          FC76D6A8CC66B3DA03EFCD0D6A4246A3D19D0094792FAC0400AA6BE2C47CE983
          79C06FE50201F86326D3092CB4FE066A0E0DDAE0BAF3C20000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500556E6465726C696E653B679977E0000006
          C449444154785EC5576B6C55C5169EBDCFAB3D85D2960A2D503CB41ED22254A8
          702FA4505EB16DA0F26A10505001BD17F4020D01F58F981262407F9094044342
          4021A088E2A3228225042B0A8DB93C6E8112E8054B4B4F397D1C5ACB79EC3D6B
          9C35673FDA43BBA3F187733A9D7DD6CCACF5CDB7D69AB58FC418237F67B3C70A
          244912C39FD0C162559863EC3A73648CF50D8052BA834FFE1317F4C50E008851
          9665048BE385A285FF7913979EFC62570500E4F28E7B1F3984CD66637CFD95E9
          7356ADEF8F01DC3876E9EA77F2238A6AEFEFA0080C5420B20DD46307DFEBAEFA
          FA03292AAFC89DFFC29BD36564516244C7CF28231454127CD84D4E57EE21E74E
          1DE00B3E12B3725F9C668F1ED9969234F0A12CC9C4E974F1EE244E878B387847
          1955143230C1111C9793D916BBD79B99DEEA763B821C015FEF107E088582C4ED
          B405C78DC96CFD2331706ECBE695AD00F0F89163A7877FF9ED8F4FC8369BC601
          23A1488814CD7CFACEBF579636704A1BB8F86A41F16AA61154FDFED60D4D8AA2
          8CF8F0F0F191274E5FF03CECEE2605F9B98D9BD6BDF47FBBDDDEC4F5D7EBB6FA
          64A0A874C3BBFCC42F03C0AE67664EBC4F810A2AF59850C361523A6F763300EC
          73B95C2FCE7A76CD76B40EBCCF98FBEADB5CB682ABD95B3C7B720BA52A892821
          B2FCB9B94D5C76243E3E7E396765CBA4698B99450C009935EF35D6DCDC5C959E
          9EBE9E01AE05C39F402949494E543A3A3A2AA716AD62080A80E20CFE61C3BDDF
          A5A5A5BD82BE671448DAD0D4B0CFE73B8A7379F9A58C52DA3F030C50914AB2B2
          B2BAF48063101D0119204C644046464600C100553135080245F093673CCFBC5E
          6F5B5417259446917359FB84FC450C33041825160C5034D80B101AC70FC15105
          4C4513AC90A3521C49AFD445198062A424E360F1914BFB070068803023E799E6
          96A87E10C662C182581E05AAF94A42A302604F40C812A15C66910514586F4040
          79B7A139FDBB714AAA224023D90918E04C83949AEB8151DD9D160C984A74EA0D
          064422D2180618D3E34367C1D88B06A9709319C08247B06080698BCCEF4040C6
          EF517AA91940121A10CA1810FC100126267E048360BA545040AC8350CB274963
          0465060340991154A0B940FC3719308C81C682E912CC18D462E50230B3000D01
          3033EA99A6446B9469A726628F9129D80CF0B40728AA07B515002AC23A26D265
          AD86EA8C30F3447A86E007F0A1B72EE8E5323D53C0E222528150A06610229510
          A53EEA7310BDA2A2C22EE6B4AE1B4350624ED02FE4BD2F39B1C68201CAF0AE93
          7AA60563402594E9E843E1B05C58583878F7BEAFEF0991CE0A44B3262727272E
          1C8EC818D0922C31236640BF47AC0118F368DA66B751CA985DAF0788CDE7F33B
          87A50FF1D45DAA6AF68E9D8136715628AFBF562D793C7B5383C1908C4CDAED12
          DF8E4A1127D553BB5F171894E206499282F16E970A541554A202D96627D76FD4
          BB79C59C68463BC5F435E84E494919DF78AFC5A5AA0A89773955D483F2865B35
          92600BC01A806A56AB4072524210801A978AC3E922E76B2E27CBB23CEBCC9933
          09A88C529C07D191233E37F3978BB549A04678E51C14E6B2DF7062F8A8094C3B
          A0D5554C8D28E5C89B72BC9ECE5BF58DC95CAB2824B26C2735FFAD7DACB5AD7D
          485E5EDEA6154B666F2B2F2FD7114B7EBF7F8EAAAA4F55FF7C2935140C9231D9
          933A39201F322A0C6B1963598CCC9B985D2E292E985679E287118C121BD3AE27
          45951C5BB7EFF66E2FDF08656565296BD7AE3DDCD5D5E5E7D497F0158B0E7D5A
          9956577733912A61B66CC97C1F3FC8FF509F5EACC0AA1A32EDA2C9CA99CA82C1
          E0C9519E8CE58B4A0AEE1CFAEC5496D31927E66C9C8DDA6BB7535FDFB8CDB178
          6161D2947F8C9F98989848AFD4D6257C75FCECD093DF9F4DEFEE0A90D205858D
          A3BD59BF0502816FB462A4974E0B003D2E0BFE56E3E727DBF3AFD5CBCA644962
          073EFE6A940AB2CD6177E02B36B973D73768C7CEFD83540AA2D6AB4A84284A98
          2891205BBAB8E4D7B736AFBBCBE93FE8F1785AB400D32F34A33DF2CB28337B0A
          B97DE33CE6ADDEE5A6A6A6B97171716B5AEEFB933E395A39F4D2E5AB890D77EF
          25B4B7075C20F6337C03A643862487264DC8ED5830AFC89F3BEEC92E4AE97EFE
          5A775833095A27838765B3D6A6EB7D0390780B85423B2391489EA22812409411
          3E4A3CB80897E128BA568AF57DA2DBED76C6C1301CF9E9F51F308CA72DCA2F0E
          1830A06C70DA68D6DA7C23D6052606345EBC70D534031AC3AEDFF3FA45C20C39
          98BC9ACF661353DD0F3AC84FD5952890191105A27F003874760648D783075A75
          334F6AEA36AB9F10F561D8DC2B04868E76DF4D620500387D17CE557D4E38133A
          CD317A99D4D705D65F4337701700EF355A1C5802206EB7FB0DDC6706E25F6F46
          10C6B4DF01A41010C6A5EB50AE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500556E6465726C696E653B679977E0000006
          B949444154785EC5577B6C145517BF333BDBEDC3B2B47E851679AC2D2B1F58A0
          801409C8F36120B680A210222F2528911020A4C63FC440084145CDD72F4A4240
          30840A11F52B7CE0230D0D91263C225A9097152948ED9676BBED3EBAAFB9F77A
          CEDC999DDD76B7C5BF9CE4E666E63CEEEFFCCE39F7DE9138E7E49F7C94EE0249
          92B4E96FF8E0DD5D1873723D3143E0C901504ADF05E1245448C60E634C9B6559
          46B0385F985BBEFE4D06AA35273EA904F9181868DB23088BC5C241FFCA94792B
          37A662000D8B97BDFACE9448545552058AC0A8CA884C54F5EBAA3D8133A7F649
          C2F6E3310B97574C4760928CEFBA3EE544A551D2E5F791DAD3FBC9853355A07F
          4493CAC938FDB773A83BC7FE4817B821696936186924CD6A2356181879341C21
          D9994AB07854A1BBBBADF3F1FCB68C0C25081841DF4AD047573040D2AD72F0C9
          51856D0F530375DB2AD6B4018DC38E7E55F358F5E9BAE1B2C5A273C049301422
          CFCE9AD0F8FA2B4BEE01A5F740706DEADC555C27E887F7776E6E8A46A3830F1E
          3939F4DB33971C81809F4C9B3CFA7EC5A635BF2B8AD204FE6F1B00923230F7F9
          0DBB20E2D500E0BFF3664E7C4019D5A8346A4205002F2C9CDD0CF24F6D36DBCA
          190BD6EE669C11CA2999366FF5DBF06D05B8D93F7FCEE4164A551209779115CB
          9E6B826FC73232325E0656B68D7B7A114F5D038C91190BD6F1E6E6E69A418306
          6DE40C75592C9F08E8D11C7BD4E3F19C9C3C7B05A853BD30396142076DBFCDCF
          CF5F8BB967949182FCBCB0CBE5FA026525A50BD12635039C3244418A8A8A7C46
          C1712666A60DA6D5C19021433A18A5B880F69DC240DBA79E79893B9D4EB70846
          C8F1816FED63269571640A474A0604E59C988B3331639211804A63ADC88CEF8C
          8919910A514C4E991A6B4946A3A0222157A9013004D0ADF9381729E0448089D7
          4501D784080C6751CBB82867824D535FB085207BA90154E0310391638B0E0545
          710C61740C01A0D864CA0488FD6FEA53C6049E5E19A034C1093A140CE86F9426
          EA32A2B3A3DB99E943B01844BC3E4A50D60B0394F6284A26A381701E57C192D8
          72F51411182C2145E29D9920B84853EF1B11563923F15130348C3140298F2B2A
          8616467788E8E2D39708186C29AAF4CE808A2DC212F368464062515656562A7B
          0F9E42647AF44407CE34991E8C094080EA1B00A7E889C62A19438245259D00C2
          244A42A1B05C5E5E9EFBF18113CDB832D36446F49C949696DAC2E1884C558A87
          128747F8335A1C46EA8D4855756A4538568B4C3516A8282A093035BB1EA46567
          673B6ED5D7883AD0BB05E5BF5D3B2BC10E9A170C866446556295158AC4A23FA3
          2DC1263500CC13351582E9E9692A3AE29A2127B2A2901BB76E672A8A32D1A015
          E50800677CB2B2B24AEEFFD962435FE936053F8684AEB178EAAD58F439538D93
          B123A77F769072166B293C9ACF5FFA3907C4B36A6B6BB318138B8B8E609A992C
          CB337FFCE9BA3DAA46486E6EBF30E8FA454D534D97D2DEF601B308D1A2E909E7
          60EF6F77EEE7C8B2D88C64C54A2E5DBE9EE76EF70C183F7EFCD6954BE7EEDCBE
          7DBB1192D4DEDEBE00C08CADBB589F170EFAC9C811255E08C465EC9CA253486F
          2950892A18C0EB537DF9FC192DC008456054AFE228B55877ECDEEB0C854273B6
          6CD9F2219C74931A1A1A0AE184DC00765B8F1EFF26FFC6CD5FFB45C201BE7CE9
          221700B86AD400A3BC8F1AD00BCA31722AF7FBFDDF39860DF62C2E9BDED815F0
          2375688C773BF2CB8DC67FBDB17947F137DF9F9D0515FF81DD6E3F74E5EACDD5
          BBF6EC73EE3DF07991D7E3268BCBE6FD3162C4707F4747C7FF8D1AD0D2C0FBD8
          8A89804BE04C6FF5F97CFBD6AD59BA4906B3CFAAAA1F6744B1582D56225BADA4
          B1C96D7FEF3F87ED8C1ED20A301A0D9170344CA2413F5FF662D9DDB72A36E28D
          E9B0C3E168D153DAE3BCE8F15FE0183199DCFDF5BC043263C840F10228BEF50F
          5ADBEC55C7AA075EA9BF6EBFD7E4CA72BB3D36C3A1A25868FE80DCD08471A33D
          0BCB9E6D2D195BEC5355F56041414195D1D2FA20390387F37657437200123C90
          DB8FE05E370E06CA25A37DC0A18483528A33D16509D76E684F63E630A33F0E03
          2FA81CAE6B9733333337F71F50C83D2DB793A70031E0E2F397BC368D98A79B7E
          EEEB33493C52454A4D5DD4104ABA264C01AF879CABFD9FA83BCE69CA1AD07325
          F93ADDC4DBD9692E6CB88B5F9CE3304126B2298098804D7947EB1DD21700EFA9
          E307EA82C1A08C94C78C4D790C68F73FA664BA9816A01E157C7DFE17E885D7EF
          A5559BA6A09BC4488DB88CFB817962C6D31D13C4D9073A210567ABCFF50D4014
          22F17A3B884FA420F116C37B902C644916366D637EF9C3006040D985BA9A2F49
          241231AABCC7CF6612EA93A5C0F881D5BA005AF92208120CFE02278732E950A2
          F3CB0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500537472696B656F75743B61159CEF000007
          4349444154785EC596095093671AC743A90E5539952857B1A0505021E1325CE1
          3C02011208817016410E45D47AA032B31E656A8F55EBEAECE0B6B6B4CA62A55D
          A9766ADB51C00862B6D652B57854EE53390C875C8EF0ECF37C6B9CCC0EABC9D2
          99FD66FEF341F27CDFFFF73EC7FB860500FF57FDD780175C3ACFF4CA0CD25193
          EAFAC30074464747B91313131BC6C7C7FF3636365681923F7EFC98117EF703DE
          8FE3BD189585722D2F2FD7FD43004646464C9F3C7972008DE555F27FDEF8E02F
          273A73DEFE605896F1A7C9C884AD204EDAFE746D7ED14866DE3BC3EF1FFAACFD
          BB1F2EDD440039C607CE1A80CC272727CF3436B52936EF3AAC1425ED80C8F8AD
          E01B960E5C5E0C387944838B9704F8820C88966D87E8A402F00E498392935FDD
          C18CBC45999B0D800EA6FCF0FDC656852C73F7A438751744A181877F2264E614
          3CF8E95AFDB5A1A1A1CB6D6D1D7527CB2A6E47C4AE9F2440BFF0B5B0B7E8A3D6
          E1E1E1825901E0CB97519D37161C528A5376414C5A210408B321397D531F19A3
          41617373B3B552A9F4C74C9DB958555B1F2C5A0F81C25CC8C92FECC1988FA839
          FF57001D3497FE74FDD6F5A8C4ED10935AC8C83330158E979CBA830045EA9DDF
          DDDDED804097D7ACDBAD0C458858D93A25C69C9E1500BE30BBF8D3F2A6E8C402
          A00C8850DEA16F41E997150DB8EACD046065EBC1B2B471679111C61F7AFFE027
          2D3E616B80E72B1ED71A4075D938F01980C1C1C19CFD073E698F921580287927
          507D434479B065E77B5D6856353030B082E22CDE7065E2B1E9522BAB6B7FF1E4
          8B461392727A31835F12C0620B4716DBDC51F5FA97032C75F07E0E70F0C8E72D
          9109DB203A71076029A8D3A9E3A77FBC20FF150DCF63269C29D6CC9AC342A837
          7162BE409093687E02FFDE4D606CF337598BCCEC3507B0B6F352AD28F9FC8F97
          6E848A3640946C1B239AFB08E9160812663EFDF6BB8B37B0F92A294E7D1754EF
          0D325EB4C48E65B264B9E60056CB573300B43AD4E5C8B8BC313215C6A3A46F23
          006933F845644CEFFFB0B8856210E24047478789BAF1C27F1BA396B14CD8CB34
          0650AD40572A95CEC546FAFB3F2ACEDFE405264F874B3641781C0AEF82D88D20
          906C44882C485CB355D970FBAE024B70EEE1C38794BE57FF43BAAAACBC0C8036
          9EA3B4B7D39CD3CAFAFAFA6A3A3B3B6BCBCABFBD2D90E44F85A171586C3E84C6
          6C8050713E6A030446E580AF20F549D9E96F1A7A7B7B6BE8196CD0E77AF4E8D1
          651A517A3779BC08E015320F8E5E0F41A4A875101849CAC1FF73D1943104EA89
          609C06464C6C2E42E4826F7806F884A5E3A8A2703BF62205A7022F2805CC6D5C
          8020281B2F0570F58E03176F0970495EB1CC9ECFE18981B35A0CCEAB45E0CE4F
          0057FC2E00C10223B32100E58FA27290788129B0C22D02EC39A1A810B0730E06
          736B8E46004C09B0B3E5947E4A1DA5505D94DE070F1ED4EE2B3AD8ECE4113145
          1B939F300BF8116B310399588A4C70F34B00892CABBFB1B1B1AEABABAB969EA1
          92E2683225D0B809A98166128248718FB870FEFB0BF53CBE788C1790043E024C
          3FA61E85E94F07075CFDD1BF7E7C177BE2309ACE41E992B9260038B7F624668C
          540F99B06D1938957065F6342177EFDEBB1A10163FEC81104CDD835141A9E0E2
          13074102C920C25E54996BBC0F2C5CBC9CC418DEBF7FDF9484868B5A5A5AF40C
          175AB34804A150280C10A2B8A9A9B9CE37488A9948A1FA3322204B1BCE144DC5
          D9B367F5B5023066DB3006B89596503FDCBE734FD1DBDB57830D1A42C6062656
          2C03134B26E6DCB973F3B0574A8F7DFCC51D376C4E32F6F04F02777F19B02D1C
          01E1EB4A4B4B0DB40230325DCA4C04AEEEF388B8DC51076E081C3E72EC1ED67D
          3F7DAE6F64C1D2373267E91B9A31103D3D3D7EADAD6D575C7D24D36E684C4DC8
          C1293135B39BA6CFB5067816ACDBDFDF7F4228C91A71C57A46C5A40DE025A71F
          2064BAC070096B3E8A62EBEAEA2CA8DBDDF971532EFC7870F19532A367EFE832
          861320DFB3678F9E560086C65674D3C5878F67E4163C74F79381ED4AFE7465E5
          A5EB98EE3F676767CF216335D0776B6AAFFEECC413E1DE210567DC3796583941
          56765E3BC697518CDE3C63CD0F234A2FA51A1BA8706FD1A11657DF787CA90884
          E234655B5BFB15342CC6DA72EBEBEB9722E43E5A7DD29A2D031C3476F68C016B
          7B4F30B7B29BBCF7FBEF57713FC92050BDD78C340758F00C00371C5969D9D7BF
          71BD24400D462B0C15260F9FFEEA9B9B743E90AAAA6B7E495BBBADCF9927C6DD
          4F08166FB88029FBF5A71515677F45F38AEAEAEA050430F73543CD01E61B2C56
          3597FBAD5B0D0AB6E50AC0231AEC9C82C0D1351C1CD168A57B142A121CB86160
          E3C807336B673058F83AB8B97B0F55555FFA191BF67BDA2B54E673F5B40098A7
          CF4699B2E87CA7B3A1A6E6CAB53D7BDF6D1444C4F6AFE27A3DB6B5E34C18185B
          81BEB125CC373283554E1E23B2A4B4EE53A74EDFA4B9C7951FC1EC58923919CF
          D13320690CA02E1D7A11D6391AEB5E84677D0966E56B3A0BF057F0739129EA38
          6A537B7BFB4AF5B35F4DDA03A82066381FE6A86BA61F1DA4D902BC006806A95D
          DA00FC0BDD8FA49F653D86260000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500537472696B656F75743B61159CEF000007
          9449444154785EC5577B6C53D7193FF7FA3EECC471EC40BCD479352424301E22
          A5294C19A4290D4C53216C6DD84426C6AAFE51AAB64353B58E6ED25857AD9398
          044AD4B1B0B55361482DA87B30D195470A1BA5A4640924CBB3B6E326766CB09D
          87DFBEF6BDF7EC3BD7D7C67F6499ADFDB1637D3E4747E7FECEEFFBBEDFF9EEB9
          14C618FD3F1B933D4151542E00D4D2E38CE14CBF4C4B3BCEE441968A44229B34
          1A4D333CBC01CC0C7325B22CA70162602E702209FD20B18B172FDEDDB76F9F94
          6B0432F6707D33C2594E8C0C5C2AE579FE5549929AFAFA478CB7EF8CAFB03B66
          0D8140840F47A21CA3A1A5952B8A63C4ADDA1ACBE2BA35D5CDAD2D5B1776EFDE
          FD3300B866B6AC03201979DDE3B911C00867FAD181CBA51CC7F5B866EF5BBA4E
          7DD0E098F618E3D128F2F93C28149847B22C218ED76AE64A1FD29B4ACCC83B3F
          59F4C15F2E57BADDEE89FDDFDA5B4970642CE617018C64C5F9196B1F059EBF46
          367FED8DDF36C613492E914C20A7730A3DB271D5FD170F1D71AE6DA88BCDCD2D
          30D7FEDE673C7FE17A2DAF2BE63886435F4CBB74909E32923A0C0DE17C0848B2
          22924020500B617FE4C4C9F30D7121C951348516FC3EB4B6DE32F7D689373E87
          7C7FE4F7FBCF161515ADEA78FAEB2F55565A84635DEF6D62580E793C5E2D6094
          A5040778F91020C29A75FC936259B67164DC5EE8707A8C0CC32A5111E211D4F6
          C44E1F80FFA3B8B8F897AA506620E4F79A366FE8A928BFB2E874F98CF7BD3E1E
          D6949308001E61910701F891268AA269E0CEB88942144A4791E1B548CBF33280
          FB09C0CA871A14648BC53209111BA8ABB1548D4F4C19A38B6EED8323F79F09D0
          4BCE4A723A12D4FCFC228BB17A6EC193E26213EABF336A82F0EFF1783C6BFD9E
          490AC3BC1A89C1473735CC0B2177B466557908228853FBCB082C8F08602933E6
          7956527228538A380B74856878CC5576E366BFB765DB965F79BDDE2366B37948
          2D64FDDBBEBA75E47AEF9F47618C1886B1A6349DD2D4522D538A5500A54B1B08
          6CFFADDB43AF749FFAD3465EAB55C349F0308A4702D24BCF778CB56EDFEA8748
          BD535252F27E1A4635AC1ACA1ACBA457719624402593C96B822050A07E0A3440
          85C311FAD5A3271B836141A7F0C30FAA442412C43B1F7F74E66067BB0BBCC5F0
          7806187A2A0B179374E8743A628FAB04F05204E868347AED1B9D3FDAAE105573
          AF615994D93C6B9EF8298A12924451AD1D38A3352CA71CC66A411B1FFE145947
          FB6E40A45A952C435B5203E0399A764C921559CA9511CB69494E51A9B91C6918
          8D2A4A0AD18419CBA4EAC6821FF9BD6E240386421448A83F923682ADA4675911
          92305EFFE8DD9BB1584C4903012646D2313C6A339C3DDF5B178F8B5C2AC0588D
          4AAAD06880C8D7DAB6DFFBDE77DA9DF0D2CA8416C6A8B0B050A2695A79685902
          E4E8753E77B41960D36A510CABE46800232D93062C6714A6E50BD1A8F55ED9E1
          1FBF550633A93450A4476862F826B28EDFFE249708E02FEC130FDE09B2F2AFA6
          43CE8C39568B688646A5651588945E35520441F1D8EB9E46C1E082523BD46240
          B0FF6B1D50D47AE7B30B37E0349014645F1ED263525A957CDEEAEBD71F3BF176
          BDC8156B595EAB6C96E10A7FCF3FFB8CADE399BD7EBD5E2F83FA65480359202F
          4B40ABD5B6AA15925AE6D68346464656EF78A2E527F5AB6BE32FBFF2FA97E302
          D2B30C93D9BCC85882FE76E963F3C1EF763AABABAB9F82D9249894AE09CB9562
          AC379449EA62796868C844CC6AB51A1D0E071180486CFDFAF513838383872A2B
          2BEEFEA6EBE7231C4AC4241152248329479747369B5D0F61E77B7A7A58F5394C
          2CE7520C27E1ED4422513BE39CE50AF57AB140A77B1DA6AFF0052625E16D6D6D
          C1D3A74FFF60D7AE5DA73A9EDE5572E6DCD57A45A438A59F8490A01717039A6C
          E7727A1911C140A38100BDFFD91F6EFEE6B70F6D39F387F74AE1282AE911A20B
          94BA061D387020160A857EB773C7B679591241F8B2E280108F23499620A53C86
          E29649638E045244C17B5A9645D9602A45577B3F5909C26C1E1B1BAB48BBC2F0
          06D261BBDD6E635906D334C62405C482F35EB462854100F189333333427E0400
          40155FC2BCD214A36906591D1ED3E0E05DBDC9647AB9A3A3834DC683B42804C9
          1A0DE8E105FBD4B4369194682C61240A0934E775A2D6966D7370AA668F1F3F9E
          C88B80105BA4523CE4A90A4B69147A545C62A6BA4E9EAE81707FA5BBBBBB0B84
          B9A9B7B77795CBE5FA29A4AAE59D33171EA6014E9292C8EDB2229E159387BFFF
          E22C88F02AC1D2303CCEF13E909D093CB5BAB62AF2E195DB8805557BFC51E30B
          878F6E38D8B9D7B0E5B1C68D555555686878ACE0ECB90F2B27ACD3A6783C8AEE
          C3E65222289DFC75D7447979B9A7AFAFEF7DA4CA3267020C5784C54488E4D2BE
          615D43D8F1F900D2E94DA8A0D0809C424CFF8BE3EFAEA3A9330AAE20C4512C12
          40A1801FC5C2F3A861754DE8CD37BB6D4D4D4D3EB8A21D696F6F0F6B345C7EB7
          E234DB70386CAFABAB15FE78EEF703972E5F35DDBAF599D17DCFCD872231C6E7
          F3F1E9B2575D5D19D9DCDC18DAB3E7A9B9279FDC1100E10DC24DE91868C399F5
          A591F38D28DB289BCD5601809B615D1344A41C4AB001D67D09C654D6DB0EC3DC
          244DD3FF02D2BD6BD6AC19CD2AB9F87FF936C47575752EE867C1FE9A255A4AB5
          EC0D6432CEB69CBF8E97B70C180526E7B43E8FF66FE880645238A61A07000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C65005375627363726970743BD4482ECF000007
          1949444154785EED976B5094E715C75FA56DBEB44DC736F10202BBB0C0B2B00B
          EC8D850516969B2C0B0812C03B2322D29A642249DBB4A6639A746834680CA1A3
          129309A0D454228D45A15358EE7271B935A0CB655159504114502E027B7ACE8B
          388EE88CFBA1633E8499FFBCCB72DEF7FF7BCE39CF7B1E180078A1FAFE00FC00
          F0C4CFB2875AFE0C2D7B46AC15E92971CF07E0AD4A64E6E6E652676767755353
          539593939395F7EEDD633531314157F6BB070F1EE8302E860CF0FA29C5D2DFC7
          C6C6AA48E3E3E35514A7D7EBBFA198E706A0E0E9E9E95D99599F5F0B8A4C85A0
          C89D0BD2A4A276827F583248947190732CBF1B0DD6D32AF19ABD75D7BB63AA88
          1D40F20FDF0E72550228D5F1D318F3B5450062651C83AB4B6DD677346766E55E
          0D8E4A3387C4A4C38276836FC816F8CD5B7F1A3274F7D53F0E50525AD9BE3DED
          8F08910252FF78D0C4EE98C83B59D4898BB10CC05311C3E04D0EF7EFDFDF8129
          AD38F8C909A30A33101CB50BD4DA3450866E8537DE7E7FF0EEDDBBE7DBDADA5E
          258091919198E1E1E1EA84ED7B27A47E1B202C7ADB449FB1BF0EEF3F860AB008
          40248F6244322D5B0AACF716AAE79694DF8FA93429108820817895AB36CC19BA
          7BEAB1CE7BAF5FBFCEC3987FE71C3FD923F18B03A9326AE6BBCECB17F16FC72A
          2A2A7E6A7113BA4B358CBB2C821148235808CCC46755358D7AACAB99D24B3556
          A83741FA1BFB86EEDCB9A3C34C9CACAE6DD42BD489F3AEE25073D1D99276343F
          DBD5D5F54B32E7F27D198B0004927046200E67F89E612C00A6D6191FA8CB78F7
          A3214ABF5F78322B4FDF68F3F9D2F2D62B86EEFAF0D89D937CCF50D8FF419611
          81CA6FDDBAE541E61CBE0F63EFACB00C80EF158AE6218C8B4730E32C522F9662
          AFA1BBB73E705DF2AC326C1BF82288226823C46EDA339EBA67DF304243C2E6DD
          23B76FDFAEC67224923919DB39CB193B9ECC3200175110E3245C104F18C8F0DC
          554C6F6FEFCB98857F1DCEFEB2571EB81114C19B5979AB37839B3412E44AED64
          4F4F6F1D9AFF999AD2D649CE90D63A4A195B478965004E68C8730B601C1725F0
          63B380F58E1D30996AC3A253A608421EB4200485A2B3E7DAB054A78A8B8B7F46
          B164BCD641CAD83888191BAED8220034F4671C5CFD19AEAB1F4AC95013715C7C
          9923478EBC84292EFC22EFEB2EB15F3CC8021341A64A02A17714ECDEF35B1302
          54747676DA1180359A5A73BC509ECC1A7B0FCB00B868C6E52BD1141BC845C170
          169A68597F7F3F0701CA8EE6165CF152E2760B480009ABD7007BC5FC9FF2CA4B
          A3A3A307A804D668BAC64EC46AB5ADD032007B671FC68E1AC8C91B1B48CE8AF6
          33D6374F5755A7F7F0D1CE09A41A10FBC79BC5F8D22109BDB51011B5E9CECD9B
          37AB070707FD0898B4CAD69D59B5D6CD320032B4E5C9B081648C2DD6915684E6
          EFF7F61AEBD49A6D931CBE2FA4A6BF33F87AC6FE41912206B7631C2B9E7B20E4
          1C3DD185593ABDF8025A69E346064EA88366B3B90287968E861C5DE7E7E73330
          6609001A53F348486CEAF18109B8AFABB7A6648CF0DC54E0A3D24E180C86FAD6
          D6F6064550C28C48B11E443EEB4128D38250123CFD5D67D7457C35A72F8E6234
          BE70A3E1627DF996A4D17F780AE1B4C81D2ADF7C7D90400040B504C0862BA106
          62CD4D2693273EACE283CC6CA3937B1038BA2AE67495D597102817D37DF6F0A7
          B9DD0299064B100D427934F044C19092F6A6E9C68D1BBACB972F731E8EEAD222
          9964EE9FC1EA291AE517FFF2615F3EDF053ABEFA8A06957609C01AEC5C32EFEB
          EBB3C3A62A3E7DE6DB0E574984D9DA410207B2B20D0874A1B9B9D91667C0BA81
          81819AF0F5C9E36E522DB8CBA2C04D1E05D8C4E66FCF9D6F41C082FCFCFC9FE3
          4A4B2F24258E9424BC3632333373D2D4DAD6F8258F070D870E1B9E0A40E638E9
          82D1E84CB9AE462FF38F7BE088F58D89DB3A7CF5EAD5DA6BD7AED13BDA8AF63C
          021C2D283CF35F17F13A1020849B2C125CBCC2C1431E327949DFD2303434948D
          B3E4041A1D40F38F50A75A3E3FD179DC9E0B032D2D8D989DA7022CA793CDDF8E
          E75DF10ED830436F3A275108C46F4C1DAEA9AD6FC29EC8A0182A4F5F5F7F5DE6
          C1CF7AF8682A904422044AA2C1F850506B92C60E1ECABE42D3948031131F0F1B
          8D457952D954C5BEF78C08453DB0FA498065144C37D93A29602DCFFB915673BC
          6073F2AF8708806208E09BE292366B07292C4802D6DC05AD612586152B1D01CB
          5885C7B5FD0872B83024EC66D9DEB7DBF1005388ABDF48864F03588EE7B84A1A
          2C685283B5AEA55A6363D510585959D98714939393134B99A2BD4FA5311A8DB5
          D8377524FA4CDFD1EE696A6AAAC43992FBF748ADB13879473BDE7388564F6748
          DA8E4F023C8240FD08F563D44F480F3F5B11E463B27A2CE6A527C4DE83AB3D57
          FABB3F18BFF0F69DA04550461A0A4E751C58F12AD00296022C423C5BCF1BC70A
          9BF05CB6BDC36CD62BABE0E3152B818CFFFA8B5720F3E55F019D9CFFEFFF98E0
          B9B184F63F950F276A15658044BFB7B7B73F2AC10BD50F00FF03C91DDE595168
          83F60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C650053757065725363726970743B0B88A1F900
          00071749444154785EED956950945716862F3849FE64C6291337F6AD81A6A11B
          E88D86061B9A4D9A66111170A7445C1293D44832332666C64C660A23838E4153
          2A9A54C0A53012488806A7867D118320980036340DCAA6E002288B609F39A791
          1453B8F50FCB3FD3556F7DD07D6E9FA7DFF7DC7B1900BC54BD680047549A5EAF
          2F9E9C9C2C99989828A1E7C3870F5318632F1E001BFFD85773A1BA684DC2ED6F
          3CF890237083D2F7DEE921100050FC0FC08B78E1AF2DCC958826BF0B548EDEBB
          77AFF4C23FFEDE9ECD75862B5F7FDD343636A67E1A80C923993E41264FA89D43
          9AAE43CB0B0B13E207CEC6AD18181F1F3FD17DB9E1E2571C0ED4ECDDA7792C80
          97229EA893C9A2D1D1D1D29191915222270D0F0FD3D3F0DE83070F28CB2802C1
          E7E7544B9F0F0E0E9691868686CA1ED59DC7467BB0F967A893F5478F351DB1B1
          83AEFAFA8BB8EEB10E9820D9A6D4F4A3D702C29321207CE39454C9A88DE01792
          0822790C1C3C9CDD8A20D1E4063E33D66EDA31A808DB0024BFD0F52055C4815C
          193B8635A70912872EAD5FA7CBCD124B468B777EAC43289A81C5B30084F21886
          D4C9B575576A53D3333B032336EB83A2B6C294B6804FD01A78FB0F7FE9D5B4B6
          57CF04385B58DAB87EF34708910462BF58502DDB309C752297723E8D6EFE15DD
          D97B2A28E4C6F9EDEF3762FD29746D25F59B05E0218B6248677FFFFEFD0DB8A8
          38ED5FC7740A742030621328D59B411EBC16DE7DFF939EBB77EF9E6B68685840
          0003030351FDFDFDE571EBB70F8B7D974348E4BAE1765D4715AE3F8CD17C88B1
          65E684AB75F9891B1A0904A10CF1D2769C052090463081446D880217AEA13CD7
          24FD7950A14A027F04F1C7A754B17C52D3DA568D396FBF7EFD3A076BFE7DF0C8
          8936916F0C88E511E3BF34B55CC0CF0E171717BF8ECD0A0AFFF4A1EE4B2F9FE1
          BEBEBE8ADBB76F97D51C3F7965CFBC054033330BC04DAC626E9230C613871920
          D08903651517EB30573DD94B19CB94AB60EBBB3B7BEFDCB953824E9C28AFBC58
          2753C63F741106EB73F3CE3622585E7373F31BB41EED2EC8B0B19F489FBF08FE
          396F2150E3DDBF9F0FA973DF041AD459003C5128E3094319D723C40080D63A61
          6149CA8ECF7AC97EDFD044833C7C22F5E70A8B2E5FD5B456872EDB38C2F50886
          5D9FA6EB10A8E8E6CD9BEE046FCBF56698FF6EDA39E4240297910324FA1F676D
          FF2C00AE6730360F62CEEE81CC49A09C8E62BBA6555BEDBF3471421EB20E7C10
          4416B01296ADDA3694BC6D673F4243DCEA2D03B76EDD2AC746F1046EE32463D6
          4E5266CD91B0E9D733EF027A390B0298237F4A1CBE3FE3B8299856AB9D8B2EFC
          B02FE32BADD47F25C802571BE4A55C0DAEE27090CAD5236D6DDA2A6CFE371A4A
          2B472923593A88999583C83800476CC8715DC21CA6C5F335B880F62DEBEAEEAE
          0C894C1A250869C094101472F30A1A30AA93F9F9F9BFA55A6A6C692F6616F642
          666127340A001BFA317B173F66E7E28B92333BAE0FB375F661FBF7EF7F0D2D3E
          F565D6E966A16F2C48FCE341A24800BE57046CD9F6C76E04286E6A6AB2260073
          6C6A6EEB89F2606636EEC601D861333BAE1C9B7A331B6719B3C52CC9818E8E0E
          5B04387F28F3F8554F396EB7257120326805E0ACE8FF53547A09876B0F45608E
          4DCDAC05062DB6E21B0760E3E4CDAC69801CBD7080A406D17EC67CB34ACAAAEA
          DCBDD5933CB10A847EB17A211E3A2874410D6111ABEEDCB871A3BCA7A7C79780
          498BACDCD8224B57E300A8A11547820324615698230D1536FF44ABD5552955EB
          466CB93E90BCF5839E775276F5086451B81D630CE2B8F9C3C143C79AD1A51C02
          26808516AE6CA1858B5100D89886474432588FB6C7E1BE2E5F9B9432C0715580
          B7423DACD168AA2F5F6EAC9105C48D0B64D120F08E06BE440D7C51E0D82F4DCD
          17F068DE3A7D65CF37E71A07606127A2013234EFEEEEF6C02F2BFE343543E7E8
          16000E2EB2C992D2F24B08948976E7EDFB3CB3952751610491C0974602471008
          499BDFEBC623B7A4A5A5C59600DE3473360EC00C2797C8DBDBDBAD71A8F273CE
          7C7FC54514A637B717C19EF40C0D02FD585B5B6B8577C0D2AEAEAE8AD0E8C421
          57B11ADC2411E02A8D001C62FDF705E7EA11F0787676F6EF0882F4DC00548CC7
          6920363A5354525127F18B79E080F946C5ACEDEFECECACBC76ED1A9DD17368CF
          23C0A1E3A7CEFCEC2C5C0A3C8470958483B36728B84B83462ED5D5D7F4F6F666
          608441C60298D22DF5C591ACAB5E4B968FD349E7280882D895C9FD1595D53FE1
          17A6500DC5D3DEDE51959A76A08D8B4D79A27084408954581F0C4A55C260DADE
          8CAB74E61330413C0F800915D3222B47195872BC7ED5625B4F589DF8562F0150
          0D017C9B7FB6C1DC5E0C248AC8DC6E4A66060961DE4207C0188D0630C52B98AC
          2BC72615987525654D773981A1E2A9060791434ED1DEA768743A5D25CE4D1589
          FEA6F768F7607D06D53F2FC0AF10A8DFA05E41BD4AA2BFA7AD9CA139336A5E9B
          A9196B4C8D9D0192C95334ABEED97AF6367C997AF900FF07F82F60AF90B59211
          8AE10000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500486967686C696768743B7847B258000007
          B149444154785EBD560B7054E515FEFE7F6FB27920EF474C4248844C0236581E
          4A8542A0C119E9C3B66A4B29AF56B0B5C38C33D5F2902A96196D69D55AA7752A
          3A301518462D96022160A74C9401A53C8418202464F3DCCD6E36C966DF7777EF
          FFA8F79FBB737762350833FD3377CEEEB967CEF79D73BEFF6C080094969622AC
          69C84B38891006BECCA1340BF19C241A7FB14AFEAF80A2277F4300500004F691
          00C4B90DEB25193FBE82D05C0E8D6B4450412821D67B90E1E1098494A0824AE6
          6052E80E7969F37269FA8B376E2700C8D3DFBE2F77EDFCB95BB229FDBEE4B2D0
          308C4FDC83C16D4B5E79E30C00A6D15C4E9E7FF9EDC5594EE70E0272B782B7A0
          8904242C4296B1ADEDE6429C4FE8B1A79EDDB8AAFEEBAFEE111D1D1DAA39FB1E
          59317141F91DB5A3677F7576CE1D6570E4E622E1F555E3FD93F527D6AD7AA266
          D7BE9D9A462825543B70DF3DA5636E9F98AF40BEECF1F6C5E61E3BD5F68E46E8
          A450282401D0BFAEF8DEA40595D38E4DFAE6B22AC42330AE5D462A9100CDCF47
          514D358D87A27FDCB574491729282ACFDEFEF2DBC9471F9E052604E4E71058FD
          D876EC7DED59F59E1040A6034154ABDE3CD888AD1B1EC88B450262C7B7164FF8
          CE9C99C70A96DDFF15A3C3051E0C660E14342F0F91C118CEFEFDE8598D524A0C
          83439A7F0290B013DB7A21104C80128009A948D8531020D27CCF2004CBDA547D
          CFD8655595B51397D6DC9968BA021E0A5971B6FE7832052DC12192A9991A2049
          32C554522E6506A684D50E454A58DD11192D5244084C609416DE86E5D3A7142E
          9F33F3DD82A5353312971BC10783C0503913620263B0CD0D3DAE473500341ED3
          21159E5476F5A3DB20A550F14F6F5A87CAF23230CEF0D0DA2D6952D8B6F967A8
          282F8530E304074D86F1D8BC59070B6B9654261A1AC08266E5AA12BB26353B89
          88DB87EB97AFA1AD7F60BF66FA4D026622C6A50A7F73E77664675105F4D0EACD
          786BF7EFC019C7817DBFB76E06F0E0AA8DD8BFEBB79082410F0C60CCC97751BC
          6451A5FEF14505FE193513A24CCCDB075F7B17AE76FB9B77F7F6BCA008188C43
          0880718196960E3CF787D755DB6181690E0A2E18A4908827859ABB831250C911
          ECF723B0E77594DC5501FDE34B60C1707A4019D8A64638E28141783BBAF19F76
          77EB3F07023FE84EA5828A005302920A60FB8ED7B07FF70E38AD0E3CB8F249D5
          1DCE198434493235AA85F75621E8F7A1F78D3FA3606A19A21F9D878CC7402855
          8F3435C3390457A344321285A7D38D8FDA3DD70F85067FD8904C749A6EA50166
          307021950839E7C8D628A2BAA1E6A7C849A85B20844944804A861194C3F39797
          5050528CD8D9F33082115B6BD6EC8983806665C188C5E1EE72E35467CFF5C3E1
          D08FAE18A97600BADA840051231052A82EFC7AD3CFF1C0F2C7550A64DC0A2E04
          1E5EF94B2C5E381B23A8C48C2BA731AEA408FAC546B070241D668BDE41411C1A
          12A108BA3ADD38EDF6B61E8986575C338CB634F8869C1152134210CE9506D415
          2B2F2FC3FEBFBD84BC1C2D9D4EE961CFAE1790EF94F07BBDA87FF14F28A92883
          7EA1013C1A1B72CF014A080825D0436174767B70CADDEBAA8B457FDCC215781C
          80F1DE5D55F260930B1AA144188CFBAEB6780B4AA78C57C99804C2710304D6C6
          53779D633018C5AB7B8FA19714C2D91CC0BD2347810523108AA67DD524A54885
          63E8707BF081C7E73A9E88AF7471E6021033C18FDF394372B3EB003426792A1C
          F03EB173CFFBAF1042265899ECDA2D879402D57717A16F208CC2C222BCE7CF46
          6C208AC513C622E5EB533A41BA723D812E8F07F55EBFABEE53F06EC15BD3E0B5
          15159231AE4054F6B1D3A669790991CD89E69442AAD53CE40E9BE0349988E7CC
          A89CFA61E1F46FDC3EBDB20A912443C3F90B5896F2A1460BC30886D4AA4E2553
          68EBF1E2835E7F5B5D32B1D223F875001113FCF0B469194B1C38D4E5519F4869
          69290951EAC84FE542088360C8D1F588231E0F8F98BF7051D3D8C973C62DA85E
          8466971781DE1E7C72F643AC999083FB6908FA6010AE1E1F4EF60FB4D725F555
          5E295A00844DF04365659FF99D3BECF62902C3FCF3A162B2008CABF9EEFAE7C6
          8C2BFE6975F57CFCBBFE0CFABD1E70C6D0D5D684D5052351E969427DAFDFF5AF
          5472AD2F03FC1F934B8442900422BD4A4150EBEB05914379D9DB2B0DEE00900F
          A078CDFAA74E57CD9D37EAC28526040203F0FBBCE0DC009104DEEE6B9812ED69
          EB8E0CFCA4578A66002113FC40F164C1AD245C9AD62EF7486F1F340018A67AA7
          59FD91ADBFDAD4D4E91E55573B8891A3C7418F06918CF52199482881E63A9D2D
          97FA22EB9859B905FE5661916042280006D8D65E2F5F40C0AE7EC4F16D5BB6CE
          72E86B168F0EA1A3A905F5AD59D168225E1B0EFBEB4201F75500494BE521CB1A
          ABB372C4D1BE010C7386ED0005E0CC6E6C5837725E398E9E6B417343EB3B4D9C
          BD08A0DF04B3C0B9559C0140944CFD9A8C46FB313B6A136849E937454000302E
          BB7DBB3DED9E47F634B6EE3DC1D90E007E00510B540C5984B2CB75065D000E02
          B7D4016955167EFCDCC567003C0F2065295BB7C05103224F40E2660FC9B0D4FE
          6EFBAC47B3F4202C52D27A889DC3B6C37C9616F9A4694986D89C9F9FC826370C
          D88D7E27D6768C6A198B26FFC692D9BE5BF40B00F14C02B7DD68D25B8AB36DD4
          B499221C653AFE8F4F070099165A36803CCB3A6E4048E426758074EB010C0288
          650638BE406CB861DFF07E99DE2F00F87F01F7D1338EDE48C698000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C6500466F6E74436F6C6F723B436F6C6F723B31
          8354C20000052749444154785EC556CD8B5C4510AFEA7EF37ABEF6231B3D1902
          424010050FE22910880402C242401858082CE414D09317955C0C5EF5182F1EBC
          642520280BC29E848020F80F88074172D6757733336FE6BDEE2AABFAF5DB671C
          C33E144C0F3FAABBA9EAFA757555BD4166866739B2BF6FBC72EB330092098BE0
          28206E70BD186E6E40CFE5F765B9A3E467474787BE585C00A242759A0B51D2E7
          785088F6BF7CF3E1D90438245F69A14E50564400B667C15A3B90E5762FEF4567
          79DF6DF962B94D440FA2BBC631A983203252E81E01A2FAB60C24225D3E85C4DA
          3E00C25B6060CC44EA4708F4610E27B798E9C1A97EBC451B0D660224EA46408D
          393D413D51605C672E57951D04ACC9098CCD34325743891721548F88B8392885
          BF264F0C1D097886E6EAC92612C14C1CD96C23F8701DD18031D8B004371CD9F2
          F16C3704BA1BF5292402512545A27B046A2354CB64277BF970A093ED6AB11804
          EF0F9C7357D0D881AA64790E68ED4D2C17778929396DC83711E84A80526C4322
          032AB17622E12F677391F88539670A09CA0D3408C618C8FAEE52B528AE70A087
          4D16B2FE889B2874230021A8593AA336B2E2094D6FAB2AAB6BE5BC281079DF8D
          8610106F58CEA2BE1B8D607174BCCB1C1EAAF33A100D1104E81C81C0A7044880
          E0C1B8914C78E2174B4BBEFA8E2914D5B2DC07C4C2387D0686AC976B9E4CA084
          7789C2F4F419DA52FAC76156CA903D50109007660540CF394086C972360321B0
          C74450CEA60579DA0FDE47A62CC807C301234E6289526A0641E65EA40FDD08B0
          1A30C74840F031FCC6988B55E92F57CB2230D3813AA8E67320EF1F5008409100
          49A20E35D8BBF1B6C96924C304C4DC9100296B35AC6253B2B9361F7C3B944B1B
          CAF28043386421E6CB25C8331CF8D24F236106ED9290E5FDCB40FC12314562ED
          79A16B276C6BD8200A815C694D9011066BE7BEE5B6B8C1F67A852CF6C9871D34
          189FC28DD7607972B4CB143E4059373FA0AE8D8839B55102E30660ACBD048C6F
          E4E311F4FAEE5E08E1DEE94726DD1A0053C5A47CB1D94D28977748AFDD12EE48
          8042624CE27000883891E6034BA9FF502ED469FB5440900D46E0466BB14FC481
          567261F4822FE6D798C3415B0DD49D00508C3F989ED388EC14C7C752E3BFBF07
          0C9F72EA6C4D89E5DE4B09BA7B88781B8D051D6EB40EC5E1E12D4D582068F43B
          12F0B583CC8D008D79954278B99A3E56625FA5A8D75722D2B99623B8F5737BC6
          DADBA667A2ADCD9D90CFB6B1325B44E1105247ED500529545A526EA849B8E38B
          05F86AF923077EC481B434954CDDA6055455E0E7D3EF43E51F45529C4A72BC99
          03E34D88BAA47BDD08902A1A03D669F871B29C4F8183FF5A9D7104A56762A040
          71BD9C9DC83CECF9A62901403E1A6B32EE32C6A0742760B25CD86F89CCAE03F2
          8BC6580DE90FAC2745E7B149D5E52AB0A26F320788B8CFA18D8056875BDF7A2D
          77EB5701D5B6230137DE84FE78ED2340FCDC1803B924547FE3FCFB88B84B4D43
          61416A3EF9FA06F4D7CFBF03C67E82C6448220D00B0F36B6A0BFF5DC7D00FBF1
          D3BE862BFF8A2FBC79476FD1FE19485FB5F2E4F058C466D3886A15D6046C93BC
          31638A22A94A63FA4DCFC2E39FF6CE26F0FCEBB7453C99340D89A819F73982DB
          BF5FED5EAD24D2A86C59883CFEF9CB33083C03609B0B6015698E2D56060B2849
          4CFA8264DB029E38A3DDF382A5A01054512119BBA4B06ABC4A069FA263566D56
          D70927826996163DC1A8B371DAFB8FFB4130FF2B81B5AEC61DF4BA60AA328376
          6C08F07FC4AF026EDE2D170C93B42BB7EAF0141D9EAE1924980BFE10CC5A8594
          C54F4936F8177B7046155582F02790F9A66497B6FFEA0000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C65004C6973743B42756C6C65743B51737F3900
          00046649444154785EED976B685C4514C7CFDCDDCD862414AC94E2A3B6968A60
          15DDE0A345DB5A2C7D284B489B22F821245D4D5151D04015D2CFC60FA611A3A2
          82884A5152B60855A959ADA5AD4D77A3914A545A05CD07EDC66CB2EF47EEDD7B
          C773B633EC8C7B5D4837D00F3ACB7FE7CE9D7BE79C3DE7CC8F59C63987ABD90C
          D47FDB012F758C3178FADD296DE28DD0ED0C3BBACF957BB0D429930B4A079888
          8A4738E7116326E6975C54841481CAF5C3CF8CB4ADBE63D3B06178769371BB6C
          86CF473EEC1F0FBF9AC1B183E2F23DB5BF4271925759C8B362DD3D83375EDB12
          DABEE13A301D07BE8CC67B8B0F3CEA4707420060A2C0B2AC43E874C0B6ED7FDD
          410EBE5BAF793C1ED2645353D3F35EB520F339ABA7F3C155E07818786C0E0FDD
          773D4C5D98A568EC47592265815D7B9FDC02C2387DAB17E22E7DAA138E9EEE4C
          661ECE468E548B50E63E9D2E969239AB75810394AC32CCCD2F403A5300590728
          4EBF2E939A834C3A5DB1C68539A619A78E43B55322A58F991A01989F4D84DF1E
          FDA16FD7B675309328C1C9B3BF41E2D2CC1125FF9C31163BFDC5C7146686528B
          B95EA13339C0F739A5C0308CA85A031C655F1C1B1AC8659F3226BE9B0E026386
          6DE623F16FDF7B51849F93FC7EFF0B6AF1355A84EA2E30444A7CA82661A48C5A
          900E0841FBE60E115B1166FDAB2AEEA094A794EBF3E3C7B51A80EED7269D0F9E
          6D2FCB6808076C197E9CE7385F5D58AE596394BBA484D3589D77E7C0D62786DB
          6EB8ED7E850356F8E79387FB278F8DA81C603529583C13B82B0796AFB97B70F5
          8AD65070CB2AB06C073E3DFD476FF1DE2E3F3A203900A6691E2A97CBED28C981
          C5B0808A8F18C0BD5EEFF7CDCDCDCF691CC8E54A3D8FEDBC19DD32C0B4393C82
          8EBCF4535CE50023E33BF7ECDF2CF63A75AE21074E92E107E55907399082735F
          7F4203A671209BBACC011387C481C45C09F77B5EE3000AEF090E08C38A1724AD
          1CE448D0A8C6618D03C9C45FE191F727FA3A82EB2B1C183B710192F1B8CA0107
          43183B33360A8462770ED46701638CC24F6988D57060FAD4EB0385ECE34634F6
          7B9031301CAB10494C1DD63880793BA016620372FEE9B921F67F2BEA1AD472D4
          32949FE65483776ED8411DBB52AD0F6CAD3D11ED7E39EA08F098A8A25049B080
          E3BC924EDE2804DD39B0B1FB95B695B76EAC72C0B6C2BF9EF9A8FFC7E36F4A0E
          C86634CA01B99EC68165370506D7AE6C0B756D5B53390F1CFD6ABAB718E8F4A3
          039203BC50280C0B0E5021BA18AD5F94043D3C07709FCF37D9D2D2A273209F29
          F5ECEBB805C07799037BB6AF8583437F6A1C40A3811D9DFB36011758D530ABED
          3370442F1F9573F96C1ACE9D3A56B1A9712097CC2307CC568B19150ECC268A90
          4DE5340E6063D95412B2E994302E6754EE8B5E0582FB7940E7403A311B1E7A67
          BC6F6FD75D3083C63FFB7C0A52333A0710A1D16F4E1C2524138A17CB01423185
          9F0B0E381A072E4DBC3550CC751BB1F15F829C38502E46321747550E00E6ED80
          1291469A4D5DBDF30028DB523B0F2CC589D82D058E30640BA3A086DE25D41C96
          A0FDFFE7F4AA3BF03771C99F4FB5CCC91B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C65004C6973743B4E756D6265723B1D36EC4800
          00031749444154785EEDD7D94F13511406700ABC6B089B5296B640596A0B6205
          4A578A0B288B4BC47DFD4B8C9A18AA1663D0C4181F4C8886A82F6220948402BE
          CAE28B26A2F262C212202C610FC7FBCD740A99B4771A1AD4079AFCC2F4E1CE7C
          9C7BCE9D348688FEA9FF32C06E0023D32389D9990F3740CFEF5EFFC01BA38142
          045005C44641A518A0B5208F5EE5E9B70650ADADAD79575757FD4B4B4BBD8B8B
          8B212D2C2C70612DBB871721B801E085564B816B2316E0E1EEFA5BE4AEBB29A8
          94D48A5C821BE4ACBD1E708D9C27448E9AAB8262EB494208C500A3DDDD032DEA
          0CFAE5F30DE03B162C2F2FFBCD8E06D217B9486F72512E936372522E93237050
          3618ED02DD01B06D3280550A10CB0DF038258DBCC9FBE851622A49015656569A
          10425EEAF9F9F9B0E6E6E6FA24F88EB5B84F445B209F044EF345DD843CF2D189
          566463081B1B1B806BE35F0FD06632D06B43218DFA7C83EBEBEB7E852D888B54
          C4E7009B79FFF78E8EA1973A1D61FC0263E84513A1A1666767C39A999909096B
          D0B4AC919BB94D88B28F74760E3DCFD2D0D70FEDC30883E478B8BDFA0AD9AB2F
          93ADFA12D98E8BACC72E6E7181AC47CF93F508345245552359AACE91C50D67C9
          60AE2284E08E21FEE396B474EABE7DE7C7F4F474DFD60045961AD21656083405
          16A65C945F469ABCD2A02C7D2965069945B9228C23370066FD61522A791252A8
          696F929418079107D7F2322324CFD4D4543FE01ADBC72AE9E16E019A0E0F92F6
          0D159035615C9454B0ED73008BB72BD231C4FC873A0724AA282807C0435B0BF2
          85D7F1CFAEAE417CC7620853D2F84845B405088037D6B7F68FC3CFD23383E700
          6B9E6634119A697272B23F9C89898990B0063D85FB2836E15375063DD9AFA69E
          BBF7463015683E8C4F399BE5F24AC67586394D65CE5322073488ECF574186C75
          64660E59A156906FB21342A0126103A0EB91F473DBDB2F4D09C9C1F73746C850
          E2A6CCEC12E62065E818E1AFA498D2B550446A89C6B4290B8CCA015072CCFFFD
          3D8934F4EE3D4E42690B3C582C2FF3F8F838D7D8D8D827C01A8C361BF1078A5B
          80530F254718C6246BC2F828F19B90F3D99131DCFD65B41BE00F407EDCF5DBC7
          EB9E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C65004C6973743B4C6576656C3B4D756C74693B
          4E756D62657256D9E8A40000034B49444154785EED97CB4F534118C5CB6D5D6B
          8CCF2060294280626905042CCF42005FE5A189A26844F01F31260226C58A2E5C
          98104C4C04974A5C2808C5955162D818209048098F40C3FBCDE71C7B072F57E9
          5C34A9C6B0F8E576A6FD38A767BE6F487544F457F9770CEC18585C5C34ADAFAF
          B7ADAEAEB6AFADADDD0FBA01087F6D7BFBA9C57A9C565656DA753A5D082FC0EB
          5F2089E03542031080E8738B999E99E369797979C300DB7761BDB0B0F00ECCCF
          CF07647676167C5FB354DB59AD0B2634194051634C3441686A6A2A0AFB10CF2F
          BD45F925A09AF218F9C5D5E4D8A0CA8FF3A64C2539CE57522E2329B3986042B3
          81DED6D6EEC7478DF4E5E5AB6E26EC468C309092534631B63C050E3FD6DC1F24
          E66C100D2C7E909A66030F43C3C87D28945C070EF36390D87E2DA254C6AB6666
          66E627B00FF1A5A5A55A4D065813BA2184223C9180B8E1C4686A42A012D2F3E2
          608DA1F2285CCA24588425D80F9A01265AFFFAD2451FC6F143BDAB576E224995
          921ABD089EA8D0006BB67A36821DA3A3A39D4F4C26424341401E49179A717A7A
          BA039FD90A9FCFB709ECA129F1E5A011C88084E8BB6A6AFA308E8F8E84D3E4E4
          6487D7EBB5C104C4B3CF5EA7AC3332A7AF312AFC14555066D155CA28BCA2A09C
          320ACAC95E70992C69850413D00868004E318E8383835D18C78FCD2D9F99300A
          0D78DAECE7C89490B119B39D22E3C12999748A8C4B27635C1A1963412AE3244F
          531226F0E6F69DBEBABD07E9C58D2AEFDDDDFBB8733D8BB00EAFD53123251110
          473D8E40D403A5CA7346215B3F800161D389090968809B50891860401E4B1809
          F91DB48CE15666F488BDD9924048463D4E7F68466C606E6EAE616262A2136389
          6351CEB432A5EDA03C0EE1B78728FE45E34E181F1FEF940524DC17300473D857
          323636B625781FBD857A2D06247C786060A00B77C2D0D090A7BFBF3F891B4B77
          5C202569B98C9C323FD9A5949A5DC228A6D42C8E9352329D1467CD22984012C2
          043066EF9B9EF6E04EF03436F5C88506183027E751444C324544338E25514414
          3841E151363F268E95C2224122A058CB360DE04EA8DDB39F7027600D03AC31EF
          C10C22457F04626464C4C3C11A7F03F5D01035A1C4EE8106880C0F0F7BF0C49A
          3791A00105089A507527ECE2046D0C0309FC57BF8C760C7C03653E262086703E
          090000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C6500496E64656E743B44656372656173653BEC
          1600160000055349444154785EBD175B6C1455F4DCDDD9DD742941620A4A8D06
          21F621D216A3151FA5A1B12D5289580C263E494588E887060DF861FCD00858AA
          1FD50F3146D4208A35AD011B0423AD81F4A1881AE54F6324E547DA9DD96DBB8F
          99B99E737B67E7EECCB02936F1EE9EBD77F69E7BCEB9E73D8C730E8C31500683
          FF67709A3475C3B2AC2E146815828B25D7C5C0B6EDD971E49CE1E0A1500870FE
          2912893CAF0AC088F9FA8777AC9941066034CB07313902F102B2E2035C627B04
          76D099C4A3B5A18FC3D0C92F044F0D3C439FB88408BAA4E30820D8A864550EEE
          B3EF8CF3ACE2B81B5E13701C2383FD8748A5425D012ABC4233F8CF91BF85C361
          205E5E018861C4B1D51C1916DD938E2F78794D5077DF66D70754B5E1F0AD5514
          1B17AC803957AC231772DF30D007BEFD52EC686A08D2A69E103E2019A98E2556
          3E5B4B2774378462FC3E435F4F74319F0FA03023A78F1FA670647308C3A2E7E8
          C2188604C3414987796709AE1ED5E1C7996D42B3252D5B68607BF780A34821F8
          81E71A05817B9F7A2D5E5E55DF0D39FBF10F77B5102E7FE28DE39C303FDADD2A
          70B2D9EC7ED4D82A04BF8A8335C0290A344D3B1B8D465F1002987878D7F6BB84
          C8CB62319A42ED2F7F5C7DD5A2F223AD0DCB2AFABEFEDD31977970774B812688
          794BFBD30DC06D25F6B96F0D20F7110C7D0286077ADD4464E62C583EC39820FC
          D0AB3D8F2CB9A6ECDDF6B69B4BCA16CE839EBE5F092D467B444982E5086248C7
          75BD5F8D1E7FF6E46007DA3C5CD3BC657EC5EA0D5DB7ACB8FEC9754D1590B318
          8443007BF79F1018B6BCBB6D9B837D7B373593ECE9747A4F2E97BBDD344D4AE5
          1EF5079B00D50F08C3F178FC258DD44DCC1B3BBA2AAFBEEEC6C3CD4D55D5352B
          CA419FB661326DC3FC9230EC78B609E2A82072767D2A0BFBF61C6B9049CB92B3
          DFF6C1D141DE4F8272E79C1060ED331F3C7A6DF9E27736DCBFB26471D902181B
          372193B5C142BCD4B405DCE66011F35416E6C51998A6953F8B4CEAD6B56F451F
          70930F57ECCEF3D2B88BA49E80A1C1AF78DE072EFE79811107235509A9EC1458
          A47A8DCDA023C574C682A9B4256EC4421AFA8CA016724C984C8C834E050C3CDC
          B8A76071219AAF18F1F3FDAF1C9ABA63EB6FDD9DC6276BDBEA972FBDE9064825
          66C2AAB454038E8C238889130A92135123076ED9A383278E30F20159C48A2624
          4A44D807504FE0142321AEF9D7D0815F2696D434F64F4DBE5D7D6BF5A6DBD6D4
          42C664303D9D839E8327F3D2D3AF95CB0CD0193AEBD852322728DA8C28FE11CD
          6BC0092963ECE74B08DBB2E99DC3172FFCF3FAEAE6FA285F500A369AE7C74FB7
          5502400A2187909140A3B67563C73D10147AAA51B86B8254528791EF8FBA2D59
          55DB9BFCFCD117E9365904FEC7A9CEF7D3B59BCF1913FA7B2BEFAC5B4A872573
          5D0A60C9DB8BD04BEAE3083A70A54AF9CA95E20FFE62C4180AD18942EC04C900
          C6CE7D369AF8FB87E66CFAB17DF1858B36CA1BE70814EA64CF9133DFF532CC05
          CC1B7A9291B710510EE008C3B4CD028A475899A33203D2484B2154DD321FCC6E
          D88E16357503B3DA5B78933AF26899D9E8460C41482D6F50BCFC168F0002412B
          168B9DC54C58D81513F39607B650962BB419816347A6E67512D0D3762A4CD56E
          882B9D6A3269C0E8E963229768DE1713434F40D2D01DC69E8AA650E64A49F1DD
          5E151C5CBC8027CDA3A2D1C16F3E170E8565964CF05F9A4E76B9AE49BE9070EC
          0344F745E8DEA63442048AB6E4B36718F81F35233882BB622A2CEB1FECB83B6F
          5F0ED20C81425CD64CCA09F975FF25A293A90460F3298B91270CC9FE86912066
          45ECAB3A96CBA0E0C95B750AE8F1401FB029399C39D50B994C86051415369717
          54494F98007DC0C604E6F701EA50D4325B04E6FA3ACF9DCEF85F2E0E9DF3C89F
          93FB0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C6500496E64656E743B496E6372656173653B40
          33FB170000054B49444154785EBD576B685C45143EB37B37A9694044C15F05FF
          0956D0F6472BDA1A0BA2C162A0F18988913ED468A85AB4BFCCAFFA47492A8854
          A452A8D254B48D69B06D9A6D69B33631D9DAA4C61A6D4A69A06950B749EEDD57
          B27BF7CE71CE6476E73E364B68C0490ECCF39CEF9EF73244041A8C315083C1FF
          33A460C3BDE338CE5E445CAB404952F38AC4395F9A44442606864221FAE09148
          24F2BE1B0023E19B5F7EA78E16249715612A105804E4C184F20F50DDF6012E5E
          67EA1ECD93D60C0C9E3E22651A7E94D6ECB4B86095F8A0928C1EA9E896A0D781
          371AA23ED4077E13A018F1D8C90E52292D581915DE8E19F43BE56BE170184896
          1F00098C146DB54C8195CE8808484403D0B4E69997B40F78D4061098BBAF7040
          601EE1E8B28E9AA8F36452F8C0994E940004120F3ACB943EA004791D0B7D2E80
          DA09F581524CC0675083D35AF6F9800013EF3FF51D85235B6E1806DF691F1061
          4834144C3A7A1D72AD51D2E283290AEC57C2AC78F292063ED83F403BD8BEE351
          29F4BDAFCE3B533767BFB97935DED27F784F86F61A5BBB3197CD2B470238F9D9
          0B2C9FCFB70B8DAD15145471790D2045816118C3555555BB4A00DA48B0466E14
          6C079EAD7FF0B51361B6BEA679DF8BD12FDFFEB3734F8343BC7B6F58D8DED603
          3448F8D3CFBDF1382077C53E06E600EA1C2911CDC2505F972711857C64D802C0
          EA07EE85BBEF5979FFD16391C1FA9D075B7A3E6F3A040085A756DDC99F6CE928
          9925A91C577BBF3B7A82D9138107EC676C6FEB8D3216AE43BEC0800B7A6BFB63
          60A51D60C0E1F4993FE0E2C56B07AFC40E7D78E3F75316011104F3F3F39FD8B6
          BDAE50283044ACA07E6D02A17E1034545353B3DB5000C2B68D75CD3BD64BD05C
          1242CEE690C971097E43DD6AB8A3766513025B77D7AA875E1D3DF1E9980211F1
          179C0AD141DE4F4051BE2B0A17B4E2F9D6EE744BF31370CB72802BBB39CAD9B8
          8360A66D40CE219B4943ECF4E85C626A6A67BCE3DD6FD3E9746F7DE376E1033A
          F9A0B6BBD63CD7939465C260AC3B565B5BBBA9E403F9391B12C93C9829070C23
          2499D007E46C07B273052838084618E4DC4C4C3333F16F29FC52E60C5854C0C0
          270D7D050B25B4F2C52867DB909D77C0760A902BC8AF5EC88C190A2F0E559110
          8C5FBE0E03BD43D766277F6B9ABA74F8120581A00BB1E80F8C7C4015B18A0989
          1291E803A827F014239ECB66CF7EFD45CF2644ADC686573681602C6B792C1A87
          F191D1CEBF2F1FD995B9353E0D00790940D9520927AAD88CB8FCA3AA088013B3
          73FBB736004095A2DA475E3F7095230773C682FEE3E7F3FF4C5C699D8CEF3B00
          00592D5C86ECC3F55BB66D8472A1E7360A6A13A45316C47FFE49B7648AD91C31
          567B8C7384B1E171188CFE72DD9A1C7933F157F7AFEA8E4DFCEEABFB0827FA3E
          960E9DB266045980AE2A152857DA1F02C5081531578ECE1180BE63D11F136347
          77CF9B13090A7919768AAB104EF7C99EF181B35DCCB66D562EF410D15F882807
          A0A0213A66658A4A58996185DACF2B7282FD18B0002D6D70C54F172395D5F68A
          E2B296BE2697CB31553651215F62F9AD1C0144A481EAEAEA619109BD5DB110BC
          A67ECBD68DDA546A4254B423438F8D39F7B69DFAA1B71B4257A79A4A25E142FF
          71997F0C42E9EE8A929609A9A45514ECA9681ECEA84A8A5F28F88183BE576665
          F8547421D6FBBD7428EA8A10F1769A4EB658D7A47E90A0E80364F745D7FD4D69
          8418546CC9972EB0EC1E3523347457ECBDB06673E3B60D25FB22683304412C6A
          26D70BF5AF778969266D82683E69C9FCBF0BA4FD9349938455B4AF762C2DC0B3
          F2571D0F3F2CEB039C92C3C0B92EA0102C5354D8727EA02A7ED204C2073825B0
          800F508742A1B1C484B29C9FF358CCBAFF01F309CF6F8217D747000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C650053686F773B4869643B5069DD5979C90000
          059049444154785EC5575B4C9C45149ED91B90DDEE426B011BF152029B5A4809
          F612D268D8541B10B4515F6CB5FAA235564B42828D31D6DAA431C6A46A6262D2
          F8E24B53F5C9188DB117B05DB4D0421B5B5AB956B05BB48059BA855D2EFFCC78
          CECCFC3B9BEC7697F48581C93FCC3773CEF77F7C7366970A21C872360759E6E6
          428052BA94B5F41ED7E09C2DB3C00E2D95407A9B9D9D5D939797570FC46A61B1
          1F804A04CC4633E69CDB7F53FDC4391B37895C2EE2743A7B3C1E4F1B2ECB48A0
          E1857DE4A7EF3E7F0336EFBC11B9957FE6F74BABAFF58F16C51373AEC8F8AD15
          0E8793A8B8E944342DF5ABC7CC62647E618E709878B86CF5F4179FBCDB6BD6A6
          13C0E46DC0BEF9E8D7DFAF6D3FDB5B8681AC458BCCCFC5E55B052BCB67C6FF99
          F209AAB2C4A6A34A53AD42A0B0880839437192DC89DD26252545335B1EAB9A2A
          F4AF58CCEC01DD1616163632C69A3FFDF29BCAEEDEABF7135094338B24E233A4
          A6BA72B26DDFEE21BFDF6BED7AFDE0134418A97FF8F6B3B0C3E1103A067DF5CD
          C38F134DD0620BE49D9657FA2BCA1FBA4C29ED8075B7EF468042B05057CFD595
          DD3D905C0AC8C9DC5C8254AC2D8B1E3EB0F71A243C03D3F55C083B3E10100493
          FB7CBE6DB827168BB54B6F40C787657152FE48592212891CAAAAAA8AD826CCA8
          001AEEDCF92BAB9579548645CB224F86B6FC0B497AC13C871289443DE2D0B5F1
          1812C021D7310417DA94328685730492DF34C933D7015460CDE0F0DF8576028E
          4F6B91D46DAE8E32C67E4CDA8C732D3F7466254F813125576B1827DC32F96AB7
          3E2FB27A0083FE178DE54BE254C9C82058616085353E3E7ED15E23B848AEB770
          6C1A059C72AEF622C2054B39AE8C6425000AE8E0A8804D8ACAF94020E003E00E
          8EA5C436CE2D3B81A901291E6080EB868AE42EC57864B8DCCC2563978392BF46
          6F1640F1D8689200A671CEB82E40A609CE1097FE1006A740263B014AE960B0BC
          6C5AFD0F950F9CEE3CF25BD7A522A860CDDA27D085F4011265E6FF6F54D43876
          6E705C9B9500EAD85BB7B96A5205579B9D2E270977FD516A5956301A8D1E648C
          E13C764DC24A2BB94C2A23F43A63525026BB0210FCD79AEAE09DBA4D8F46609C
          24313139EDFBF0E3AFD65D1F8D34CCCFCF3BA442422760E62D534D2A04129526
          352614D94D28FC7EFF005C42C75BDF7A79A7C773DC3AD97EFE8145C65C58112F
          F70DDDB71F7A69C9AAD964420CCED24C4881B85125AB09D3EF02E1F57A8FCE40
          7B7BCFAE17B787EA267F39152E1E1C1EF3C6E371F79FFDD70320AF570697F1B5
          E34DD3AA9842A44DAAB1DC04484DDDB358568F4D4D4D7594AF7D30B477CF4B41
          D808B7A0A3167C40A112D25DAF7DB05505958528ED14A002541F6526988DD39C
          75C06659BDA949D437EEBED977E1E763B6B4FAE99A98983825CDA74B35E32283
          07103563C46D62B90930A68B1127EB6AB7430455D3FA2F9D44028C522AABA39C
          55CE4E3D0514C7CAA4E6B6B4DBD84017C610391440F723608260ABA80E89A12B
          1D3A284BB90D59BA09B9DA9B7A6F989653014840B8CD467BCD945E23B3329948
          2F44D8359FCC1FCD722A80819586723374B4141AC8C86A6A7DA6520C00157AAF
          22B8740282A9F36DDC9CFA918B32C6288E2547BD1EE624965400112E920AE01E
          C497AE803618C6B10D3536788E8E8C8C6CC060FAB6539B5D6E82C77360606003
          4EE03895A0CBED4102120F06833D4B20A0A437248CC38B8B8B8F9C381D0EC804
          1A2F5C594AC29DDD81A6A79F3A828B249EF48C2085AB4AC9D9CE2EFF733B9A10
          AFCF7A0ACCFD4EEDD7977EB8317C81EA23465B5A0FAC1704131843B6BDF7D1FA
          C6866D9D38D1D2FAFE7A8DC81F6CFB01DFF14C631863E82EEE4200A5EECEA492
          C0EE76BBC5E59E139D702151ED6E8A1F48F3F3F3454141813449DFC5D31247D9
          01C72F2204BEE070E83246160572364C12D2B7A73195092A0968DC91E1059849
          7E8F0434C072AC6359D66424B0EC5FCFFF07412097BAC3E32888000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C6500416C69676E3B4C6566743B70A6FEEB0000
          02BB49444154785EED97CD8A134110C7A7F24D486E790B0F9ACBE241DDA30751
          3C9A579045D0051FC397D08BA282E8C1CF6870159CD5180F1EBC88104F0137D3
          133CE4ABCBAAD04DF54C48CF1C563C98406D5776BAF9D556FDABA6B78488C1BF
          FC945CC036806D0000B05AECD7636200191A1FD9E8B33103309FCF6F2D97CBB6
          D61AC804E018226EFA3D6C4C75A98464FD4AA57283B76E2C01C32F5CD9DB258A
          4B143790E39A1C480484E4CB26361B701C1F05EF5FDC978CF8341047BFC82201
          3A0E5A909B556D3CF6DD5031992DC9A85F8487AF9FDC06CA849440D29E917281
          140A05D6141A6DD912847C2C2B80B28956A07E607A0F033900067E6E369BFB0C
          15F307C090F6C5CEB573762F0A5DA480F24C526D7C4398A8A3E0E0F93D76F5C9
          D3E73597E94BF82CB304C0A956CA684010EE0F31D464824DFA0251E328F72062
          42F8863440ED08A932E4D6030070FA83C562F19118C51FDF3E144CF43A970618
          60E05EA0470B60B4B0331A8DBAAC09EA7F2C97CBFD7ABD7EDDD786ACFCF6A5CE
          DE590724F54DA41AA52C491D98550B055913E3E05DF7A16F0E08305663B24820
          E92C589A000546E07557BB1BC05B020038EC920666B3D96A16A483CBF80E5603
          6616D879C0E9C762B118E6D6001978805E2D102830C041ABD5DA770598198068
          0099E8CC00B326739B9CFD28837A42257CFBEA01C3960C3F716A17BF0E7AF9EE
          03139E034A09D8325C385ABAACBEFBA58A55EE0B49F8F2F11D984EA75C029016
          CBAF05DB7634073E1986FEF97D9028834F842B0D0838BFF8DCE7F4070434CC76
          86C3619784881C50AD56EBD3BBC13F0728EAF6E5CED5334E0F275B4EFADED202
          2D7342FCD47CFD4DAD7DD07BE46B43B1388E48074A5E3A6B42B0C138C25C073B
          E7F3DF07B85FC3DED3BB2B0DC881EC7B8067EFAA2DABD5AAA63264CE016C341A
          37692DFC85CBA966CB0CC09816F0B119FADB705DDDF85FFC63B20DE00F71A430
          1B8F4F7BFE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000013744558745469746C6500416C69676E3B43656E7465723BAA4E5DA7
          0000030849444154785EED57CB8A134114EDEA3C09C92290BF1071E24266E1CC
          2C5D6436A2E063EF46B25141FD04378E1F21088A0E08E2F3011947191A8D1111
          77BA719BE94732906795F7B6F5A4E8EEC0202E4CC3A5AA43559DC3BDE79EEA10
          C698F32F1F17E2FF26B02490D75F0821F1205E0F0DA0CE114A6718F0D80404E8
          743ADD9ACFE74D4A2981B001FE9C90F47B22E97C3ECF20BAC562F1AA22641370
          10BC75BEBDE16820FA9C396A3B850931083198EB8B98241C45FBCE87570F5546
          6C022AA2A00F1148407DC204909E552AE171501B98992D3BA33601D481B7F3EC
          1E99CD6622A538E2661C3352AE405CD7C5B3183F5394C0C36D690458A954BA81
          7B7838C3E1700BC09BA980262904440208F8B956AB5D435011590430D8F1F533
          71FEBA3BDB2E3C2B9B17DA6B802EA5200ACD8C54F339471884FBCEEECB0738A5
          C7564F512CD317EF850449D740D8471099D230D644280054300A2161ADB97842
          3F48EE514C99ED032AA228BA059D71023421D7F2D1D6833A07D38F65F0EAF5FA
          4D2DF5D4F4019B00198D4677C00B9A021082700162D880B6160C11423818D0FF
          AC5028742B95CA156490684400DCDC3C77795D0352F53552CD54BF9B3AE02335
          5A7810FACEFBB7DBA93EA04C23F421020162A55DA269805AB73BF694EA0B486A
          1BE67239AFC37D006A4FB80790041FB0742034C0CB204A81E9C7B3B37D006A74
          1DF70A11FABE7F1BCB822434C0542D0090C3017B8D4643F8005DD8078EAEB6E6
          B8EEEBDED31CFAC0E98BED933136EAC1CCADE9FD4C19F5004AF8EECD23049B23
          F891950DF6ADD759CC078661DF780F03D044149A8565025D8D69DF97A1DC9F4D
          80FCFCBEE7F232A0163EBE7E7217AF69829AB080EC77D976B0F713C7A0BF7EF4
          8C3224F9800BDE1FFBC06432210922CCBC94841051803C18122A97CB5DB81BD0
          0768DA0749B375F6D29AD6C366CBC9BE5722A0CA27B4B9D9B507D0DABB9DC769
          6DA8228A021051A82E1D1CAD7319E724461B58ED5FFC7B00FBD5EB3CBF4FC6E3
          31D13664A63C656DDC9670CD532843B60F54ABD5D807FEC2C729C5C824A04CE3
          F0C0F6D9F6B3FC6FB824F01B5AEB5C21DA853B690000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C6500416C69676E3B52696768743B72EC7BF600
          0002C449444154785EED57CD8A134110EE9AFC9110DC27118C270FEEFA00D98B
          28F873F7223979D0A7707D0441411116C51F5051A3D1289215C19317C1275827
          339B85FC765915A6DB1ADA49CF20E2C10C29BA2754E72BBEFAEA9B491911D5BF
          BCCAF2665DC0BA0000582E1462FDE3000AA374E4A02B930198CD663B8BC5A2A5
          B5068ADF022062D6F7904975B98C149FABD5EA154ECD6C0183B7CF774E290122
          F7B4B3C7356D205510D25E26A12D388E7FA80F2F762523D91A8887FB14430B28
          37688024ABDAC24B3EE893668B18F58B1000066F9FDE81F97C6E28E5950FF3EA
          A55C8298B3AC2DA21E832018F80AC05AAD768D5648428D46A31D026F150174B5
          8126AF92670CF1F8D619DCD838A25E3FBE19D0756CFB426793D0AD144CA33145
          B56890C831870E86A1EABFDAC55C3E1047FB0432B394464B4D4416C0066A0A0B
          EBECE9B4A9A19011C1B72F6F4C0B7814F7BA8F6EB126001157D10C59AD211659
          031A00F67C05C0783CBE415ED03280B40723400E3FA0AB87E43C507835C0EA6F
          6D9FBBBC2580447F25D528E75D506DF2756A840FA250BDEFDEF768C098461452
          0C0D8843BB45138062DA95BBD53201568E61A9541AF4121F205784648420C307
          72F902FD26B20FB0C770DACA021A8DC655D68D11611886D7B92D5C4411F1B939
          BC6035970F1C3DD15EB00FF49FDF2DB10F9CBED839C9D8CC35A6B995DE9FDC08
          7D986C5A0EE350BDEB3EC0CC16C818910F046A6EEF233291388ED28D45836E57
          B7250A4DD1C57CE0FBD78F816903D1FFE9E593DBC0E3C89AA084C25A0000ACD7
          EBC83EE0D34040DEBFF481E974CA80EC0B8E080B3E945884E6BEE26B013078FB
          ECA54D31C3E99113736FE8D7E97EBB96CD1AA0D1EEF71EE67C16C443328EC82A
          CC528C4E877FF5D80516E7F3BF0F60A55219F49EDD83C96402E2809FF2ECDC65
          0BE831AFC90BFC3ED06C36973EF0175E4E3587B78024B417B878A0670C1D75E3
          7FF1C7645DC04F8F6F50AEE427BBB20000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000014744558745469746C6500416C69676E3B4A7573746966793B7F7E71
          8C0000024A49444154785EED57CD8A134110EE9A642604F232B9FBF300A27834
          AF208B070F3E862FA1176151440F821A5DDCDDC32CF8269A99091EF2D79F3561
          8BAAA1DD7493087B49414F5732D57C1FF57DD52404C0DD6664EE96E348E048A0
          6F0B8863B55ABDDC6C3663EF3DF1FA2700809BBEA71B81FA7DF0FA5914C57370
          0404245AF0074F4EEE3B036273C883C373421D42E0DC164188B9A6F9ED2E3F9F
          3A0EE2650984D154BF78550A6812089083BEF092716EA9A2DB2DDBD15D04AEBE
          7D7C452C43470200492D57103D47448E5B8F2CCBCA1402B9B005900A18232A75
          79940080F1C3C9B37BA221145DAD007DA7ADB602698D1C9A573377FEF5143102
          04C0D5B5784020CCC3063C2FAD925C132F1C92C65010CAEFEC011E470A6548F7
          839586B56F3DE089E82AC903A21980BD002D51E3270210F50071F1F8D1E4E4AE
          0132FADA56C3C8627D20F5BE33C2F37AE62EA66F916242D7D4335E9580845D10
          340368A6DD85A9B705B49340ABD3943DB05C2EB777C10EED93C7B4D7EB813D00
          222ADBB2140F8866FB9B2FAC01471195403D60E6477CD0EEA6B776DC4DBD4A27
          D5BCFD6966EEC7F41D7648A0316FEF81BAB6974FA831045DF7401207256D2246
          A0FCF2E1352D160B0240A2E3215E20220C87435CDF0388993037F37B90F924D8
          84F2398F4940EBF57AFC78F2F48E99E1EEC899B997F67BD55B731BAD0778B4CF
          CFDE234502D73415FBA01687A9B60814568D4360733EFDF700F23C2FCF3EBDD9
          7AC01C486F7958BB95603018F8A228A2F70046A3D10BDE33D14AF783C3B72B4A
          E07AF9FF076C9D10C6F1BFE191C05FEBE11BFD2EEC53240000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001A744558745469746C65004C696E6553706163696E673B5370616369
          6E673B94977EDA0000053749444154785EB5575B6C5445189E39E714B4C5B076
          2BF0A289B162AB48BD243E34EC6EA1556B0C18414D2C162A6AAAC1C4501E482C
          A00F061E0885C4075D2FA5D022A45508A9507AD96D51528C18D39A62A2C6CB82
          48A4578AD576F7CC1CE7F6EF9C8E361B6B7A92D97FE69F99F3DFBEF9CE2C46FF
          7CB06A9E18818481E7A139791E7AF53418B71F7CB9B59649478CE7F8C146DFBA
          EF85A3E1C54B96C4AF5CBE5CFA4DC3FACF988EA82CC05A9CF19D991F0F9A634C
          58B693F346E19DB7A0C1A1F19D6CFC286BD467D8E66B645F1BFA8F7D4F0595E2
          D2F147BF7C436338185C10C9CD5D80F2823745963DD75032D05415534ED89B77
          463B31C611EC29F7B96403090B2641C90548CAF430F664DF75DDCF0FD66D11C1
          F91DB09D1B033B0AF217894D4BEF5884AE0E8EBDCEF467F81EEE20C65664D3D3
          A568ECFA04A21409BFA8E749234C322124EBB23EE512E644231E150EB4C5BF0A
          4126D30E14557D14E1510773B3792C288FC9BCE0C2F0DDCF7E50F2ED91176322
          08423AEB9B3B1F16B18131E823E8432674E47A9D5CE526537195550F43FA1FA8
          6EED62319670F59AF27BD089B601F902E29EE9FFF0C947A00C1A07BAAEA63475
          06F0A8C828600026BE8EAEE635997F7FF5A7E39EF2B4EFBD353733DD2400118C
          CCD23800CF85E879738C054418D758727D1B9C576ADF69E720F4B0069704A44E
          3BD57DA18752A518F09AF66F2DE733955BEA68E3BE1A61403BE0633C4AF5D0D7
          C18819AF62201CB9765D8050029B220AC685530048390650B6C5CF0BE099D46A
          F200BC40AFF2394829E9AA6FEE2AF3FCB44C7D6043903A7D22305FC2A4EB02F0
          847E260764244446603A4BA2BB36AF567BAC0C3537E7A8AF94D6E1FD5B11E0C0
          748072EF4EB55F60BBBCF4A20C349B118CCAE179CA797026C9A5B9D8E68B94A4
          40976A2EEBA56D6F7760CB0E4B70011035F3F10D58660FF0C1351A27FC470032
          79B6E5DD5A0EC8493303E01DD163ED20B6ACF0C6A756A2A1D1EBC20080956836
          947A2E41A7E89870578964C2CE9E2F57A820B1E980C523559360DC0574300E8F
          1D688997722B70E41055EC02C74E48D07B92B205056BA75C37D90D5F596C189F
          BF6CD3F13F81462F1C589BC3C4948F05B354B332D4DC942613260103968901EE
          65D9AA42382ACE0C06D02C8CF34CFEC5DA1F8A5DDD7FBD0F4822927B0CCE779E
          AFD9771ADB76882275BEC562590A001FA2529A1F2397A4CE7E12DDF118DFB1B6
          FA2D722CBA1D78C0B80B028840A79B856D27B461DD4A7475647C1AE0D27B78AD
          2992744C241600901DDDE757A44B470D26F41BF1F3BADA6041ED5814B1868F63
          A5D32E19084E00958E4820826342CFBB6E2AD903BC72ECFDED184AE3F8CEFF3C
          DE34018A353770B02820924375354FCC08C2CC18480198B54E67C02AAC3CDA86
          ADAC10D7534A45747755B6FC8A68AAF7BBC315652627CC426A26D441B9690C24
          C77FAB5B7C7B41A8E8DE5B45CA22E102D4DF7F115DF969602F6469FD6B7BDA6C
          CB0E89EC722791261B7DCED508B020FAEA7AA67042DC54EFC943BBCAFD9752FA
          E3899AB85DD1D43B321A2C0E04B2D1E8C8041A1E1A3E9738B9AD1BEE030C85A1
          CA7565E8F7E16B69C011AA71409561DE83AF219A46CDF288B5F77C510C1F35C7
          470EA9E4D8A53D895F02C7172EBF0D2512836872E4E7BD507FBE987F520F3677
          AC02A0F9BF05946A6392FCC4AFCE10A169E092D4548F7A27D535921E652FAD68
          3C5554945FDCD7F7FDB91F8E6C7C9CE926E056ACEB38330833F411040B64645E
          C99253A31777271281D6A9D14BBB217A98579BAC59FC13D26B75C6F5B5CBCC42
          FE33F56F3299F33FFE1FE2CC6D666EB7F4D7507B3A57FF8E1D63EC8161433767
          CFDFAA8DB2B74E38503D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA864000004DA494441545847D596CB
          73624514C6A34E9CE8E4451EE4450804088190002184404208CFCBE302171232
          C9383EA7AC72E1CE2A57AEFC4F2C755CF828AB74E3C2BD0BDD58658DE53AE5BF
          713C5F0F076FE0466366B2B0AB7E756F73BBFB7C7DBED35D0CFDDFDB0B5D5EFC
          175EEA03BF61DE33372C34CCDC6546BABC62E25513F74C60DC1DE6994460F270
          FBF45D6A9E3CA2FAF13B546FBFCDBC45B5E69B546DBE4195FA432AD75F234D7F
          40C5EA39152AE08CF2E553E2B910810DDCB8290113535EBA093C77400016B402
          83AC8097483F16425A47993113E35D26BA4C9AC0D89719ACA31A02C982020608
          F0584040201E4B70B300ABE0B62E0302547083BD343A8FC8603F1BF0B3C55E1A
          5D2F1BAFB3970F9597A52A38671FCF28A7DDA75CE994B2C513CA168E29936BD3
          61AE4507472DDA3F6A522AD360EA944CEB943CD029B15FA3DD5495E2C90A2C80
          F8BF0558F9749BF40BC0CB55C7498E1190545F27E5E6B44F7599EE3E3116B12E
          098027FDFE0A727E6F1A5882CF749F0302EEE43578D951648AC774986F535AF9
          69B08F4D4A1E36983AEDB19F89831AFB59653F2BEC679976F6348A254AB41D2F
          5264A74091789EC2B19C626B3BCB1C5128CA4432B4B17548C1CD342CC08650F8
          4F0558F9749B704C64B227002F4889F968FD53CACD69C7BBF97BBF1DFD96E089
          B1B01CB12F0990E012D82AB80400F88E9A4101E36E97FBC35CCC5253828C87FF
          3D01C3F15499FD642FD9CF6DF633CA7E46E167ECA99FF072937DDC601F4361F6
          32CC5EB29F3C178B6203B2096C004265E7E622C413DF7A0588A60458F9741D78
          2EB2861D8D14CB7A5D6F9D7CDA6C9F5F34DA67A41BA7546D9C50596FF1E5D5A4
          8256E722AF610E32AAFC478300A40FA981FAAB526EF612A08F712ADDB9A25E37
          3A0F9E34DAF7397087031FABC0C54A93F29ACE81AB7C5396F954152100EB22A6
          6A2200A984A75681FB0BC95C4C103EAAE9C667B566873EFCE863FAE6FB1F3970
          4305E66F1EC68BC0A9740EFD650659EB59A02EA1E0569A02A1035A67FC1BFB8A
          B5608A7CC124F9027BE45D4F283CFE5D5A5D8B2BDC6B3B92CE494D6F5D683583
          BEFCF607FAF9D73FE8A850A17456C3770748EC67F8BE50E77F9E41D65401A241
          C05D2B7FAF03CF45B66CF952FD2257AAD1E3AFBEA39F7EF98DF63305BEB4B2F8
          BE08A2F1141772027D3BD33B82686201D222A9B74A3990EB54AE548C857563A9
          74FEF374B644EFBDFF017DF2F86BBE25337C3B1E20E0120845E214D8DC467F8E
          1910802A1601FDC52681CDC167BB7D0850E73C1CDB3592E9DCEFBBC94315381A
          4FCA8E9500FF46982DDCB414A02C70FB76C8ED8D918B59F16CD3CA6A949C1EC6
          1DA5657E5F7647C8E10A2B96C00AD8C282285C75FE03A1B0110AC7BE0885E37F
          6E8477B8A6A2F8AE6AC0ED0BF2BAEBE8A30606048C58F97B1D782E04C0423949
          C8986B2DB8455E7F48042C2FBB7CB4E4F4580AC08B4C96F36F3E7E569608188F
          C5B009ACA336C32CB87D01CEA21F0171EC9CF30E17D9179DE82F30974E011A3A
          729DCA6EFA419D9891DF25381A9E1034E7707969D1B98A804E666566DE41D3F6
          25F4712A0604FCD786C9560BF40460C7B30B6AC74A806D768126A7E79E9B80AB
          1A164576ECD8F1947D11019505E3B6591AB3CDA00F0B2ED5C0F36EB0C5363933
          4FE3537604C4C533776F629A46197EC7F185C85B6B528852C0F21F438A18C58E
          31B7D6905A049022ED2F6E53D10E0DFD057747FD72B06425430000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002D744558745469746C6500466F6E743B436F6C6F723B4368616E6765
          3B426172733B526962626F6E3B5374616E646172643B5180D882000009044944
          4154785E9556097014551AFE5E774FCF95C94588211960920C0942E40A978829
          0924C811DD08AC180B297475510BA9DD45612DA9955AA950AE78B085A2EBBD16
          96CAAEB06C818B88065070C583AC0408241173421226E74C4F1FEFEDCCEB6E93
          B592ADE24BDECCEBD7FFFCFFD7DF7F5413C6180AD7BD8DF837E2FF040063E6A2
          8C5F9FDE751F0140666FD8FDB028BB7680010635100E85F654BFF2C05D008C09
          AB77B218402903610C8C19B64F50EE8B8251868B7B1EC56048004C43705B6E68
          9301E20E6143101CF20A4912410402893910959C4B4617AF4D6D3CB2ABB3E6AD
          8769FEDD2F304601069D3B8BEF29FFE017768421080096C1C0D3F3AB810F72C3
          3D959904640E08E14F12FF939C0EB77754EE72007F018FA503149C34F7609876
          F62165189A00A8C9D2D6811B32CAD77F5E5D4B0008AE94CCE52082183F330523
          70C84E080E4F0580D70010A6B3F85D4ED05692808252EB8CD161143023F25C31
          AEB955030601004E4074C8CB05424C5ED67D4112203A5C378D59B03EF8E3E117
          CE5FF86003CB2EAF64264366A680CB61984774981450FE54D4921F5C3A0A869A
          371FE4C53771D5B6B120E24C5DD71087284A004C799D6E197272C6DD00B670AD
          A961969061162210DF53D37E58050CC3626CA50B062763417025A6971BAA2E6A
          6AE4474914CE128F6F21114C13499621CAAE95009E02A037EC7B827067C38090
          AD180CC14E01D329676A509D7F7352B6FCB25CAEAA0AFADBAF7C18E9EEFCD030
          74ABA81908E1B5903DBA74C32D00445C1B6C05A895869F7A07E7DFFD0D977FFC
          8ACD013061B6D61F46A4BBFDA3AEDA33D5AEA28AE70597E06256AB3ABC5E88CE
          C40A009F0230F81A1A6428027CA898DD627035E820F9DD23FCCB2835A086FB43
          ED5FBD7722DAD5AC8F9A75C727A2C3B184700119248703A2C3799BD73FF577FD
          4DDF76022007E795325EAC84808061D1918FC90745F3C67A24E97D01986150BC
          F17D77E8A1811AE02A00CCCCBFCD561224D72F34250A3D12FD24165C05C0D4DE
          AE7D0E97678928F2F8DC5EF6787D493945653102EF00A0E3B265060BC1D7FF49
          DEB9F1E6804F168FE74ECDCEF4DFBB067B56AD5B33C19764D600D5CDDC53A6F3
          0EA8DBB391E73E58F66880107186D2DB073DD2B5D79A4A46DB37FBF7E95145E1
          6A51CA1593DD1E48724285A52AA13AE581634B7875C68DD9A96EE7F1090B0A33
          FDAB5763EFDA8D98797D7A5CED952601A673E9A1E9A066AB71029EF4C08A78C1
          A9E13EA5EB42D5C7566E6957EDF13E2D123E6CE83C655C3D519220B8DD4549E3
          4AFD00C4BCB70F0800C82BD3660732123C559316CDCC4C5BB418471EAF44E168
          37BA7BC2A86F6BF9D24C81A603D678FD61FF663248FEDBB58802231C39D6D7F8
          759F2D3800AAF6846269F02D1524118481CF0D97274174A6E6AC04F02700ECA5
          29334667F8DC55936F9DE14F99BF009FFFF179E4A7013D9D617C79E6727D537F
          E41EAB0DCD414475031684EC85EB0380384DEDED8716E9FED856C56EB5B6537F
          3FA82B113B0DBC93248F07A2D35701C0F587BC82DC0C9FF7E89492427FCABC79
          F862EB0EE42403A1D60E7CFA5D53FDF7A1EEE2EDAD8D2D5611EAB105AE801548
          F48C0CDC25108048A2A1F7367D06C00940B209F635575343538E88BA7331ACA9
          44888058718E9B933F7F71418A5A3975DEE4AC94F9F370B2722772D3655CBED8
          80AA7357EA2FF4878B5FEBEA6C064025B308F9FC45E3A1AD03F2CBEEDB28004F
          728A28172EFDF775D316018C7092F6C81644D13CA37C84F27A18210BB83F517B
          697A718177C48278F01711F427A0B9BA06472E74D49DED0F97BCDBD7CD833F9E
          92CE4C05A8C615B0208C297E289F106952A4BB074A28640660BCDA078615031C
          EE8418C16408B2C4837B955EDCD77E0C453707BD234A16E0C4B697306E6C122E
          9D3A8D23173BEBCE459492F723BD4D00E8B7374FA4EF9E6E81A5C0FFF6BE3B2D
          504E751DBD6D2D46E8DCC11B22ADA72F5B2D68DBD8635C0E2C7EF26577F2C832
          97A1604DFD0114CFCA44DAADA538117BF2BC9C54349CF81A871B3AEB6A14B574
          6F34DC64751233A22A34DD80A50045EBD167EC229344A77B991A51A0477ABF89
          056F0510B108309B84B5DCD1AB2DFF48F0FACA26FB1D985B528191592E9CDCB6
          0B79B929A83FFE153E6AE8A83B1D554B0EE96AB31DFCE4E4B14C5754C45BDC2A
          421516447FD1AF278048E3A3BD5761283D87016800F4C1046C5B0046B27AA976
          725A0E7BF0DE15A4A060349E5B72076ECFF2A0F6F8291C6808357EA945979E34
          B456CB07FB7C7C2633A21AE2D029B526A1C160B7986BC498725006B52F0CADAF
          E3B03D7C5227ADE1463F6B4747764EDEF3F7AE2A233363C1376DDB8731BF7F1A
          7BBB9C78AF45C3FB23A67C180B7ED54E5F55761AD3550D7A54E58B0E7EE1B4DA
          2C35FFCE17EAAEAF7891A5CF7A2422C80919D6B9D0B4298D07B702BB762CB96E
          D9BAE2F9274ACA7E459568946DACDCCBDE3A54C31E786A379BBBF87E162CDDCC
          9227AE3A0F200B80C78A41EC97607B09839D06166E5A410431078C42F27A3BA9
          DA2700700010FCDB3AE27B7EFDCCC2B495C160E29EF515EAECDDDB2793DF6EF9
          1B46E566E2934F8FA1FAE821B40963C0DC49F08C1C9397945F7E27002F0079A0
          7606F093D371CBB61F722667ED22440488006FDAA8ACAC5B1EAF4A9EB8F21100
          926DF7D89CE499FE40CACB37AD9E8B8CD23B7175DF1B98FACD93D8BD630BAA3F
          AF428723074C70711FEE94342406A66FF705971FB0951CEA7D80A3A7B5692663
          F6FB2805810123AA04A9AA076D9526A4397CA37CE21B737F394D16530A103AB6
          1797CEB420DCD70BB9C78FF37A32C8D58BA6398305065DE99D8E61205905A25F
          FEE2B9444BEEC1321956173000F284C2458F4D9CF6434E62C6F5B8FAC5415CAE
          6D43FDC510DAA392AE5E39766B779B5637D03136F85E0510E5FB9F810CAEEC21
          2462F66CC82FDD58947343E1FE3FDFDD2EB1A36FA2E9FC655C38D38EC61E86E6
          282A5F3FAB3C034019A25D99B50C7B1F036C483F634A8720284C5AFE6C796A46
          C6CEB2DB674B5BBEED40EA77FB31AAA61AADFD404863CFBE5DAB3ECD8795ADD6
          3018EA1EE16C860021C426208D5FBAB58C317983AE19415DD347EA8A523BB6E7
          B373BEAE933BFFD5AC9F04A0D883A6222072975217C55FBB077CDB71AE910087
          DD8AB2A5181924A9662D3A20F550189E8084FF0F3B986605B459B1C16BE0ECDA
          F15FB5BBE68A81A91F580000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000026744558745469746C650046696E643B426172733B526962626F6E3B
          5374616E646172643B536561726368BB659C080000091449444154785EED9769
          6C54D7D9C77FF7DC3B33F6CC803DF6D81E8FC160C2BE39EC84B00493D0900082
          AC4D42DA34A14A1AA52255525A2444521AB510B56F5E3590405AB54DDBF7059A
          D20022511262C0D040CA6AC050CA6E636CBCCD78B6BBCCDC3BB757C853228844
          A57CC8971EE9D1E81C3D3F3DFF799EBFEED1916CDBE6EB5C82AF7929394092A4
          5B0112F0C5767DA5FC5CE7955B17CDC575361737E7DEFC7B73FEAD479083C5D6
          4F0FCEDC567B74EB5F3E3AD8F4A7AD9F35BDB371E796D56F6FAE016440DC2874
          FD861D337FFB5EDDD65F6FDA7579FDFFD736ADF9C3275B56BF7563FEAD054880
          F4E1AEFA6581C2DEB5D5C3FACE9D75C7F0F0F409C3C243ABCAE7961417EDF8D9
          9B9B97E544E4F27FB369E7B27059B076D69411736B268F0C8783BEF0F081E1B9
          7DFA94EF58BD6E6B2E5FFA8F046CD8B677A6CBADACEC5B1EA4B8C08F696589C4
          93747444280BE4535A1278F599977F39A38717BFFADDF6E905BDFD2BA78C1948
          65B8988C6972B1F10AE7CE5F62CC88FE941417BCBA64C5DA9A2F13211CF3E1B4
          8AB38D6DE45A8FA4AC94254B58A6899005AAAA138B695CEDE8A4ADA39BAAFE21
          E1C9F7BD0A28802CBB3C2B43C10291540D00849070B9F2387BEE12ADED510654
          8684903DAFE604EC39F84F9E5DB606A73602C0486750B53480B46ACDA66AD3B2
          264B424116024721AA91211A8991482491858240C24CA747E74690CE64AA53BA
          46366B03E05264DC2E1799B44E67348695B5B02D73E2A3DF5D7E3B20A64F1822
          195A8F5800CD30A81EDA57028470791699195DC8B28CC72D639A26B1B84A3CA9
          924A254116685A9A4824EA0664408E75C73CC9A441C6CC00A0C8021B093B0B17
          2F34924869F42EF40B77BEFF094001244DD7AF0B507503401A32629C5B37328F
          9A19036F9E0B974BC1D9D39D48918CC74926356C01274F9DA6ABB3DD337AD282
          69772FFCDEB48693A73D5D9108E9B409802C0B10324832972F35E3748B926031
          59A48783A1BE7980F8F3FAE5524E003F7FF9710910B3E67D6B563A9D2ECFCBF3
          A308D911E176D4EB44A249DA3BA3A89AE618317ACD5C99B489D757F881DF5FF4
          51D6B689C51268FA750F085920141791EE285DB114592B8BB0AD50CDBC6FCFFA
          A21915809E8D6C096571C650491B3A4D97AF60A6539CBDD0CAE9732D5C6D6DC1
          D0359A9BAFD01D8D3902D2B83D5EF27C3E0C87D1540D5D37B0B2593ABB224E87
          3A5053D73AC7C963FFA0A0A890406180EEB8F234F0096001B6C839FFFEC75EA8
          926CE619BACAE0AA10778C1FCED8EA613CBC60268B1E9AC9843143496A3A2DCD
          ADC4E209321923F74D25EB144D693A9168CC19CF591459E29179D358F3FA4B6C
          FEBF3778F6A9B98C1E5A8910809D9D33B87AC66D392F488000DCCFFCF07FF778
          95EC841F2F7912BFDF4F524DA319696CC0E352F07B3D7447A32C5DFE066D6D5D
          C452297AF72A265C5981AE25292F2D627CF5101E7B7036665622A91968FA75DE
          E775A32553BCB2EA1D1A2FB71CA9DDF2560D90128098FDE0B303F2DCAE094BBF
          BF08D356A8FBFB2556AFDDCBD2D76A59BEAA8E35BF3FCCBEC34D58B879FDA73F
          C03433642D8B50284845791156D6261E4F306FCE743ABA7576EE3FC34FFEE703
          5E58BE89175FD9CCEBEB3E65F7E7E748A661C5D2C594854AC7560D9D34105004
          2087C2FD17F5091591C90ADEDBDEE0009FD3AC07F0F61B85A7CF089AB502DEDD
          7C8E1D7B1BD12DC1430B6753102864F4A8814C183D883C8F9B9AA9634968261B
          B61DE0B5B53B38AB1543BF49D87DC7734E2D62FDC6836CAF3D495CB3A82C2FA1
          A272F0E3805B008ACFE77B7C4ECD648E9EBCCAF6BA8BDC3B7F06AB9F1BC3CB0F
          5432A8D24FAF6090B26143D9DF10E1F48508F7CFA9A1A8B8882DEF7FB8FFDD8D
          DBF779BDF94C9C388643279A787FD7696AE6DFC75B4BEE64E5638319525588B7
          AC9CA25193A8AB6FE1C499ABDC336BAA63CAE023804B01644950E1C9CF675BED
          614A070CE4F93915D83664B1993CD8CF07F571672F11AEAA60DFD1766EEBDB0B
          BFD7CF91BF6D7A18B016BFF48B56C595C75F3FA9A7F78061FC687ED535DEB26D
          EE1A5EC8C6435D600BCA06DDC6EE831758FCC0385CB23B941B81645BB6924819
          B4455402E541E27A96886A114959C4F42CF9F912794E0443013A9306D1988624
          097237A12C64A2718D96AE1805A152BA758B8E94497B2A439766E2F54A789C08
          F629A53D96A43BAE635AA602C8022093CE24545545762B4E21C1F6866E5AE319
          DA55938BDDE96B6785050A6E0FD802543D4DC6CCA4E9599669A60DC3405164A7
          9060C3F10E9AE2062D6A863331837C9F4CA0D08DCB23C8CA9048A93840124000
          B6AAABCDD1688250B91F434FD0A69BEC6D4A703A6A8047C2E797290EB81D304E
          51A187AEAE28BAAA3602169075EE884B9D5DDD94870A30D5182D5A868F1B631C
          8B6AD80EEFEFA5102A76A326BA2809F88844BA3134B505B0046025E2B1DA0B8D
          5798561D26DAD682371FF2BC8AD37A9982024179A91BC595E562532B23AB7C5C
          BCD44C2A11DB096470229188D55E6ABAC2F4B1B791B8721E5F3E787D0A3EAF42
          51814CDF320F2E254BE3D9F38C1D54C6F9F3174925E375404600E6D986036FD7
          D79FD28ABC32D5FD7A517FF038A61E23D0CBC697076D5D11EAF69D6060D085DF
          6573ECD849FD4CC3FEF5800E18A78FEF5F77FCF829ADB4573EE3FA0769A8DB8B
          9DE8A4C407BD3D36EDAD6DECF9780F434B7DCE5EE1F0A1A37AE3F97A87C79000
          05C89F71DF77168D1C75FB5B774C194FCA923975354124950120E8F730B8D44B
          5ED660DF67073876E4E08B07F6BCF747200100F8A6CE5EB46864F5B837274E1C
          4B3C9DE558531B9D711549489414F8185111C46B67D9BDAB8EE3473E7FE9D4D1
          1DEF020909900017E09B7CD72373CBC255ABAAAB8787C3152182C1626CDBA6BD
          A393E6CBADD41F3971B5ADF5C28A23FBB66E01E24006A087F78F9FBA70414959
          BFD746578F0C85FB943B7CF01ADFD6DECEE5C666E79F1FBADA76E5C28A332776
          6F036240CEC848801BE85D161E3878FABD4FAF9D35FFF986D90F2CB1EF59B8C4
          9E39F7B99353EE7EF2EDE2B27EC38100E001440F07207ACE02C5A595C327DDF5
          CD7577DEF3D4A969DF586CDF39FB697BD25D4F9CBA7DF282770A02E5A3806220
          EF061E807F8FA3A748195001F401423DA00F70DD0C93BBD45C80B727370CF403
          FA031540F0CB78E9CB1F22881B8AD84016276E7C64DC8217D779AC9BF99B05DC
          E2FCE6C25F95FFEFEBF85FD0430BB08C3063360000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000013744558745469746C65005265706C6163653B456469743B69AAF970
          0000085249444154785E9D570D6C95D5197ECEF7737FDADED296B6B0524A47D1
          8A4506825010112A5264C1C58DA9414864996E6C4C16F027A2C2CCC212B398CD
          28E82671C33926718E2C71B00981315AFEE447A4DA851F5B2848697B6F7B7BEF
          FD7ECFCFFA7D9E6FF672B7BBC537797372F3BDE73CCF79DEF73DE75C822F6FF9
          E68A2FBF48FE58394ACF2522B23C874C4E2C340CB397F75E80E002420870E18F
          587B4F7D00A03CFCEC96E27113A7DEADE9E16F0A901B85E01542906ACED86546
          791FE7EE392395DEF9C9B13D7BF7BCF5621200972EB2C80F2397A5C04B7F3B87
          FB16D405FC50A329C4035EB9E1D5B2AF36CC7856D7438F8C2E2F8C568F8EA1AC
          2482485847414447DA74610E796F22838EAE04BAAEF45B4626FD465BEBEE4DFB
          77FC320E8049606DD58B7F5DFFEABA453F054001F02C0518E3C3813D579F7BB3
          F5DBE1C2D82B632B0B4B6FBBA51AA1880697715006B8422061503F548B8430A6
          3A849AEA3218293B72F24CD70F84F28D15636F9AB1E6CDE797FD0900566EDAB9
          5E28FA93005E00C0725240258180ED86DF1DDE30A2A4F899F933C72156148141
          390C83820B99643F4D0097A3ED70F40F3A6010187F43356A6B2A627B5BF43796
          6FF8C3143E6477CCBCF9C7874E5D04001D800D80652B40196A7445F1C0D7FFB6
          75637945E9FABB1A6BC1150509092CC1A40BDF290792691786C9FCA40A0E74DB
          0E7455C59D7326A2E51079AC6EEC484C98508503C73E05005542922C024FDF37
          C9075FF7EAFB4B63C5B1F5F367D4C01280695030011FD5B629CE9CB9888E8EAB
          88F7A6901C345054184549690C636A2A505337061CAA4FD4A60219476056633D
          C2211D1D711BAEEB2BAF4895A15DD722CA9247378E8A14956C6E9A590B8B2B48
          DB0CCCEF0CE0FCB9AB38B0FF34920303FB1C23B5C74CC54FB5B7BCDD76D3EDF7
          DFD2171B39F56247D1C2B6D317E64D6F6C40D9E80AB88CF96A7C663170E2FA0A
          522609F8964B40ABFBDA1DEB268EAF28D1C221C433148C73704170E283B3387E
          B43D918E5F7962DFB6A7BCA272652189C37FFCD90100AD00B6CE7970E3D28386
          B969CAB489A55575E360510640A60C02AEC3731508763F79EEBD2342E182EF4D
          18578EABFD369206854B392E765CC3A963FFBCF8E9895D4BDA0E6CEF0C0AE8BA
          43C66F8796B79FDFD5FCFD2DB30AA3A115218D60D0E2121CFE48299578B90A68
          B72E5876EFA8F258A4DF64E8EAB37DE9296538FFC905DE7BE9A35543E01DFF05
          9CC8C20ADFFDE8E6C79BEE9AB5A27EE2385C4C9870A93CD80008B95E6E0AE402
          A6AD2C2E8945D19F667E4B71003D5D3D480FF6FFA5F59D178E0270E44ED1DA99
          120202736A8B03F068D3235B9E99D7D4B8BAAEBE06E77B0D0C1A549EC9024276
          B82420FE930262304D6F7EF7BD13186E8400833DD7DE016049D9F1F5B53BC4A6
          97766198290B566D7D2A1489AD6939720E2D47CE420C8311F28737124220EB47
          0CCF8522C984A5AB522621831D006696F4B9F2470044E5FCA0C8020F8CCB8DA4
          E5288F62A98E0C70241965D824578ED996BBB093059E7B6B0AA9229598825C7F
          0E345557867F357FC66570512A00647AE3E6D6B39D6336777627F392C8065296
          6F538F8278266A3923A59C893ED745A765889D57DBF1C689D7790F00A19CBC73
          2A4ECC9D026964E3B486D9D4B44B3965006350742DBAA8BCB449CA4C0E354E42
          EB4CCF1B647E45E059EF0021702B81989A4A89D2E4208745511E8E607AD108B2
          A9743CF64E7A888C044014CAB9DF6ED294225559EC18068C8C79C1A5CC52751D
          11221607D252CAE0B933E4794CB11DC0B681BEABB8FCDE63BCA8EB9468C80CE2
          379C017A9834148D218F7B710AA5DC5F3028261D68360D0B8954FA1FA6ED7EE8
          710B296AB3AC0BE24A0294F2BCA960AE2F20388567FCF86BFCC2F16D7C9D6508
          707BC85DD4C1578031CC3ED2E6E7EDF5D9536AC1D8CD4EC6424F2AF341CA728E
          324AA1E9A1312FDF503DD98BB9EBC3B3C49BE3791E23D415701D01C144D0654A
          D574543BB6402A2DE058E263FF03FB62276A5D6174B1633AB01C0727FB060EF7
          1AE661E632105545B9A22E0EEAC0610C2ECD4F20008F142234E387646ED373E4
          27B12ABC9719048C383E19388F5FFB6DE8B22FE48F08F12DCBB4E0B8FCD2CF2F
          75773DC0C4E0DA1B6B994214552764A17CC9B84BDA3BC9BB136A443E02CC01C0
          014D4565AC12BB140DE04CC031F051FC633CD07510095F8185A7CFF9E04FD4D7
          56285CCCD0341D7A69F13100FA8E2BD74CD376DAA94B11D5B4690F8D1C5129E5
          FCBF52C01C81448FC824AE883F27AF891E6A030545983C6A320E8C5F82DB3C5C
          2DD87D63716C1173A82A844021C8D283B3A72E05F764E4605E80A2A833A39185
          BF47729B5F638C893C4548A8037F9ED18781F6ED5809804F5A86A6E26A6C0FC7
          50A917E03500D3FF4DA0909066D771D1D31707F780E183A2BCAC041E11555511
          116806F01600B2FC5237C9F707C4234014803B803CFDDCB6EDD8376D15F68722
          B847084CFCCAEDA8F509D44623E110E7F30DCB864379F247577A26F533660020
          DF35ACBAFB2BCB0F4108B54055E7556A6AB487321B00CF5F8480A202B2568974
          8553445DDB2708C1A02A00D4276BAA66714A4B32A68594CBFE3E049E0290F17C
          6B77DF39D3714F31C61052D592EF1417CD92DD90CF0877014E01BDC0078E1454
          A264D283582380799901809938DB7D041DFEA553A19066461932A68D7ED77D5F
          5E3E3468CFA4E3EE29D3D4E93A0146FADD80BD00F2A680390011404121AA6E79
          18DD9CF999849100EC1452563F567B381A002412C90549082F809DB4ECDDD7DD
          7EF464BC7F77BDAE3D0D0144419AF0BF8DA713929DBCC005478AB9E864368E5B
          71FC22FE31CE03A064D83B4093A0CEF007836C3B5DC610A94CF02CE3420461C1
          6303C19A213966BD07E43C2A9D6B92A325038320F14A59894F607562202015A4
          44C8EF7CE81BB22CE76D91F316801CF950077823FE05A9F885EF479F861D0000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C6500556E646F3B4172726F773B456469743BCB
          5CF1270000068949444154785EED977B5094D719C637A0556BE265D2AA631AFF
          A8ADD6D414AD62D0D458711CC78A8E686C6284B5B54EB09A445D8922D4A8B008
          024A45968BBB2BA265918B06024120E07271777597E56AA254E42697BD2028B0
          DCF1E97B3EBEA52056DA6446FFE99979E6BC73BEC3FC9EF739DF65110078A9FA
          BF81FF75BCF2947EF8F04D2CE674E24A89C0F70AAB994AD86CD520D83D3C7DAA
          38A130549C58DC47001B764DCCA948204EB0AA98930FD53EF12436B3F578267E
          8DAFD9E0165A81676968C7B65FC4DCFCC8FF6A8931FF9E09DEF185606BEC1ADB
          F77D74FCB29EE3B3E279705B0FA9F2ADA3315A65ACEA3E1A3B7BF018C0B1D802
          B6612CC986EDFB3E46BE88D10D18384AC533C0361F884EBDE619ADF60B4E29EB
          B96D68050160EC7F82CA9E7E1CF9878E6D1CCF9B18C3A761C3F4DF9AF1BAA8E5
          F8AC1806268D1185676F3C16A3AB4E2FAD470B419B9F00155DFD28B3F4E21ECD
          9ED137E1794153EF7141537848AE4E7597E6FAEC0EBCB298E03FE20D8D9A8C47
          9486E30F03EFF455FCE2A05C952CFBE60E6ADBBAB8B86BBAFB51D2D68BE256A6
          1E9477F4A19A0CD55BBA516E6E47414D3352F4B508BA5A8CCF65AA07FBC2B2C5
          4E1F1F9FCED279DE7DE22E530D1AB09DBBD87102FDA1A7385667D1563D1C88BB
          F709CA08AC7FD443EA46414B3774BCB4CDDDD0D37C9B4CDDB5F4A18A4C1AC854
          35994ED6D5C0EBBCA665CFDFD30F2C5CF9FE246B224F1BD81F913F40DF1598EC
          288ACCBB73455385A69E3E2EEE3B0466905B0F0774B3A98B93C64C3275424D52
          916E183B91CF64E8446E6307BEA96947615337AA3B7AA1C8BB87FD61CAC2756E
          E2D9EC689EBE3F3E93E40E18F854928B8A660BD77555671F6E11486D2699BA78
          08C9C0201DC823482E534307721A2C50D65B70BDCE826B556D50943C4494DE8C
          A88226C41435414F868B1A1FC343A6327FE0217724D4B8A147B23BE4FA800167
          F72827D7E34995616965D09A3A58771C2487204A2B84944DA0AC07EDC8AA6DE7
          3ACDA86943D23F1F2186C0E77526C8B566C84852AD09E76E1A714E6344C2B7CD
          F8EE51277C15DAEECD0722563113D624DC4E6709AC63EC5C07E7D79D3E95FBED
          F4FBAA4B41479147C0CCEA76641224A3BA0D69F75B9152D18A6402C6DD6EC6A5
          6206654013A4B718D084488246A88D08571B10A63240A26A44E88D46C86E9951
          606C87282CC7B4729BD73CEB71EC08C8E0F1FC13401AEFB0D973C19A3DF26C51
          6816E2F506C49512A8C00C397548DD71B0E4EF5A90F46D0BAE929138EA3E96E2
          BEA83713C8485003CEE6372224AF1167F21A7026B701C12466329F9E963FF9A6
          16BFF9AB777EC29A1EFC96ACFDECE2E05B8F77F7EAB2AD7E7F5EBBE7BCC12746
          8784D281882335D49DC680C4B266B88AD3F0AE6B2836ECBF04E7CF15700B4A87
          4F5C21A2D40D9053120C7E4A598FA0EB7508CCAE4340561D14456648AEDD86F3
          810B9EC498C8F1D858BD2B6AC48B8834E18D5FAF7A63E9D6C0882D0763FB43D2
          CB114D49B0582F53C75B8FA5E04D3BA7C5F31C3F596DB7EEB070D126DFD34B3E
          3C7D77F9760984DEC93895760F92BC0602D7C22FF3014E64D4E244662D322B1F
          41284E7D3CFBB76B66B16639E6EF779E1BFA7C8E488320CBEDFF784AFFB17F2A
          226FD4239AD2D8F2B724B6F1A77C2713D83ED294D90E1F2D2433C1EFBA9C6DFD
          8BFFD708CAA824130FE09D5683E369D50856D6419A75174E7BA34258D21CE777
          DBC319788486A6419A327FADE7BEF784671F1F92A9E17CF82ADB3075C807C996
          AFC79326FD6CFE9A39F65BFCA357EC08EF1149D5F0A7EE8F7C55C544476AC6C6
          8309E657A7CE98C635B9745BE8689F631B6B1AD3E738CE79DBC95BB1C13D11D6
          0E86EF1D6EFAAD559F382D134ACCBB82AEC13BA50A87BFAC442025B25FA2C40A
          17DFCD04F8B1C0FEC333CF82FFA76319C7834923DF6EACB61AE113796DD682F5
          0B96BA8494FE35E06B1CE54CDC47507209D6EE3E17C1D2122CDA123C1C387A1A
          B64C56F8283F64C630B35366CEFBB9C3B6D0B20367B370E8CB0ABA49CBB16EEF
          45F631785DB07053D008D8A846788DB677A889590B37DA2F1346184FC6E9E19F
          5681F5A2D83A5A9F26B0DB18C0003F5CA39B983C6785DBA6F776CA7AA4395570
          12C5B5D1DA0CC1DB1B4E32C08B30318E75BCE8FD008557640E19486017660AE6
          AFF77B51066C4913A7FD72F96F960A659675A2780B9780C37699E01D21899BE5
          8225AC769553CD66B6C6AFB39AB46498A4FFAE5DA4027B9AED5D58CD66768DD6
          F89A37319634D5CEF964D01FF65EAE65B5E0050EEB53348E348934997F71095E
          8609DBC11FAF2F69BCC2EBE5FF73FA2F6249027F98C24C4D0000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C65005265646F3B4172726F773B456469743BE8
          51AFAC0000072049444154785EE5577B70545719FFDD4776F3D8DD869860C32B
          044B880CA140998552C5CEA8B11432B595A10A8E800E4EDB111D30503B486DAD
          5247ED401DAAC632586C7804D2899420054348808454F25A36904D4A5E0BC992
          E7FBB18F7BCEF1EEB9776FAE3B9DB1D319CB1F9E9D33DFE4DEEF3BBFDFF7FBBE
          6F7356608CE17E2E11C0FF3701E17F74CE27AEAB0C00AF9DAC83101D05663EC9
          F4DEF0E4461080BD1B9609BF2CA80D124AF3FA3BDBF71ECC5D3F0480BD5A50C3
          040800637A980016752267FEEA891A7CE7D9A5F8342B43100500E22BC7AA95E5
          8FCC86CBDDD5333E3AB673DFD62F1700A0005833A31FAB48FEB11AAD0728A19F
          0A5807E7041442B1202305396B164E9FF785D4FC3D47AAFEF9E3036716029054
          3F91FB462D4298560285B04F0C6AD2CFBC6542995E1211AB1F4D47C643C98F57
          7E185BBB2BAF7C7F5D79D1EB25C70E8CA9F19A2294328D00E1C178E99D2A6CDD
          ECFC6FC046B6CFFFAE68719C3DF19BA2242F15057106037B50054EDDB6652546
          C7144E244616106315E06AF0A1DEE5F58E0E0EED38B8636D3100A23711CB3D54
          C138815D872AB1EDFB2B35888F07169F7A615FD2DC852BB6CB16CB96A424DBAC
          F4B424A42427203EC182F8380B12540BC630341C02B818DA4E88931008045151
          D586D696DEE26E6F63EE89DFBED0A613A11C7267DE153CB7EDB1FF0417B5E65A
          9EBD31DEF9E4F7B639EC8EBD59593312BF98F979D86C5650C2100A511002280A
          E565A414BCCB59644818E37D2E4B021C0912BC9D83A8AC6C99E8EB1BF8CDE9B7
          7E76C0D7EAF67302DBDF2AC78F9EFF92315D0B244904203DF3933767CECA78F8
          BDAC453396AD70CE556595E0F71304FC148432038C87852D9B226026E10F510C
          A8CA24C64B989E6C81BBA11375F51D4DC303DDDBE5483344836FFCF9BBAB66A4
          A517E6AC5D943C3DC58E894982E1E1809EA5016606363D1338417F8060745241
          304479DC444041CF701073D21EC4BCF494050585D51764804BC88333650E2E6F
          78F1F0AAF999F3CFE7AC5B6C5198845BB7474118609104C8B200519F03511278
          1C214CDD6155C0C1020A453040F83B8A29A2B131021C5611E5656ED4567BDA47
          06BA77680A28240C2E0090B2B7BE3637356D5EC1934F6459C6FC4057F71814A2
          6537A1896AA860D4D9AC82D107535614444C8B17D1DDD58BD3A5B5811E9FEF0F
          6DD5A7DFF0355F1D36CFB594FEF0E3F6AF6CC82DDDB469E5126B5C3C3A7C939A
          3A069000010C563513AB2C4216451E290B3026A8A32F30450A0C76AB04818450
          5E5A03CFCD96B2E17B4DBB1A2FE53502080220B28980BC34FB073FCC5A3C6789
          CD6E43CB9D310482CC384C9600479C04812AF07A7B7057DDDDDD8308290403FD
          23484E4DC1FA6F3D068568D2C7C8221CB132DCB54DB876D5D53DD2EFDB73E3EC
          AF0B010400280088F3DB6F3231927DE6AA6792E21D492FAD70CE4357AF1FE37E
          C20FA38CC11E2B02FE49947CF02FFCF98F67F0F7A2CB9EAA8A9AFDCD0DEECD4D
          75D7B25BAEBFEF240A436262783C8104AB88F1FE01E41F3E432F1497BEEDB99A
          EF54C18F039888645E766F9C114581AC138879C8F9D46EA733FD017F08E81D0A
          802814711609120DE172A90B8D37DB470393A38706EEBAFFD674F99D363D0BAA
          DF291296646FE66A58450597CED5E066BDA776ACF7F64F5BAF1DAE35654D2F76
          8E3175F16625847202A223654EAC6449D89899910A5F9F1FC120813D4E466B93
          1795575CA1C9F191A39D0D25FB3AEACFDE0310D2C199BE2500164521AAD4B770
          AEB87264A4CFF74AD3C5DF1F01E0D733A61F748C84C54420488DA9A0947002F2
          236BB7AF9E39735A0A15250C0EFBF9B8545CAA4393A7BD77A8D3B3C57D7E7F85
          390B00AC349C0980AFCEB4097C9209C5A9A3FF38D1D772E517BD1F95F9747FA2
          FB231022FAB408BCACE10FD51590E21CC95F9F3DFB73181A09214662B85C528B
          B6DBDE1B5DB72E7EB7ADFABDB6C86117EE8CD2ECD976E1BC778485677D4D9A23
          723B099CDBFFAC1DDA52CC440B3D832CF26DA81A6D843913CD0A001E58B7F3E8
          FB6BD6AD581D6B73A0BCA406B71B5B6F78CAFE923370C7D517691A00286E1B66
          4C0FA4BA7D7AFE34F37F4A444A73BCA19F0353A89B0A803E4D945150BD786FBC
          FC360F4ACAC93DE97A7AFDA3B35CEEBBB87EC5D5D3D578F189F6EBA79AF51AD2
          A28FC259C0008D26B1715172041C47EA7B98EE67C80D6AF8734261070AE04FBF
          3ACC0924E7EC2E6CFBDA3796D94EE69786FA3BEAD77B4A0F96E923430A6EF633
          3330D52DC040C24034EA1D7430AA13E50A70F21AB0E91BF3AF6A9FF2291021DA
          AE577930313A785205AFD03327EFD6F732BFDEB5D4C8C204A601EAEF30F59C42
          7F3EA51235C53232753595B5783AD1DC78079DEEB3AF03988CD47C22A8680114
          5A4680212307D3EF361414D0C07550C14C56DD9A5A30B2D788017A13E6E49E72
          7B5B5A8FBB8A5EDCA74BAF2CDF9467FAD5C67423701242F4A51DFC2E68F89AFB
          9145BC59F4659C195E56007600360016A3A33FC35F46A209901AD43FCB65647D
          1FD67DFF79FE6F503785D6BDA7B94C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000018744558745469746C6500496E736572743B506167653B427265616B
          3BAF1562750000055949444154785EAD576D881655147ECE9D79D756DB40432A
          B23F81416244429A3F82C5C0922C2BE8937E0452422A929A891FA4BB25489A99
          20D207693F4444048B5297D4D22556ED8342322D4BD0B4CDCD5DD9DD77DEF9B8
          E7B4CD7B2FF70EACCC2B7879877BDE33C37D9EFB9C33F79C094504C30D228235
          DD7C5D870090B0E421325700403912A584A80C18400A801B21106EFAF4683CF7
          C5C988D3CC52AFF31136FF089CDF10832D70BA1A370B32165414B0715B1756CC
          6D6D069084281F8A99F325CDCF0C06E70EB2240C9878248B54024550014134C3
          A84A8D10A02C738B32002592CF05281143432020807D68B2C4102805168165DC
          10016DA26665D6C588423C05D88017022E453D98AF9180B0B60BB9DD90B77976
          71273F2A6E023CD532DD2001CB92B578BBE5BAA9ADCBA139958C4DD676E11011
          B04F80884A1560B1D20150E450A4986628BE09F59F930062FEB37352680D4B10
          C30C66362B09848DCC16DAA8699D2C454A52302C012E844079070E0390A7567E
          26BBDB1FF7146003E8CB6C830147CC650244ACE554B07AB14691C0FCCD87D3BF
          CEF7EC3CF3FDDE793FEDFFB06F085C17157071D5FE6A7E246089510E6CD1C54F
          4AAE1365F3A4251066A9C6CC19F73EB33708A68E193771F6A18F177402C8AC02
          A2EBA2368F08ADBCC55D8940885C4E88F3C3DA04081B9B8DD3D482204D33DC36
          6E2C5E787EEA1DFBF68FDA87391F6D38BE6BF5DB03FF9EAB01E028AE1D5CB5E1
          C0348159848CE464C00DA27804D8D8C8C9D97B9CBBD224390420850D4192680C
          C61A50153CF2E824357A4CCB2291B669DD678EBF7CF2C0E6DFDE593673968999
          6AA44296DC63039E00604320C3602D439230AA358DDBEF1C87E937DF745FE7C1
          51475AC68E5F746CC76B5BBD90C8752AC56C43A0E224C53F976B60965CBA3000
          FAFAAAB874B13BEBEDBED06F40DDD5D88EC59F87BD6743501D8811C51A228C4A
          48F8AEF3047E3CF2C3D1DE735DAF5EFA75EFEF2EA71D48A9ED76A9AF46DCE540
          9A21CB32D4AA113ABFFC962FFE71FAFD3F8FAC5F0B601040DAB6A9639F22D50A
          AA171A02416C09B2C7AC887BE58CAFEF72EF9AF7DA9E6BB7CDC7E2B7F608CC99
          B27EE593960090261A674F9DC5B1AFBA2EF49EFF797EF7899D8701544DA22825
          D4BA7CDE4357D5318933A49A91A53A6F5AA22843CFFF21ECB9B2AC166F555BD6
          BED406205DB76296FEE5F4DF72F7F85B86083805B2A1816FF6747C7EE9E49E25
          D59E5317014426E9C807BADC1F0F7B0869E6BCC2E94C234E34AA5182AF8F9EC1
          C2D90FE2CA40B2345AF0016DDBF84A3B8078C25DB76A1129E440D4B56DF66803
          161BB9B4874B62E575C08502434A410943020515304084384973FED35B2740B3
          7E238E37D18E2DF373124494F92761E201B299C56F4A99A558ECE09767CA9D01
          11A00801140482384A00009530C08C69F740A77A4912BF4BBB3F59D80EA06630
          39042025EF38B13BE93C6C3BBBB24C5020D2102D88E22467DF14A87C9EF9F024
          68D6AFC7F11AFA62FBB2364342421191B2EF0231D548BC8C07C8553B769DB110
          723B8E5310014D15421004A8848CA71FBB1FCCBC384D56A363D79BAB1A6DCB49
          B36D6C9C3B37594CDC6C3C188A14C226859651233067E97630FB8D890C856322
          A63C307971C72EAC011037D6139A0CF46B3E0F578E8500C5681ED184679F9882
          C16A8C24C9CC5BC2D0991EBA17A07F20BAB6B69C990D88E90788BD5C50753AA6
          4F05119AC200EAC61B30724805CE3432AD0D01C6C8E610CC7C4D5D3158A4308B
          285BDC3D2D9CCC20200C0304C29050A1C2610E9E32A3A5B95268D9C2C6F04D5D
          07E7E076C870DF064200D91E8140000205481820D4843054B625CB1AF9386500
          C9BAE5B35AD62D476893B2AC1895F86C3F1095BF05EE8C600FBC7C943FC7E692
          FF00CDA08F51CB8363FC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500477269643B5461626C651BFD37E7000004
          8149444154785EC5574F689C5510FFCD6ED22CCD1E4A5BBBD6A2542F1EB45A5B
          C55EEA415089688C51A4E051D0BB5705EB4544A4281EF5A2208810D350B5B122
          081E0C28A94D8B176D13B5C666534549FF6DBA6FC68CDFCC1B1EDF41106A3EF6
          EDDB8FDFCC37BF99F9BD593E1211ACE745B5FDFFB9C4F7010BDA00D0B4DFF46F
          84FF131E8B01245B5002CDC75E3C7C7F6B78D32BA0E6DEA027FEC95F02DB0505
          266E2BD913E23E62F6A870E1FEEC1F4B8B2FCCBCF3CC1700FA4AA0D11ADEFCDE
          C8FE5B3AD75FD746C45347C2CCC945DCBB6BBB060101600BCE10CC9C58C4BE3B
          6F80480434185FCFFE8A7DBB7764DAE0CA66717965CFE474FF5D003B01A47F08
          80A8B36D4B1B27CFAEE0622F69289031FF69E902B0F12F8854043C00143B7711
          8DF61AC600485950AED0C2D20A06CFAC61A812815454DAAD0180B0CD5B5E1100
          C060AC5C4E5E2BB095957571E56C98959AC06A970CB3BE881BB220294681E94D
          62761BAA3460576275B615B18C045B16A101A1AAEEEA17A5B14D890160EFBFFB
          41ED35DF9200A9433F29C8CAB2109B6229A9358311A50403AC38BB3A2C987B8B
          58E514254B8C20563127912B30FB7D1767972FB89A43E102FCB2B06CF7462A82
          6161BE5B53BA4738F3E339E4DCB9F26F0FB7EA15B86F7B13CF8EDF8A549F8A38
          F2F9293CFAC06D6A66D94415A68E9DC2D883B703802191DD4747E7F0F8C81D20
          A9B0FC4DC01B6F7F89AF003801B0356AF52ABB580CD6B600BD552E664D60829E
          FAE4369B18088A6135FBC51A1C6CF8BC20D8092096E823BCC40841052114AD60
          0EBB40CD8F439522E570622E0980C58543E57103AC2D4ECC9F52F4DB5639232C
          A90AA2D28FD92BE3A720894BC59388A31559820C3377CB3232ABE44116448A31
          1D73B2018E16D080B760E2D339CB962C333F092AB6B9C8DA34E2194D4E9FA888
          901DB588B6F6CCE341C036222357889019E36B8ABDD4EB1B60752360EAB3398C
          3EB44BEFBD2859D19347BFC3D8C8EE70098962E293E378E2E1BBCC3EF0A10D0D
          BCFAD63194226436432AC422127D2EA429B93B21B2F89D05CAA84D55B3A989D0
          037AB09886C2523EBC380952CBD069B20131D85C4421FA5C016106A478486422
          994A90F459CF41424A7610FBFF704284C0355E7D0E94650A2AC239AB6813F951
          8B6A104221D11FF8C59E044552CE62F3C143D3BFDFB863135292DA1C88F3EF58
          E8C32FBB09CD10192E858D428D0661FEE7F338F4D27807C09F760C190746F7E2
          D29514F6E63CF1F12C9E7C644F311E3CC88753DFE2A9D1BB211988FD83C3DFE0
          C0D83DD15A02480443430378F9F5232845C812A2B345800BA65039BB48C5B060
          6C06B65BEB4002210195C52845184233DF3CC1EC1420F08266191DC87E2181E0
          1564594A111647CDA94A9CF5381D12188132B91062DD36587B15394BC627613F
          F5FB4BA717963B37DFB4C59B98FFDF75B53634C343433B4EC8582C311BC3A444
          7E98EF22A5D4D5B8260D6C7CFAB9D7C6B67676BE498DE6D652F5C5242C332B4B
          5E3449B23DF94DB6114EE7BBBF9D7E7EEAFD8393002E9355614897FDA66BF046
          44411957015C01D0D32A28E0AB794DDE0F4B72628B75ADC34B694D2C58F7D7F3
          BF01CE9FEF31421347950000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000033744558745469746C6500496D6167653B50686F746F3B5069637475
          72653B4469616772616D3B4669677572653B647261773B7061696E7415D5C670
          000006AC49444154785EC597DB6F5C5715C67FFB9C3337CFC58E1D8F1DDB716D
          C74D52DC84889287165582102101424848A815CFBC80F807F80B78E1111E2A81
          54554222484845D0A86A53B05A92D0509426938973B113C7C9F83E637BAEE7B6
          F702C947733432798804CD968EB4F63EDA677FEB5BDF5A7B1D25223CCF61F19C
          87BA70B1DC9D8800C48CBCF9DD9715FFC7F19B0B9F8903F0C677E614F0B4C39E
          05C4B300961FBFF155A300F5FBF76E7D04EA1BB1F7BD8C48642B04117ADF09C4
          3A8A6CA2F5885663A46B47DB084D38FF931FBD7A1EC0FAED1F3E932F7AFCFA9D
          2B02241C4019D947EC7A214A294000F57462A5CB55EC15AA6B472B3D2C749943
          286493682300CA0194EC4F402936FC80A725A611C10804A14BAAFC2B72C33304
          AD1ADADB237D788666E526F9F1D3341E7F4EEEC8096A8B1F934824705259B61E
          3FC67CFB2D5EECEB0701312602401C431121D0423A93E9F5564566E0623F9907
          3B852E9E25113CE2F0EC291A9B8F48170E934D9D26959F206377B01319181AE0
          D0C409B6964A582F7D9FE0DE4538F32602E818002A9A20024128D81A14BD9234
          40D0AA73A851A230720CB75EA5555D41390EF99109D6CA2536EEDCA4B5F188CC
          D0110AC57EA6CFCCB0B37287E6F61683AD0FD9AD3590FF00003011EB0E801841
          10880058610C40A9389661AA4865E07BF88FFEC8E1C9290AA3AF2324585B2871
          E7D2FB8CCF1DC5514574E871FD2FF3049D26132F0E32397792BDAD1D9EAC3650
          0222600E302020089D50505D00310B5A206C6EE2541768746CFC1B57B093498A
          B373DCBFFC2923C7C768AC5648F6393C293D60787C905B1FDFE6C8D4EB2CFEAB
          8468C14F1D210A3646C72224122102F8BE904882A177F81AFAAEFD92A3D32364
          664649E64EA02C0711436D6D1B3BD4F415522C7FBE442A69B172E70981CA914E
          1A664F4F8193831BF7BB35458B01A0CB40E42D5E6070B4200650B140B581CDE3
          3FA3B9F1097DCB65D2DE1AB663513C364D2A9BC3D064F9E632E994A2B2BC47BE
          90A34D9AE65E83D5C50DC240F3A89A664C008819E80A22821668173F4875735F
          44451B0C61DF20B5CC24FDB5AB1C9E9EA57F6C1CB75967FAD40457DEBD4A7F46
          B1F2649781C11C1B35C5D973A358041C3F33CECE76C09EBF8D208808466200CA
          1813BD00CFDF2011760088A489123068FC5A85A3A5B7E89F19636FADC25AB9CC
          D0F820C7E606D85D3DCADDEB157CCBA1438AD35F1BE4CBAF15595F6E72EBEF0F
          C9E51C1C1D87DAE89E104837045ADF2634791426F27E1FADD1216D7F9905BFCD
          C2F222DA0B796DA4C8F0F428959B0B9C7839CFCC89397205A151F3709286B5A5
          3D46272C3AF5012EAD7A78DA614E40A4A70E4429112108CD2D8CCE44B74F74B8
          31B89D164E3264E09B67F1DA2DB21F7CCAE8AB43DC9DBF467BAFC9C8D44916DE
          BFCD2BDF9AE5C1F5879C39F702B72FAF50AF16989EB5982C57B9FE95D1F8828A
          005880323ABABD103C7F113FB847681EE2070F70FD7BD4EB0B98708791A1229B
          ADBB2CFEF312E2795C7CFB03DE2BDF277B28C7FAC31AAD9687264DBDEEB25571
          C90FD8FC6EBEC49F2E2C934F1992EB15948044BAEB0941048C46670D52091030
          02BEA769EEC19766A658DCF8076EE0D31E49F2D1669552668FF3F611946D71E3
          CA7D5CA0D368B154A922B6C5D474065F0BEF3855667692BC70BA8828890A514F
          16E8AEE0B4F608CD7EA13021EC547D26864FF178F70E81F81865486513D48FE5
          C92C35512D9BD2E545E69D0693926263799315BFCD274B8BFC607B985084FC40
          927A3A81AB0D1239D653098D11A49B869A200C301A3A4D4DE867D9AEAFE3EA26
          8E6391CA24709236C984836DC3D0D75FE15AE96F84B6CDFDF5361FFEB9C4EA24
          34B0797B7B93B05F3194C93036D14F75CB2312411C82380D414411049A30B030
          5AA8563D7CB7C3766D1BDFD5682D0481A094A2DD0E10A5E82B3AF49F4C61ED42
          A7CFA23416E20409AC758FEC4C06D109F2D91409C762AD1A2010B170A0100982
          109AFDC7081C1A4E623488214AC5E8CA7635B51D9BAD75435D6F81ADC90E38D8
          49487414B54D1F13584C9F2CB0547631C6C273854E5B2300C4FDC081521C86B0
          B3EDA304340A4B4030080A88E2A7054453AF7628951709EC0E8107F5AACFCE66
          88DB10A65E2A10B8E0363509CB10BA1E6120A8A80AF688500C5D0DFCF4FC5550
          7183020A15E5CEFE34D68B520A2C05620100D2DBC408F0C3A8A428414421C4DF
          8A3480183120D09776000E76BE71BF07C46004407597F6C102F4B69520911344
          FD055D0D880368CF75FFFAF35FBC7B2ED2C17F6F2625D60928A4FB4E0EB4E91C
          6858E96DDB8130F0E681400189F8C10278E69F9467DF63001FF054B4D10222FB
          0B1B0690673EF07F0C529EFBEFF9BF014C9BC65F2C9755DE0000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000033744558745469746C6500496D6167653B50686F746F3B5069637475
          72653B4469616772616D3B4669677572653B647261773B7061696E7415D5C670
          000006AC49444154785EC597DB6F5C5715C67FFB9C3337CFC58E1D8F1DDB716D
          C74D52DC84889287165582102101424848A815CFBC80F807F80B78E1111E2A81
          54554222484845D0A86A53B05A92D0509426938973B113C7C9F83E637BAEE7B6
          F702C947733432798804CD968EB4F63EDA677FEB5BDF5A7B1D25223CCF61F19C
          87BA70B1DC9D8800C48CBCF9DD9715FFC7F19B0B9F8903F0C677E614F0B4C39E
          05C4B300961FBFF155A300F5FBF76E7D04EA1BB1F7BD8C48642B04117ADF09C4
          3A8A6CA2F5885663A46B47DB084D38FF931FBD7A1EC0FAED1F3E932F7AFCFA9D
          2B02241C4019D947EC7A214A294000F57462A5CB55EC15AA6B472B3D2C749943
          286493682300CA0194EC4F402936FC80A725A611C10804A14BAAFC2B72C33304
          AD1ADADB237D788666E526F9F1D3341E7F4EEEC8096A8B1F934824705259B61E
          3FC67CFB2D5EECEB0701312602401C431121D0423A93E9F5564566E0623F9907
          3B852E9E25113CE2F0EC291A9B8F48170E934D9D26959F206377B01319181AE0
          D0C409B6964A582F7D9FE0DE4538F32602E818002A9A20024128D81A14BD9234
          40D0AA73A851A230720CB75EA5555D41390EF99109D6CA2536EEDCA4B5F188CC
          D0110AC57EA6CFCCB0B37287E6F61683AD0FD9AD3590FF00003011EB0E801841
          10880058610C40A9389661AA4865E07BF88FFEC8E1C9290AA3AF2324585B2871
          E7D2FB8CCF1DC5514574E871FD2FF3049D26132F0E32397792BDAD1D9EAC3650
          0222600E302020089D50505D00310B5A206C6EE2541768746CFC1B57B093498A
          B373DCBFFC2923C7C768AC5648F6393C293D60787C905B1FDFE6C8D4EB2CFEAB
          8468C14F1D210A3646C72224122102F8BE904882A177F81AFAAEFD92A3D32364
          664649E64EA02C0711436D6D1B3BD4F415522C7FBE442A69B172E70981CA914E
          1A664F4F8193831BF7BB35458B01A0CB40E42D5E6070B4200650B140B581CDE3
          3FA3B9F1097DCB65D2DE1AB663513C364D2A9BC3D064F9E632E994A2B2BC47BE
          90A34D9AE65E83D5C50DC240F3A89A664C008819E80A22821668173F4875735F
          44451B0C61DF20B5CC24FDB5AB1C9E9EA57F6C1CB75967FAD40457DEBD4A7F46
          B1F2649781C11C1B35C5D973A358041C3F33CECE76C09EBF8D208808466200CA
          1813BD00CFDF2011760088A489123068FC5A85A3A5B7E89F19636FADC25AB9CC
          D0F820C7E606D85D3DCADDEB157CCBA1438AD35F1BE4CBAF15595F6E72EBEF0F
          C9E51C1C1D87DAE89E104837045ADF2634791426F27E1FADD1216D7F9905BFCD
          C2F222DA0B796DA4C8F0F428959B0B9C7839CFCC89397205A151F3709286B5A5
          3D46272C3AF5012EAD7A78DA614E40A4A70E4429112108CD2D8CCE44B74F74B8
          31B89D164E3264E09B67F1DA2DB21F7CCAE8AB43DC9DBF467BAFC9C8D44916DE
          BFCD2BDF9AE5C1F5879C39F702B72FAF50AF16989EB5982C57B9FE95D1F8828A
          005880323ABABD103C7F113FB847681EE2070F70FD7BD4EB0B98708791A1229B
          ADBB2CFEF312E2795C7CFB03DE2BDF277B28C7FAC31AAD9687264DBDEEB25571
          C90FD8FC6EBEC49F2E2C934F1992EB15948044BAEB0941048C46670D52091030
          02BEA769EEC19766A658DCF8076EE0D31E49F2D1669552668FF3F611946D71E3
          CA7D5CA0D368B154A922B6C5D474065F0BEF3855667692BC70BA8828890A514F
          16E8AEE0B4F608CD7EA13021EC547D26864FF178F70E81F81865486513D48FE5
          C92C35512D9BD2E545E69D0693926263799315BFCD274B8BFC607B985084FC40
          927A3A81AB0D1239D653098D11A49B869A200C301A3A4D4DE867D9AEAFE3EA26
          8E6391CA24709236C984836DC3D0D75FE15AE96F84B6CDFDF5361FFEB9C4EA24
          34B0797B7B93B05F3194C93036D14F75CB2312411C82380D414411049A30B030
          5AA8563D7CB7C3766D1BDFD5682D0481A094A2DD0E10A5E82B3AF49F4C61ED42
          A7CFA23416E20409AC758FEC4C06D109F2D91409C762AD1A2010B170A0100982
          109AFDC7081C1A4E623488214AC5E8CA7635B51D9BAD75435D6F81ADC90E38D8
          49487414B54D1F13584C9F2CB0547631C6C273854E5B2300C4FDC081521C86B0
          B3EDA304340A4B4030080A88E2A7054453AF7628951709EC0E8107F5AACFCE66
          88DB10A65E2A10B8E0363509CB10BA1E6120A8A80AF688500C5D0DFCF4FC5550
          7183020A15E5CEFE34D68B520A2C05620100D2DBC408F0C3A8A428414421C4DF
          8A3480183120D09776000E76BE71BF07C46004407597F6C102F4B69520911344
          FD055D0D880368CF75FFFAF35FBC7B2ED2C17F6F2625D60928A4FB4E0EB4E91C
          6858E96DDB8130F0E681400189F8C10278E69F9467DF63001FF054B4D10222FB
          0B1B0690673EF07F0C529EFBEFF9BF014C9BC65F2C9755DE0000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000004DC49444154785E95565D88555514FEF63EF7CE383A334A1395106809
          5194155A241441249AD98FF62208D98B3F28DA0F3933A09695485358F6346109
          5186F5982195D2938104E9432F6121680FFDC080A6A532F79CFDAD3CEB2CCEBE
          C7EB65EE5D87C5DA7B9F73F9D6FABEB5D8D78908CCE09CC3F56CE8B1518D977E
          3DE2E13C9219430EBE06DFD3EFB28B7FF0CAD9E382AA09DA98E195566B03EE9A
          E3859307DC91D90387FC00960B05E4458420986CE0C82A377B25800CD12419BA
          537CFF4D92FE7E8C98C26A6835F7EED767886820057E74196EDFBC1912029805
          48C870EAC3F1A5A363FB2F27B504220041FCF9F7B9DD9FEC1979DBF70DA5F539
          8F666BB6EE2129C8FDD357167596401E869F9E0B330412C74644C1CF1F3F0EA6
          A97A08C4AB57BFEB9FDE0B338C1CF865FBEA1777F77CF1F1DE31D73B78F9B33D
          C38DD52FBF43CAF555F1ADE0D1C49C923BC12C2BC125CD4006A4814849347249
          32A25EF378E8EE5B87573EBFF17597F40EFAE943BD073F18F542762E8188B434
          0E494816C0460A662924CB90056A2F401C44A0EE1387C5F36F04202F65D93A7F
          F8CBFD636EDACC0B9F6F7DF83200E92C01548D220814088D812C553902A9EF14
          DC1E06C1DC9B67603180461AB634D2176A470F1D1C033009203897D7276D2488
          88D52D0B06980603CF94814022134B02000B50D413AF493CB9E0163C72FFBC8D
          8F2F5FB51D402F8004809B92010A5A12080C1006055629181042005502EB1802
          13E7FEC39ABD3F16490B21040666DDB07EC56B87CF7FB5EBA93700D058689B80
          52D99A804E8156CF408D81B4F10384457C7FED025C69141322AED053E0F0DEA1
          D3A300760348BB6A42B109602818F867624213189C391359082A8D80A0381082
          2471983EAD07B4AEA400246053E0A792C05525D085767A46E2AF1327C165CFA9
          1CFFFEF0BD82D3BA1F10534174AF875206500FE1BB1A43D1F152411474F29E85
          58B86D9BCAF1D39B029E3A0538577EA71EB141C0CECB04D0490210B1A80F50AF
          2798BD7E13EE1A1EC1405F9F023DB073277EAE7B4CEBA9E9DEC6313A60E7B077
          91E1CE7B400AEFADD5B070C70E244902EF9CEA3DD8DF87456FED42E25D1CC302
          D012A882B3D0D5752341A9AFF30E3DBE564C8395E71DD0534F4A7A8525B04962
          F49731266051DA3721A522C14747CF2A5020ADF1040C792CF6C16E3B3D670009
          3DDFB2623EC41913ECBC070C366AB976C91CADD0A8B675ECF8C88280463DEC9C
          741021049D4B10195040877DDF9D0125561A4888566E6C3433432929DFFCEC7D
          9586ECB8094963028596EB96DCA6C91065B5B1725AE3C124B8567B6389822E18
          881228F0F8B7A7215639C52AA798B35235CD9133F0CCBD10675275D503524D60
          C3D279B1E272BE6395A188D603888C10EA5509A2B59D02CB16142AC8F837BF15
          DA8700DA3488441628B404AA17D9C6AB0CC024EB4E822A5DD8F0C41D5A46002D
          31672C54D920351A23F63ED2DA4D0FA009A8D8C5FBA6021AAB2BF711B5E55C6D
          EA29B08689DD4C23D62A32F01895E6F85DD43C4E04D095049A6D954661756F00
          F1CCBC4C4C1F57B919D53A6B429614DA1C9BDB1A0EACECE33A46ED93082EEC88
          0131056C67D4C3C60A0EE2AAB71EA43541F5086EEC019DFE2DCF28C486F113B1
          2273DA3E6659BD7E21CD8D27808B49993500B05D02CE5E4EEEDBF4E02C007500
          49E5BDC58ECEAA6B1AF82500A1ED1F5077D50CC05B74686F0EDD190D5C2482E2
          7F5631F6D30A05E4E60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000014744558745469746C650048797065726C696E6B3B5765623B06FEA0
          CE00000A4B49444154785E85970B705CE575C77FF7DEDDBB2FED4A5A49ABD5C3
          203F645B381618B0B171C018183B10BBC1A50E3899A9A7218509E92414B74D98
          240C493AD3364CDA420AC3D090762043932626813AD062929A463C4CA81F32C6
          36762C5B962D4B96A5D56A1FF7DEEFD5D563A76B7726FDDF39FBBFB37366CFEF
          9CF9BE9DEFB38C31005896C565B2E6C2061C200444812490987B57400E280201
          2000092840332B438DAAF5AAB2013EF6F008006BFF6D1D9F7A7D333585C34022
          73F35FDE94DDF0D4631D1BFE61E7F6AFFDF4378F3DB57BDF3FFF6CEFFBFFF893
          5FFF66CD1FFDB0AF6DCBAEE7339B5EF86AFD9A1DB712A7098803E19A26006A1A
          BD8C68D943E7A7BD4A67550B776E7EE1CE7977FDEBBF6CF8F20FF33B77FFDA5C
          CC8D1B557976BEF64BF3F3DD7B8CD09E3978ECB0D9F28D97CDBAC79E31CB1F7A
          BAD0B2F9073B1B6E7C641BD03A07E2009614E7998E6ACD6AD800C6A24A57ED3A
          D6B5ED8D1D1DF333CF6DDF3279EF138F2E4FDE7E4B0F75755130862D9F58CF58
          BEC091E3BF65F1822CF76D4A93A9BF82DE6B0F26567FE2DDDFCFF4B43F9DBEFD
          3B5F27FABF10A170D632467099E60034581501A1C6AB3F97E9FAEC9BDFE9BD4A
          3DB671FDFBD99B6E6B225798E0C55776F3BD9FEE62E7EB6FF04E7F3FE74D84FF
          1E18E3C8E973FC782F249257911FDA8AABA3DC70EB3B0D8BAE9DFC62D3CD7FFD
          DD48C78A05400C70C2EEBCFFBBD06A3C04C42B9D3FBE7245FE8FDB7BDEA47B61
          07ED8936A253093EEC2FD1904AB0B26701EF1E3AC578EA4A44284DA9A8094C8A
          424EE3975E469BC3241AC6D196E4E8FE760EBD9BFAD944DFD7FF1C9FF3401930
          D3AA9D8035E791AE7B773FD4B364EAF3B1A5AF90C8BAF84AE089326EA3CDBC36
          58BF6E21AD6D49EEDE780DD98820D1584FAAB59D48344E381C4604B7327E6E0B
          A70F2D234A84152B47587EADB92B7DC337BF0CD4036EB5E9CB01C295C5B636DB
          1E79C0EA7CC90A3738082DF0954F4196C88B29B24B1A9812931C3C72985D6FF5
          E3BB71C2766896DE063B14C28DA489C6BAF10B1F6762B889A1236D34245CABA1
          A9E79EFADE2FDC02C401DBAAD90AA16AF74E22BB2DDDFC519BD59927D0F5F85A
          E2A980A22C1115919962C6D78C94147E4B2FE154161184C0076300056063E350
          5717B0B8BBCCAB3F598D2E379370834CBEA1F3D3C03B401950B5004EDBC6677B
          1B9B139BBCE45E9C99C2024FFA788E4B497AD8DE2463C336C9C64E62D9852493
          693C19427B06A5345A5642815106A36D7C3FCBC8993612A9B32C59B59FA13311
          EC48F8766FE48ED58563AFBD060480AA0284DDF492752D2DA669327296A856F8
          2AC09B0B57FAC8C1467AAEDA4022D3864798B200210D5281141597A0B4414930
          C6C122C9A1FD2BD8FE076FD1928EC12AD87BA09C78EAC38EF5C01EA068599636
          158580901DA9BFB6A1413162CA98C0E08E450867FCD9B1E71DBA332B88346709
          2C175F1802DFE07B150F0C4280ACB80C404B50D260944109811DF3992883C190
          6E95D891F8B2EA960424D50998507C715D9D8F2CDA500E58117E80B00FA7BD57
          69B55693EC5E46D984919EC11395F06721CA653DE3810732D0485FA305152F93
          4C7FC468B18463833106E51A6289E87C5CE204D897AC016CB7C38DD9B88516E2
          132E899EF9A49A1A7126E2586E8030717419A43478C16CF1625113140D5EC5FD
          699032481FA4A711814FA26D88F3C52216603068630827EC46424409B8741758
          845276384667681D67E59B1C3BF136C9729A05D99B7023114A8183090C5281A8
          B857D678A5B9E285690083F06627A084414B41DEF3383395C7C142CF01E08623
          8408C3A500965262AAEC25EB3389DB18BAF01E7D4D7FCFAAD30F924941D48A40
          60A19542C8D92E03CFE07B1AAF301D86607A1AA53988C08084F1F130225FC0CC
          3CCC0004222E3000985A00A345793877D1D437A45AE8097F89A3434F73267690
          ECC81D3831895602DB89E258314460CF4168FC92212855BC601015179EC1F801
          96B1518534C3C56275FC508A1068954711D402D880D4FEE489C909815F767022
          57B234B2838459416E6C8AFFDAFF4DFEE38307D97FF89F183CF10117864E3339
          5EA094D394A72730A5678A07658D1602A3022C65132B5CCD54CE26E7F998634B
          A83B780F66387D14C514A02F0150C5E1FEDCB88F37A9F18A21141932660BB9DC
          14A7A67EC148681FFDEE93FCAAF059F68C6EE7F4C0BF93BB304869A2445052F8
          258DF605C6F7D1C203A388D04CC7B1ED341FBF93CEE2DDA013502A1EC0A7580B
          1002027F745F5FBEA567BC108FA623111BDBB13096E1E2E809240128301A084B
          7C0AF4EB4748E496D12EEF2365AFC1D6CE6CF7C2C3E8A0E201B66D93A49B64B0
          0842502E7E34E94F0EF455FF8A4DCDE9270234B5FEDEAEBFEDECECBDA73911C7
          382083098E8FFC29930D6FA3D2A0EBEC5908654080093475A357B3A0FC1784ED
          166C0D96B1406BD002CB02CBB1B1C336F9D219CE9C7C7DD7E8BE67FF0C189A83
          D0D30C16E000C9C635DFDED0B4E0934F64EB33D9B0EDA2658173934F7321FE2C
          2A65134E34707D68132DEA0AA2AA0E295525249E283356BC58C91544E5621AE3
          0BE968CD138D16B16D6F264FCDEC202102AFBCE7C2F0E0837DAF7CFF14A00053
          3D34BA40BAE5F6E776B476AC7EB8259AB48CD6944AA718905F2494F2D8BAE811
          B6AC5F43574786FA649CAA02213970F804DFFFF1CBBC5D7A996D4BBFC23D77AC
          62D195591A53894BF38E9CE49917764D1D3F71EC96BE9F3FDB0FA810B31240FE
          C21BF73DC5C6E7DB9C4CEF67D26E9C88DD44078FD296788FBB6FBD919E45F3B8
          902B70F1DC45A4D254956A4C734D4F0FD6F13AB67DF206962FB992C1F3139CAA
          4420155519C7E5633D0B9203A787BE056C0574C85434773EF081F1FCBEBF7BDC
          EAFD8225B3CBEFAD77A256CA5D486B2C477757DB4CF1EFFDE02506CF8E100A85
          684AA7D15AA394424A81168A6F3FF9E2CCBB1072E6FB445D622677EDCAE5AC5D
          B57C661252EB5B80102042001DF7BE6FCEFEE87A0594FC0BFB07467F79FFA3EA
          E37F335A6E5EBAAD3EDA90B18C241A71298EE519199DE0EDF6E7318E6163F17E
          BEFAB9CFD0D599B9FCA8CFA1A3033CFAF87385F1E1B1AF45ACF281FE64DD9BAB
          AF5B86E3384821124088EA87D1923BBF74C0BCFAE435122802FA62DF57BE2B97
          7F7EFF54C3E2BB7ADAA39F2A7B81A5B5E186CA8FD8071FC07142600C6ED8E1AD
          FD47992A7AD4AA582A63B0EA9A3B163C118FC5B8E3E6EB9898CCCF2E5E1194AA
          97166B9AB6636B1FA0C028CEEDBCAD7A4875813A20B5F9BE6FFDE84FB66FBE3E
          519F9C19675527068678E9177B28164B08295152A195461B4D3C16E5D69B5632
          BFAB832B3A5AC94D4E71FCE4194E0E0CF2AB3D7DAF1FFACF173F0D1467002E97
          5551ED69F9C63BFF70C5C225CB5EEDE9EE4A2A0311374C559E173078E61C1F7C
          78D4532A786661F7D2FBE7CFCBC67D3FC0755DEAEAE2B8E1104A6B4646C7D8FB
          DE81E2D9931F6C1E3CDCB717F06B017E1748F8BAF55BBB522D1D8F2B65562BA5
          5AA4142829A9B82F02EFADF1B3271E1EFEEDBEC1DEB59B3A5BE62DFD2B6D58A5
          946C9162364F28E1075EE9DDB1C1A33BCE9F3C701C2803B20AF0BB206A2F2E0E
          60CF4515CE001A5073E100E1B9FC504DAE0624E00301204D453500FF3F444D50
          E300A61A3539766D6E4D8EAABD1DFD0F421191AABA89B8690000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000D744558745469746C65004865616465723B0A6E4DD90000049F4944
          4154785EA557DD8B5555145FE7AA4DF9D138592F3AE59D109B86CA848CD291A6
          C1A834194BB3E883A0989CB0248B1EF50F08C41A5FC642E8032A29282828280B
          6346A2895E0221B270B0845E1A4BCD9973CE5EBBB5F6598BB5EF1C2EE75EDAC3
          9AB5BFB8BFBDD6EFB7F6BE37F1DE83B62449206A36306B75DD17664D704A36BF
          C907B3D56C6C6BE6CB6B028A644EBC878AC619B0E805FCF5CF7E3956ABCD1BE0
          25CF7F1A0199CE15435F18167B324C60DFC3BD5DD49D214B5F79FB2744E72177
          088EECD0AEB52D65A09610F8F3F7F740BB6DFFD19FE1F017A7A677DDB76A3107
          72F6CFBF41DBE24597B74E81F2E5D83303127503C15E7BE638CABEEE25F0F29B
          939F1F185E77770C94E7D8860622C19CFB6033CC4E1DE734074384863E3AF239
          40D79603E0DC20DCD2D305B4B411DFF8E1AB83CFDE36F8F8ABE31C05D3C0349B
          188D82B200F5ACBC3725F0E54F1C0670194D90B9DC76A3CD6557DF0EF994872B
          172E809BEA4B397B036E6CF2EBD19175F74489433A84A7D61205263ECC61EAC8
          D31C7130EF0833446FFD6543AF81CB0702D2C28EF9D07B5D276C717E201D3DF1
          CDD89EF55BA53266C9323D44F303605CBF1090563EBA9F7C1AA23662794CE652
          48BB7B21FB55B5531CE286159DB0F5CE7AFFEA8F4F4EBFF460DF4A6654CA33AF
          C8006AD2E0B29E4DF0FBBBBB031DC8DC3BE3DEB1CF0B0D5C35742BD43BE6C1F0
          A1C9C03722D2BA0FE6C99E3938317564EF866B00E092DE19CD35A014D05FE7CE
          4F18DC28B18E385D4CE0390E71FA2FF8E7E2054A4E06599E434E369BA630F6E9
          C950E28251A50150C452E96965EA9C06E3131FD63A9776C112B230279BB21C61
          D98FA91EA0BA0C39D5CAFF47DF9D0D4828B71E0F108B3E397088420F8F913C14
          5ED23F7CEFEA00209F99541D40804D853BEE58AE196FA002F43A36B5CABEC436
          4659434B975150AD01CAC0893F00190CEDFE472FE2D288790EBD78348F00C39B
          7BB9FEC2D8C02B29283AEC1E5ABF42AF5DBD24F9BF65441A4AB816B5F6F5F0AD
          5350C328D71F4E9C61208D2A4093B3488D73369B175D8C3C7023839B065AAA02
          B432DCB1A19BBB5676713F3AA87650D76CAF8AD8AAA0150D28E8D1F13321428F
          AAF446AE9D44EE6DADA122760FF5A986DAD18091BBB3FFDA391550E65A052EB3
          52113CB62F34E8DB388047543078FFDBD3E1D14130656B94B1E25DC0C5622F79
          DDF3C2B69B550F953761A2DE79ABE14736D623AEA514F5F6B33B413AB2E6356A
          C9921C5A5A9506EC31E228DE3B7EDA2267EFD57BF3FAE898060A5040D8B36D4D
          9813FC5ADB1A78ECAEBAA9BEF400B14F4A994076C5D056EC224ADA3AC03BC77E
          53450BD7042F99E0A8B5422C23521122D017B7AF091E8DE64A0A6A1889F0C9C1
          EBEDABB8ED33F597EF08AB18BB25DB2C436F206F7D794AEBBF88DEA1D57B14B9
          D73134FE56D8BB7D2D20324D95556086519D3FB56995D63EFBF885B331C41DBB
          25ED4D609A6C57730A2493E80A0A6633144004CB8A89CCAAD3A4893ED172B507
          CA505D730A8CC699997FCF8F8F8C4EF4A347465191B1C5918949DAD1DE0290B5
          F8BD98B930FD3DB98B730F31F7D73173D441B688EC0AB20571E954F4CD97CB2D
          13F073649708D335A300E5BB7B4E763E065180FFF173DDC9E762BCF01F584354
          31935CA7FF0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000D744558745469746C6500466F6F7465723B14E3FC1C000004BB4944
          4154785EA557DD6B5D45109FBD368D36D51A6B1FB43569638DA11635680BD1B6
          5E2B958A042C165B31FA506C5A103FB0DA27E91F2088FDF0A14D51088AD897FA
          223488F5230605A30F2288DFD21805419A6A5A9ADC7376C69DDD99B39B78D37B
          820BC3CCEE9E3D3BBFDF7C9C7B0D11810E630C244327A994DDA72071A4F7A4B2
          A0DE8B452A752E32F5B4DA72293AB1A2091A0C6540D11B9643EFFD78DA542A55
          121C0454684AE7828C8527350478697B572B004C39A9BD38F80DA225C82D8275
          72644F7729062A602AD5A71FE880F98E0327BE8763433F4DECD9BA7A3103F9E3
          CFBF41C7E296CBCB8740C365BD61220B698049ADA818E59A1557C2BEE3A3A75E
          D9BDEEDE14409EE37C1C8897BD3332EE2F40A19A2788C1760A2CA27766FD4DD7
          78076E5DD5CAEB1B71E0CB0F5EEDBF73F3632F8F9077C0A20F33115DD201C3A2
          6819E58EBB97A7A8E3907C4889C8F177B86A5113AC5D7935B357B547473F3CBC
          77DD9684383486F1516306F4C4894FC701F9328F1A043981F57304C4C0CEFACE
          A560730B3C16352F80AEB625F0A0A56AEDF0671F1D7DE6AE5EA98C6927993831
          B7038811EA8E8D2B02DA82065511973291E563923BC1899B972F81DE9E951B3A
          DFFD76E2F96D6BDA01E09C9467DE808148DADBC36340920388CC056BF03692D8
          84D0D3B50C565FD702BB8F8C72BCFDBE4561CA49FFA1CFCF0C3CDBB30C002E6A
          CF983B071035CAF0E8A61B8062B2D76142370DDCD2D60A67CFFE0593E7CF439E
          E58E911C7227B52C83E3A7BE03696EA6611560C2C05B9F8C7984E45187F82B1B
          9A0B2828E39E13C98FE7B6AD758E205CFBB55507A08403585441DFA636202368
          51B4619A147B28ADC884CC15278A0A349A320E0062B4073FFE15D0F27B04356A
          3E280B415B9F8C189E652DCFEC7BF83606E26D0D71E33EA00C38E9ABAE2ABA1E
          E9D9F85D88A7A43181341B4333BF4C340F060CA352F6064FFFA2C805B16A8A5A
          B33DE640C819407861FBED40C25659072A6863DA3FB1B92356BD5AF14BA876DC
          A72028ABF29C86D594AB82D86CE18DF77FD68C9658139030C1A8B54222235A11
          E1E2FD8F747B2096B04C15C43EA070776DB9D19B28488DB7C592EC4FC22B730A
          B920736421289F038C4CC7C0D00F5AFF01BDC558EF0972D2B93840180A73FFCE
          6EAFC9CE270931C6EFC9AD9D12575D8936CDFE2E886D88240F40C2C3820D3BA1
          F9CFD7304936599035A15B6466269A784E8F2180822A9503885874AFE993BD90
          FF361C28C540736AA3753A17CD6B16C0DAA01776DC034BF70EE98F99F2ADD852
          F4D6BACBAFEF3BE68C0C809CD83C1EC0640D6B4E7211EBD7BF7AED20E35730E5
          CB90942EA19F219E797D1723F6428CD2A357DB6B6127E83B1EEF054CFA0095AC
          02C334599B3611F088DA771E1094593C90D7C29A750219CFC5236522942B029B
          58BE0A88B0407F59FB7D30FEE653C507856C8CBD659D4B0E48FC51F6F9B9E6AE
          FBE59C61664AFF1E004CAA60E14327A1492634B3DDC639A4464ABB56102A03BA
          5DDF013DAB8D703A5326F805F1729C5D66A43D8FF74C51AEA807A2B2970A0189
          4C4D5FF867A4FFE0F0064F252448F42343D2EB83BB69BF1004A49FE8626F6A72
          E20BA72ECC7662F6BF638E51B39316275738694A4BA7810DF5F64432B9FC9C93
          8B4464E70A0132F3F2B379B2CE8BCCFFF8BB6EE5BD986EFC0BF8B847396EC14E
          030000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003C744558745469746C6500496E7365727450616765436F756E743B49
          6E73657274506167654E756D6265723B506167654E756D6265723B5061676543
          6F756E743B127D2411000004C549444154785EA5577D68955518FF9D8B63BA4D
          B7F5411F9B9BC6986398A2B8D0BCAD9B7D60C54686184A8110D3FE3065C9C2A2
          FAABFF42D0ED8FCC111424614111068E5836D4CAB6FA23FAC03E20722DF003B7
          B92DB7FBBEE779BABCE79CF7E18CF7765FE98187F39CF7BCF73ECFEFF77C9C7B
          1533C389520A22908D48DA73362A227E7C5990F4C55633098E54E22A36032000
          DAAE8C126218B0E89DF3C39FFEF6B9CA64726C7130385ED9DB1B64CC669327E0
          95AD2DB5006601E47BDEFD814833424DD005EDDBBD26150319A84CEEF947EFC2
          8DCA6BC77FC15B03BF8FEFDEDC540540FD7D71124EAA2A17A64F814B978E0CE5
          D0FB09666BC912A16CAD5F8CFDFD23270F76B53D00118421214932C5D2922464
          D41376AB0D60D5F25A74AE6FB8AFFBE8B783C75ECCAA38004D52E4C90C48011A
          B43E4A31E509C775609D1063494519562EAB8166CEE92323A77A9F6B7B586204
          29A5B820A552204E3FF8722C32C8151B1844C62606345114C0BAA69BA0430D00
          A8285F8096866A3CAE3997EFFDEA8B237BEFEDB09D31072090208A044024116E
          DB5867D04A77DB4570392682906DED982056D455A363C3B26CF3C73F8FBFB0A5
          B511C084CD6258820121EDF8D9BF406070841A163943477B029161E79EE69BD1
          744725BAFA46A27C131134D9F788B1EBF0D77F1EDDB7E15600D7656614AB0122
          97656CCBD68125F7094CB84385D6A535B87AF50AA6A6A711062182304458D07C
          10A0FFE47957F4AA641B923080F7CF8C826D0D10455C18D44420B676C4041B75
          CF19D17E4F672B829070CBF75ABAAE74001477C1F6EC52B0B268C9AECAE4892D
          69CC0C61C2EE1D4EB28BA151A509004462BF77FA428490C92032E804A9B6C8D9
          3B63CB0AB0EF899560CB864B71E939E01800B0BDBD219E07EC00C8BD209FB2B4
          43190614FB37130B036952C0317BC786FE006980A2DC4BD54BBECDAA196026F3
          2E53FC4EF793ABC0E6DDD40164484BD9EFB87FB974BDB3E426B4B608B3518A9E
          CA7B44C27069069C33712C4EBD00E40CDE7896C78A8DA19912BB20F35F73002C
          4A56652C039D2F0FE2DA4C3EDA3FD233006225CC5861C5267D8CF435A0C9A3DC
          A8DF55F8757402B7D596A36A5119CE5F98C4ED350B41024498702DAC6FA40889
          7DE7ECDF8C9BBA07A049436BC6C63D2740A18EDAB1EDD98F30FCF616E3C5CE09
          618F4A4E42E5DD86824228B5D40F1EDC8CAE37CE60FF5377A3B9A11A3B5F1FC2
          81A757A3A5B1C620F76B249E212225E60011B9E9E585CB5060058C5D99C1E8E5
          E982F32518BB5CB02F4D6345632D18C63B097BDE559E7A146B2ED67640FBDE13
          E6960B35D6777D62670061EDCE0FF1DD3B5B8539F9B00393BE0DD92B425F877A
          3BF06AFF30726BEFC4A6821E78F31B3CB8AE1E0FB5D50360BF10DDCAF1D45469
          5290D19A3DF4620053FF0438F7E325F4EC588DC9993CCEFD74112F3DB306CC2C
          6CB19F558A18483D09E52E90492768165794E1B3438FC5349FEAEB8C67BE3FB7
          1C6A05220526A4FC3D20F9922AB61BA1D4AA502D4662EB9261408E130290C378
          10CE058E0902B138A7F96DC6F2DB8858C5ED4A0E852CBA780A84E9D9B9996B67
          771D3A9D2572544A3AC8B59A43C8E4CD0BF388DD151D9FCD4E8D0F0398991FC4
          FC7FC71900E5002A012C0250E6B74EB29DB8FAB90EACF30900D79959174B01D9
          DFEE2180A9842F52FFE3EFBAB6DF4B10C1BF0204C3722DF68E47000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003C744558745469746C6500496E7365727450616765436F756E743B49
          6E73657274506167654E756D6265723B506167654E756D6265723B5061676543
          6F756E743B127D24110000052049444154785E95975B6C55451486BF39B4E552
          0B0225112BD88242692A444904632BE5661348509E24A01820608C06148D1762
          48F4D1440DC127424011149E8CF8E283024AE51A120403E80B08D4608208A7AD
          BD9C3DB3AC2B334C7636ED394C32596BF63EB367FDFF5AEB9F1C232284618C51
          E3672E3CF696CCB3E80BE000EBAD901EF87332A3EC4E877FF2EDEF3FE4CC9016
          414040104420AEF5833AE33AFE26F888E084039B9735CE07060F0022CA9CC9B5
          AC5F3C29137D49A822209D1FEC3D3B0FE06E0230CE1F9858C189C33907800BC8
          107D46400958118C0882019323971BD23F733827DC7500915261FFC96BFC79A3
          9752D3D1E760CD9C6A2A860E07CA35E837769CE1B5EDBF60AD63EB4B8F0E1A80
          890C8075B6FFF01ED62F9E4CA963F3BEDFD87FEA264B1FAF40CACA94818F564F
          372B3E6C937B2A8795C880A74DC41183F1A87504E4DE8B4651363C50C5DEB676
          96CF9D145250BEE7ADA6C29A2D27245370770C4024E69CF4703AD343A2D500A6
          D78D6646DD18761FB818EA67183024B14E0BB378113ACDA9461F1810842CE050
          0FA805489C307244398DB5F76A615EBC9607180E143EDF381BC01A63444406AE
          01FF0E0DC4457C7B0FB7A31B116E0729609D43045E985B874D2C00238696513F
          7114053B81EE8F0F7DB36D63CB12A0C7CF820F62A036F424FBEA0E889F6BAEF1
          708389DC07260A89AF19D120985A338A679AA7CCAAFFFADC5F1B9736D402FFF8
          2C2683A4406D4883F7E1AB9FAEA8D5E7225865C1E11CBA5EB560320F8DAF64ED
          D6932456F5437F633D93EBB61CBDB46DC313E380EE20E1D900403786433C016A
          97354F88C8534CC420D7B64EE6C68DEB7474769214120A4942D23F7BFB0A6CFF
          EE42287C53A20EA81212C69E1F2FA3C1690DA0BE13EF2B13CA587C2EE8FAD525
          0D140A8EEA3336D37965C5DAD0C5F3593E67221214D8E0A517C020EA07BAFC3A
          E0F47B3C3053F4324AD780F33E7C71F052684D9D01A9F5C825F52EDC23B0E1D9
          C6C00681E5223AE010096D16D880152D0F22616FBC1762F23CED186500231EB9
          4E418A30106B20A076E93684589006C9C8A1C3107B32509E61D31495E2A03D36
          550312AD1184D8010BF7CDE3566F1E4498FBE553BE553DF2F03B2DDA08B2A422
          0C151D466CBBE85FF8FB02F78FA8A1AABC8AF3D7CF31BEB246D1C670C3FD0E56
          DCA05D6082B541079C8D0128A56A30BEA29FDC3D4BDF5B71CCFC6C06E20C562C
          D37734727AD55930C63785608DD647D11498F4750CDEF554461FE0E7E78FF3F0
          98A9EC5CB48B132F9E66CAD87A762FD9C7E9D5BFFAFD3A2363B6B436343604E0
          99881F0388EBF68EAB5CB9F507F5631BB8FABFDF719969D5D3024B1052215E53
          420A8AB76114221B3A226AB2A29AB56BA6D2ED1C3CB67306AA09CEF2C8B6699C
          597B3E734D4BD4014A524291282EE96E338881A32B4FF1CEA1B7995F3B8F05B5
          ADBCF9FDEB2CAC6BE5E949AD2012521619700AA2242976A1F07AFA0A84741011
          A9BDD597E758FB11DE9DBD897C4F9EA3FDFE7B4DEF2300A4730F81D1C194308A
          565F4F67BEEDE5AD6D4DBD5D794657DF079046048CAC18C9C115871595C1D0B6
          F2B87FA7E8C9A887B2CAC045A81F32C601FFEEDCB4682950058C7BE5D323C749
          2381B8278851562324DD5C4E1970456B401900F2402F20B7D3514870425A5AE3
          415EEBC3BB78574419017191CC6C00B1D29D31A6CFEFE9E8E9EA685BB7E57013
          02CEAB914844AF5688D6C377620017DB5784EEAE9BC7802EC0656497EC7FBB1C
          50015402C37CB066807FCF26EB67F29DF8C3F340B788D80C0303A4C3029DE943
          C2C8AE077827B1C8492203F01FA7E33635F2F73E8C0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000019744558745469746C6500496E7365727454657874426F783B546578
          743B96F8E3CE0000051049444154785EB5975B88575514C67F7B9F7304131DBA
          1206439452F4609ADA680D658810743393B4D151CA32B5878C5E925E82080A7A
          F421C3C20C0D9CC2BC2592884222CD8C9722119A48B49A14C9B10CC799F99FBD
          9A0E8BB3D87B108970C3B0CFECCB5ADFFAD6FAD69E718003BCCE8E7838AE3EDC
          7FDC172000252039E03FEAE8DE9B793F2BBD8680387002022082C32108521F11
          10103D8B88B941D7A1FE4580B22C0FAC5A3C730ED0A800FCEB7CE9BC295CA3A1
          E06D61DD679D0F031950E6805392080A17E790FADBD0E340C4A9518B14678113
          45EB74B631AAF08804D4321500BD6D462460034210440D79EF956B0BCA89A210
          03A6FB86D152410828005C9EB08380E6D99C9FFAFD02CFBDB79BEB2E9D67F7DA
          E5E4458177B1C3F59F77A75447FB2FCC9F5A071952062C7265022D2F815096EC
          38F423209CF9BBC1C1A33DB44EBD1B9765B5F1002C7C6C92F94DC21E91CD6028
          738D1275AC46D5700834861AECDAFF03CD37DF40CFA5B174EC39C2CCC913C832
          1FE57DD38EEFEBDB04419C31E004963D3B1D41830A72A51AD0992A72C071ACA7
          97D10CF0744B33EFFFF62707BEFB95B3E7FA187FEB4D789FD5F26C7B7C122071
          06C48A51740621484818102C67156D0EE73D8DA121B6EE3DCA9C96893C746F33
          6BB71FA77FD4683A7677F24AFBA31485AF89DDB4FD189513D3BF368A80E07869
          C1F49A594919B0C80551EE4484CB03831C3C718E6573EFA7C83CD3275CCFBE8B
          FD6CDF7F7C98D25964F9188D09DA9E98345276E222B92A40420857AA01EB568D
          46C9BEEE9F38F5F32FCC7EF10310A169FC6DF8CCD3DB57F24DD70966B74E26CF
          0B003EFDF25894C254DACB17B6004ED34BCA40880E8330D468B06D4F37AF2F9A
          C1B205B3AB7C5FB8D0C7C2B7763238761C1DBBBA689D760FD9981C01163D3939
          9261DA7E8D170852A2C32903B16E1BA1A4F7EC79BA7AFEE0B5A58F50E405CE3B
          9A9A9A68B9EB4676755EA6EBE45F9CEE3DC3C43B6FC73BCFC6AD47D0419C5240
          E0E5B619D60742C28056A5228593A7CFB160F57AFACE5F64F5DB9BD9F9F11B64
          DE5717BFFABA7B98897E20D0FEEA3A0E6E7B07977B163F350520726C8034FFAE
          9A9346A45529404040E08EE65B38B4650D2201EF1CDE573222CFB2E1F5372943
          0902DE67D51E227CB2F53048CC00424DFF8AB699B65F2AE5C680EE0495A173E4
          793EF2D1F19EA228C82992E8A07DEE14A8F50E0E6216CC1AEACF1808A5185A81
          0F377FABDF7609A531EDF3A86C255291E0C4C000AC58FC40CD8EAA8E912AD027
          77D170341686D198943752F9776040315AF44D710970A08C1A912DD47D7CE317
          878D017B50007BE315A0ADDB9C4A1A80954B1E543B2803264327214497DBE7DD
          87101B1288234DD73415D83D8B5E9C353B91B406D0058B60434737A27F1559FF
          3607EA306EBBA679703520254A861968ADD3192455410808D445D33E7FAA1557
          443551ABB56F0B59B082B641949A503252059A7E1CAE6200491CA554AB00D27D
          03813120B06A69AB0549483BA1444D64C933D3544ABA8C3319DA221239A37666
          9948EA0547E52A95A176C25A2E1BB674D60C58D4AAF1CA43243D0360E0E26624
          B0F2F95610B13E10CB307E0D570D4B4600E246A34052CD5BA9590126FDC2184C
          1B9A530018004BB1FAB748D2AAD7D6AB0722360C08CEEC39470082C429105106
          C68D293069A7DAB7350312B75BB182349E245686204830EDE4C0D0C040FFFE35
          EFEE9C05000109263D339ABCF111B89876B1F376D75032383470001844133CCA
          7EF057FD0FF9FFEF95EAFC3230E4CC29FE0A46AEC508FA23FF001F7FF4824724
          0B640000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000D744558745469746C650053796D626F6C3B22EE4FD9000007C04944
          4154785EAD176B7054D5F93CEEBD7B97CDB2E1A121844889A5B42440254DC50E
          C596421DE431A37F80408B5423B6A2808AA59D166D4B898E54A7563110A4CE10
          0B4E1DCA3058DA69D3D1011F85FA80445A185FC823135892CD6EB277EFF3F43B
          E7DC73E7B265B41D7B67BEDD7BCEF9DECF7331FAEF1F8CFEF787FD3F98E23228
          A72B5FB32BC1A72AD0B4A60305B183377FBD5C0924D7AFDB3597EAE6424CC80C
          D8190DDBB58863B348A25C32FF2C0B82ACEFF97F774B8307DED976D75FE0C497
          A7884D5DB5834964868E6F6FB95C81465020122C1F32635DC7B76822F918A664
          2AC104716ACF7691EB3AC04348944CE00C7090612410D628627E807C0E8ED555
          2AF46D38FEEC9A4E40F30082A92DEDA027425D3BA502DA15A285C734CED3EBE6
          7C6F0BA1DA6AAA11B1E9BA3EB28B45CBB7ADADCE506ECF895DEBBBE29E9CBCB4
          758A9119B524914AFD403786999A4E11D1525308355E6ABCABBDEDE4FE2DEB07
          CF9F2C1D6F6FF11B563EA3A4C53C706F077AF3C9E5E4AA866F18136FBEFB056A
          188B08C54231D771516968F0BC9DBB70EBBBBBD6BF1DBA955D214FE897966E6A
          AC1853F7A29130AB31914EF25D0FD985FCC193FB5A17177BDFB7E2F4B88C099D
          F1C0EE5FE9A6792F21446CF9BE87ACFC9063F59D9B7DE2F90D4714F1B455CF32
          C6641E30A0ECDADE22F20580D6376FBE7ED898F19D8661EA702E43E7BAA8D897
          DDDAFDDC3DF77387AABC886735695ABD73AE91CE1CA45A1419640D159193CF3D
          7E6CC7F77F14C691893802854A2825A47BC72AE509E3CB776E6B358757AE2584
          2216E2D8450B0D5E38BDE8D4EF7FFA67951324AE80964C3D4A280D993204D90C
          496795B2270E3DA22C9F02C205C34002E320FCCC50C3CA3655725EEFDB071FF5
          6CBB24CE02C94F330C64A446B5C2B9AEC246D4CBF4556DB310A153854D01A7E1
          6E73905BB2F79E7BED7779BEDD70C736A61872F707287CF7010258311FD5AF78
          4A28D17374DF8057B2F6F99E279504C02089EA467DDD820DB378A8E25540A899
          5C4830160CC5C315705C5E4A9D2A5EAAE0F902F97C211589C220CEA39FC0191A
          E8D4CCD412ACE18827F7B096AC9C07AB97013C2D7205D66F4422E9A54B31370E
          42E014FA8E2BAECAFA58E751E2E43B167F9102A5FCC56E734415228C4AB70202
          A11AC29A393BF400561EC00CE3B148E04844CEDAF75D947BEF8D8F244365B52F
          85B0C853D2234A273F5A31ABF7C3DECCB87AC4A8AC168E89B1F046CD7F2A8050
          A54A2E892D055EEAFEAB1571649E10225D2F5122F707A11038504FCFD117FBAB
          AEBB1905A054BC68002A550B88140073738C695763C662C66134E20B3353FDA7
          0EDB62ED2B915C92B256310ECAC70EAE6ABC656400069148312613DCF50A0A89
          28E302DFEBE10C59880C84A24632139A26286D59C0F701C70BC02A9FB3E38408
          941734128288B739A2A61A23552100011295E57BCE191EB0B807985BB25EA5BA
          3E8D601AB916138AF4D4C8E9B07807000701AFB798B5285CAAA8C9B8447DC518
          5E359D312CF725F0B2465EB170485516894AA67069BFEF78A2FE55DDEA9A86A8
          919AAB1AC7A917EEC3E002E909E1252471054D20E0FD3F3CA85AB2A199E93942
          154503FFAE5D82CACAFE5135361582E0F4DF76BCEED8D6BB81084320B5261469
          86B968ECCCDB3FAFBC15088142700C7C191A80D07AADE66B2B26522D391F4734
          4C0877870AFFCC76ED7D4DB575E50166653FB2ADBE9E8D6EC911C88A21354D9A
          AA9AB88E5B0440DFDBBB1E0B4122DEBEB4DC67220F3EDCFF631C9657A2625CC3
          1A843195A80CF9AE8BEC7C1ED9FD677EE10D5DB2540E5C368C00CC498BB73C91
          CC8C6C219A1E95983D5870073EEE9E7FF69567B8E60E803F61E166AE6194F8A7
          0FFC8484C2CDDA5977DE30FC9A6907886E886908B9033C06D150DFF9DFF6BCFC
          F87D8033A43C503E8EB544A6BA62FC4DF7EF49A42BBFADE91AA0C818968AC5DE
          FCC7C7969C3BD4FE16ECD86A9AC5AA490748D4CCBCFD2BE96BAE7B5ED38C2ACE
          11AA0BD93051AD5C6FE78537DA9779566E203482952BA006936EA4AF4ED5CE5E
          FB9891AE5CA927120813CE49C4B00457AC9DA5EC993DE75FDD7E5430928F31EE
          C6BB9BCC11639BF5646625D1F50413B3C401CBC1ED858BBB2E1E79EE41BF3450
          501E2C5740C54E8F85451FF7CDB5379999EA8748223159D3137C9C0A8B8AFD39
          F4C1FE1F6600A718E2A6262D7D2A4708913720C702656DE416F3FFB2FBCF6ECA
          BED5F127C07155C9471E54451B0A1F36B9F96956B7E0673F8735675E01301CE0
          AAEA1B5A96D5CD7FB8A3FE3B6DACE1B6763661412B271C056084307AD2E227D9
          E4E56DECDA5BB6B0EA99F7EC1E3D6DE90AD81F0B3032E437FA73F3366EAE9DFB
          100BD76210C62F243A2218E91595B78D9FF34033B70AC004A03DAFB71FFAE0A5
          877F29677BD4ED483C7F543F085C1FF51CFECD23D963BB0F8742925C60CDD757
          2FD312E9EF86B322A1E8B5780EF043C34CD66A63AEDDFAC5E6A7B7AAC182C389
          47352D6A38650F56B7A3443A8D26DEFA0474CECB47352244DC0550908F942F57
          8031CF470CCA0F03320588CF7B22F9C8FEE07B7C37AE45C06703E16718234842
          818B05B52454F709C013AF7105D486670DF41FC183DA57E57D2088D0A2D91B0E
          1FD71E3C12DD6CE5E35A03178F626A34295C79A3E17C6213947FAC940AFF1095
          50DE88541D87FFE413BE038350B81566320A694C491FD196F71816D2DA21AD53
          5E860AC8A77CBCB2183356D649C927D0214517A365F8B37E7E7F56DA7F035E55
          ABD2221B6F280000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000056A4944415478DAC5975B6C145518C7BF3126BE98F8E0A3F2E20545CB
          A517AB7881B68B626244D26DC56BD004E2252815DA62696B0960A1F48EB70A08
          A442DBDDD95A20C4C4D02D8D8926B5BB5D5A4A2982F181086883EDB674DBDDC5
          F379CE9C3367CE2CCE243E759AEEECCC9C3DDFEFFB7F97734683393E34F542FF
          E9325E99480021683C4176A6074104F68D5D1B7F445C23FB67D704D850FE8C8D
          27E219817F081FC8E69877F71DB061559AE608D074F237DCF8C27D36C2CE1F87
          C1BB2CED7F7BD6163C03AF7996D8EE957C1386BA75596E009728C0FD301D4F1A
          1EB0C37F7A100A731633F700D968C353E510172814306FF9822128C8C994C326
          A613F0F5F7A350BF3EDB19A09102143180D99B5C4E3A93BF5700C07F18178641
          314EC44D5F300C05B976809693A3D0F88E0B40C3898B38EFAE59989C9E159313
          CB49F1818A6592AA02FB4240E407829451805E1CBB1D9ADF7DC219A09E026C7A
          F101989A49CA1FE9BD112A65FAAD5E0BC344C88232441CD2CF14C8CBB029F0E5
          89F3B0F73D1780BAE3BFE2E6550FC2542C694C66009C8E40616EBAE2A5694453
          BE5B6130AB43EF09417E9E15822803383E029FBDBFD419A0F6D8052C7E693E44
          634979CF4F015E660A686ABC85E066198AA9CCBC61E7403005209680CFBB46E0
          8B0D4F3A03ECE9BA8025ABED007ACF004D26534A5EE708BC1C889A175201FECC
          D71D82428F0270230E7B8F8DC0571F3CE50C50D3358AA5AB1F4A51202CCA8905
          9CCB6E7A0A6029C03F3519069D01A484A0B9EB1CB47CE802B0BB7314B7E40B00
          34939003A0F49619D7A449544A53F6017A9301781580490AD0D4350CFB363EE3
          0C501D18C132EF024A9B9493FA7AC234093364FCD92F8CD6AC24A5A58126CBD5
          4F010A54056E3080B3B0BF68990B804E010A16C0F87452D695AF974A293A1A31
          5D067BBC89DA9E04A82FD84F7327CB1682A6CE2138B069B933C04EFF392C2F7C
          04C6292D085B7E1682E5998ABCA99E2BDD912E4AA871157CDD1420CF0ED04801
          0EBA01ECE818C68A358FC2DF14C0945CA749E8CDE54968F57BCD9688666D4A28
          067EAA1FBC2B1EB37280CED910188443C539CE00DB3BCE62E59A34B83E9590FE
          B132F4E66428FE4A9541B16AB55FF14C67001E05603A0EF5FA101C2E7101D8D6
          3E8455AF2C84EB9309E94D8026613E4B42659CE9A5C5602920B61254815FEC00
          B411D5F907A1B534D719A0AA6D08B7BDBA10C626E372C2400F2F27690F4529A8
          21B12DC9FC1CE8660A64D9013A22D0FAB1C719A0F2C8206E7F7D118C45E37605
          E4A2629619312AC46AC3A2429424D5BBA902799602AC15D7F92270C40DA0E2DB
          33B8E38DC5F09701804281306F2856BFB5C75B8D86328601E47BB2951C48402D
          05385AE602B0B535829FBEB904FE8CCECA44EB0C32800C6981183FD26E6946B6
          FD02AB020A50A000446912D6760C40DBD6679D01CA0E0F60F5DA74B826009885
          CE1E5E86A84C6EADFD8AD762B934C1F594246421A86D1F80F67217802D87C2B8
          FBAD0CB81A9D951EEB41D15251B33523A5295A2BA1A248A0BB8F86C05E057B28
          4047F973CE00A5074358F376265C9D9891191F6021F0643A780EF63254F60C3A
          05486D44353404BE0A1780E203FD9876EF6D345E31C3B8A67829938E28B136EF
          8B0BA22A24572F935383C8EF37C15FB9D21960F3FE7EA4FB76B8323E230D3205
          F29902C43E9D65C86ACFEAF64C0FD224CC53AA2016875D6D61D03F7101F8685F
          1F36ACCF863FC6635266DE88B214C9CDFD205A99CFF243B34A9403F4D11DD1E3
          1600AD825D4743A0573DEF0C50D4D28774DF0EE72F4F88FD3DC0A9BE215891BD
          48F55BA90634563F0D2DF9CDD30F3F4760E552FB9B51350508B801347F378897
          AEC5448DF3AC2644BCE711BEEEF37741F10C797112A2AE055C3A42D4D592633F
          7CCF9DB073DDD3CE007371CC39C0BF79B7FF4EF1B0F48F0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000003A149444154785EAD973F6F1C6510C67FEFD942347C120A0A500AA428
          32424A4515A0A5A34CC5E7001A4443434101711568402141A441910D42821496
          A0A34A01E7DCD9BEDB781E4E8CE61DEDE88EB504239DDE9D5DCD3CCFFCBDDD26
          89B611A001FBC00C083DA5EAF5DEB46EC02530F88924B14FCAFE07774FBE99ED
          EDDD30133490C92D2584EB427E021248426698C09F81C9F067C6A5011226310C
          AB87EFBFFBEA4D2783C069E051F3FC875FFDA690C3EF7FD1FF219FDDFBA92BEF
          7D7224E005600FA066A005A9E56A60BE386771318040E06723F490AE48A0082A
          74C1FCE9194FE62BFE5AAE918C2CB1CB888080C387BF72BA3C07E08B073F2365
          09A5316E4348609D459489CE4A34EE3C380281D973247825801BBF79FD4516E7
          039F6FC0DF3E7829A3A78822D24EC5A3260D2436E0C7DC3A7899F972E0E4CBC7
          14290446D1910E8B48631248A89748233FA105C15D049AFBC9541AB6BDD699DA
          9A1D072FFD808191D92A527A400A1B1AB35A70A400CC6E548FB82578C2A3A66E
          68A6DA03CC6A6AF3DA4AAD5D51A45B60026574FE23451266B898B0890C50CC03
          3FAFACA1524F7512D98CAA8B507E2D3141C05291EB39FB6A019DD749B083D754
          4A1EB99FF6EF6368997672140236EEC5C8D54EF7C66454C6A427850E3B175136
          2E18421600791F732D004BCBF523F70279DA440F5816B63A099084CA94674066
          A84570051C30267B2041AA71F21A6FBE0C192725C1C82ECBA7C931CC7AB9D61C
          24472C5DBA2B25380478020A64C48DC9296859023794124E95A84219EBA6DEBB
          24B0DB4FEF8170422E9B2A528E873A78B10F7435A44617B3892674CB648E3A21
          97E63F0CD4460CAD90201748DF9AD34DA8DAE924B0B6345B366A5C979E18C513
          7A4BA7686B0F88B2D795E119D0685B00B62F7343A44FBBFA188E10CA363409B5
          12350D0AA1FA8F2971B545A4128B50D63444E37AD7F51C26E92B8797E9171281
          547AC20132F23286F59D619C0AB0B4D9B5889A9908B1E49127A177E0F22C6325
          D3DE59EB2A7BE0D3AF8F992FCE107078FF38B360C04CE812C87073C777D0466D
          86C36F1F39B9E91E30DEB9798D3FFE3CDB181D71EBE09532627410659E911A6A
          DA92FAC69D7B8F78EBF56B9C2E57FCF8FBD14E02727C574E176B24982FD7E96B
          DB9F8B845AA3956F83324AFF80A73DB68BC0E5B0BEB87FFBE31F5E3309699F93
          BB8F31332490098BFD6042318EF1B22972DF6BB4A637911F23C4B3F5C577C010
          242A81F547B76FBC51BE905DAEF8A53CF1DC8035B0EAA9A919002ECA641480FF
          2C96E02E7F03A1481F3C6A8350260000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000056A4944415478DAC5975B6C145518C7BF3126BE98F8E0A3F2E20545CB
          A517AB7881B68B626244D26DC56BD004E2252815DA62696B0960A1F48EB70A08
          A442DBDDD95A20C4C4D02D8D8926B5BB5D5A4A2982F181086883EDB674DBDDC5
          F379CE9C3367CE2CCE243E759AEEECCC9C3DDFEFFB7F97734683393E34F542FF
          E9325E99480021683C4176A6074104F68D5D1B7F445C23FB67D704D850FE8C8D
          27E219817F081FC8E69877F71DB061559AE608D074F237DCF8C27D36C2CE1F87
          C1BB2CED7F7BD6163C03AF7996D8EE957C1386BA75596E009728C0FD301D4F1A
          1EB0C37F7A100A731633F700D968C353E510172814306FF9822128C8C994C326
          A613F0F5F7A350BF3EDB19A09102143180D99B5C4E3A93BF5700C07F18178641
          314EC44D5F300C05B976809693A3D0F88E0B40C3898B38EFAE59989C9E159313
          CB49F1818A6592AA02FB4240E407829451805E1CBB1D9ADF7DC219A09E026C7A
          F101989A49CA1FE9BD112A65FAAD5E0BC344C88232441CD2CF14C8CBB029F0E5
          89F3B0F73D1780BAE3BFE2E6550FC2542C694C66009C8E40616EBAE2A5694453
          BE5B6130AB43EF09417E9E15822803383E029FBDBFD419A0F6D8052C7E693E44
          634979CF4F015E660A686ABC85E066198AA9CCBC61E7403005209680CFBB46E0
          8B0D4F3A03ECE9BA8025ABED007ACF004D26534A5EE708BC1C889A175201FECC
          D71D82428F0270230E7B8F8DC0571F3CE50C50D3358AA5AB1F4A51202CCA8905
          9CCB6E7A0A6029C03F3519069D01A484A0B9EB1CB47CE802B0BB7314B7E40B00
          34939003A0F49619D7A449544A53F6017A9301781580490AD0D4350CFB363EE3
          0C501D18C132EF024A9B9493FA7AC234093364FCD92F8CD6AC24A5A58126CBD5
          4F010A54056E3080B3B0BF68990B804E010A16C0F87452D695AF974A293A1A31
          5D067BBC89DA9E04A82FD84F7327CB1682A6CE2138B069B933C04EFF392C2F7C
          04C6292D085B7E1682E5998ABCA99E2BDD912E4AA871157CDD1420CF0ED04801
          0EBA01ECE818C68A358FC2DF14C0945CA749E8CDE54968F57BCD9688666D4A28
          067EAA1FBC2B1EB37280CED910188443C539CE00DB3BCE62E59A34B83E9590FE
          B132F4E66428FE4A9541B16AB55FF14C67001E05603A0EF5FA101C2E7101D8D6
          3E8455AF2C84EB9309E94D8026613E4B42659CE9A5C5602920B61254815FEC00
          B411D5F907A1B534D719A0AA6D08B7BDBA10C626E372C2400F2F27690F4529A8
          21B12DC9FC1CE8660A64D9013A22D0FAB1C719A0F2C8206E7F7D118C45E37605
          E4A2629619312AC46AC3A2429424D5BBA902799602AC15D7F92270C40DA0E2DB
          33B8E38DC5F09701804281306F2856BFB5C75B8D86328601E47BB2951C48402D
          05385AE602B0B535829FBEB904FE8CCECA44EB0C32800C6981183FD26E6946B6
          FD02AB020A50A000446912D6760C40DBD6679D01CA0E0F60F5DA74B826009885
          CE1E5E86A84C6EADFD8AD762B934C1F594246421A86D1F80F67217802D87C2B8
          FBAD0CB81A9D951EEB41D15251B33523A5295A2BA1A248A0BB8F86C05E057B28
          4047F973CE00A5074358F376265C9D9891191F6021F0643A780EF63254F60C3A
          05486D44353404BE0A1780E203FD9876EF6D345E31C3B8A67829938E28B136EF
          8B0BA22A24572F935383C8EF37C15FB9D21960F3FE7EA4FB76B8323E230D3205
          F29902C43E9D65C86ACFEAF64C0FD224CC53AA2016875D6D61D03F7101F8685F
          1F36ACCF863FC6635266DE88B214C9CDFD205A99CFF243B34A9403F4D11DD1E3
          1600AD825D4743A0573DEF0C50D4D28774DF0EE72F4F88FD3DC0A9BE215891BD
          48F55BA90634563F0D2DF9CDD30F3F4760E552FB9B51350508B801347F378897
          AEC5448DF3AC2644BCE711BEEEF37741F10C797112A2AE055C3A42D4D592633F
          7CCF9DB073DDD3CE007371CC39C0BF79B7FF4EF1B0F48F0000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000003A649444154785EA5574F6B54410CCFEC16043F86DF40418A0559A856
          51F0A254C183478FBDF935F4A49EBC78505BAD875EA45D2C82D25ACB561044F0
          E6C5A3DA6D77B7FB9E4D7C9D09F903D34EC1296136339BFD25F925797D134404
          A159007020138DB41A615D97D1F367651D1BD96FA4E69D9AD500EA9A78B0F47D
          A5D56E7710299A1252B2240282A4C73F649D0EE440474002BE034042BE43D8C7
          08157FA3AEC7EFEFDF9DBACCCE5004359EB642ABDD99BB7A0A726BE1ED16DCBC
          70064AEB5977136ECF9CCDDEDD7BD23BCF989544EDD395221E8C6B20E2534AA7
          FDC108FAA39A7559A21067A0BF33825FBB55D2E31DC5FDCFA08A19118A730EC8
          0F53604356590CB8C76770B0B4404867A4F688BE2EBC03CCF1CBD5CFB03D1802
          20FB917E2C5ABDE86E0031F9169CE121C102CC2FAF0391C4218E209D14ACBC03
          8DCC4E9F869D519D7413F17CF713DC9A99E47335C08420800B2BEB307BE99CA3
          052051F068E9DBA10E8464C070ECBDE75AD3C95971B428A207262BA404E66B80
          481A56D1956305E4DC0ADFD15C6848C2A6EA352052A10604D4817BAEC5010024
          5B881EDA6594BF8C850CA8B1C7574113A56D3FB10D913BD4A49A0882D81CD105
          1E592B3989C4C8877CAC14B09143229EA48D20E19114F017ACD302AC7321049F
          01DF84809E02D1881C25F941C4B68062C1296715957801045F72B26569C2420D
          A0B550AEB5A11C54104D0242B46DA93B0B42B1060C94F0CEE2FA5B69D090D929
          E65BC7B7D94B6DA8F39CB5C095EFBB5B3F05F550070D796075B2D8054129B029
          A6FC705145759F39DF3D86E2D220D2F9EE2E83192E5C7C1970AD53ED61598885
          2294D1E64B0E9D16401E952622F44E08381AA7CA4548BEDE9366A618F962033D
          F29F89B4906D314A04B253A606149CD4339972182D430620D3AA8CA22D8DC76D
          438DC41EA01DAD417C132836720E99C4959F059A01BF74C6DB43C7B7CE050CDA
          09522E8ED450FE87847757135C071279AE0D83EB20CF0196331010099EBED980
          ED9DA15260587DD55D732DA777FEA1B5D8FD605B550C885AE53970E7CA24FCFC
          3DD2E839EAC5E535B83E33A56167C6331045276F5C9C4A692790DAE80FC7B0F9
          A357AA01F423D9A65223D129A9032702EA3DF8E779B0BCE51D20830FFDDD4A2A
          9ECCBE3DA8FCAC8FDD10201073CFAB3FACC450966A789803FB75B5B73AF7F8E3
          746CB32800881877C213F0F5F597748E7CC7F301510B0FA90D5BCF7B4A8DA1E9
          6FB5F78E5F4E31E740F570AE73CDBD21F33AEE9B72E11EF99D706C48F5196864
          8FC1210BF0FF0B059CD73FEBAFA7D32C0EFF460000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C65004D617267696E3B506167653BE63071F200
          0003D349444154785E9596CB8B9D4510C57F751F4E0CE8FF1251702566914DDC
          F84017BA3004370177A26E226E4230195DC507889AE82ABE8266A1A0082282E0
          90F89FB81046EF646ED7C9108A3E4C8373BFD4A6FBEBB9557D4ED5A9EA094944
          046571F59B5BBFC42C4E2250400804201104420808400804AADF220194439D43
          FF6899BF9E7BE9F1534003248905B60022224EBEFCCC09CAB876E32FCE3C7B82
          A926410448F0C9573BBCF2C26350903FBEFEE793C00CC83A2C00B6506D5A1304
          48A2B5AC7D144133A52EB3C17231E3CE3AC984BDFD06C003CB194A5100BA8D00
          C2D1548C847A76051D4439A850E83030D997102068990071248094F8ECEB5BC5
          3300F1F98DDB480E5C680A98F5A03A1074A55CFD72A783016D040012679F7F94
          FD750270EDDBDB9C79EE113A515FE84C08BB035B8B197BEBC6A7D777387BA001
          051C5BCEF9E08B3FBAD68EC80036551AE56C98B99D4475880C62399F2189C5C1
          2A54C24C061BBAC0001CCC290505BD1684CBE1F604EE090F0952794F8C20E6B3
          194DDAAC01659A179029B34506827A2C5913F60494027FA1B61980833128B956
          0D93C6FCA3BE9D508307093273BA06B2D495299048066D3803E4300C84E78733
          06494E2B81C65E2650C9DFE4DD0BE1AA809712302EE71A80D820C274290232B3
          ABB716C4E1DBD2353310892C00FD7793065182593A033D2D6664939F27E46A64
          933585D0D41278C0A8322042E076AC38E10B0DC925C84C4C04B2698A0865A77A
          949CE6C3D728C14A08770CF43920B973D273A056346AA050AA074B75479B304B
          00051A5E470564CA229EAA01D7AC18679AB5377589B551DC9C3AD51CB02B2DE9
          7644091AAA29A6E875F3735C8B3A557C16C25631B0BF344103AD095708B7D2D8
          E3C8ECE50E70538826A10C5425CD36A5040DA8DA237A17C8912DB4FE5DE64C55
          096A1262329B0751360F152B19C0970DEF828109E4F34C831253079134380DFF
          F58C9D80F5E02C0CA358F2FE7F34109E84C58E5A532E49F856993180DF84BEF7
          102B90F79B8140126B07413253313276BF834840999E09129AA28196E2FCF60F
          805FB2773FFA7950BD2FAE738B0F75F00097AEFC0874D7298F91B8F0FA53FCFD
          CF0A45F0DE873FF1DAB953AEB9138E2C0EFF0D83BC7C70F91BAF9E46C0F1630B
          DEDEFE7E230054CFA11F23339651985552E3578EAD40215296AD2A16C0518328
          4B843C7C7C89CAF1A183BD078E81085C164F3BBF078207B716BD0B4801344006
          604B607FB5F7EF6F6F5EBCF944C841CF5FBA59178ED97024A43E0195747BEB9D
          EF2863B5DAFD1DD8037204A03AFCEFFD0B2F3E0D6C0173F7EC60C3D984DFA898
          AF80DDDACB000CE20EB00676275E3CDD4C325D02B80BCAD0D59D2396D69A0000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C65004D617267696E3B506167653BE63071F200
          0003D349444154785E9596CB8B9D4510C57F751F4E0CE8FF1251702566914DDC
          F84017BA3004370177A26E226E4230195DC507889AE82ABE8266A1A0082282E0
          90F89FB81046EF646ED7C9108A3E4C8373BFD4A6FBEBB9557D4ED5A9EA094944
          046571F59B5BBFC42C4E2250400804201104420808400804AADF220194439D43
          FF6899BF9E7BE9F1534003248905B60022224EBEFCCC09CAB876E32FCE3C7B82
          A926410448F0C9573BBCF2C26350903FBEFEE793C00CC83A2C00B6506D5A1304
          48A2B5AC7D144133A52EB3C17231E3CE3AC984BDFD06C003CB194A5100BA8D00
          C2D1548C847A76051D4439A850E83030D997102068990071248094F8ECEB5BC5
          3300F1F98DDB480E5C680A98F5A03A1074A55CFD72A783016D040012679F7F94
          FD750270EDDBDB9C79EE113A515FE84C08BB035B8B197BEBC6A7D777387BA001
          051C5BCEF9E08B3FBAD68EC80036551AE56C98B99D4475880C62399F2189C5C1
          2A54C24C061BBAC0001CCC290505BD1684CBE1F604EE090F0952794F8C20E6B3
          194DDAAC01659A179029B34506827A2C5913F60494027FA1B61980833128B956
          0D93C6FCA3BE9D508307093273BA06B2D495299048066D3803E4300C84E78733
          06494E2B81C65E2650C9DFE4DD0BE1AA809712302EE71A80D820C274290232B3
          ABB716C4E1DBD2353310892C00FD7793065182593A033D2D6664939F27E46A64
          933585D0D41278C0A8322042E076AC38E10B0DC925C84C4C04B2698A0865A77A
          949CE6C3D728C14A08770CF43920B973D273A056346AA050AA074B75479B304B
          00051A5E470564CA229EAA01D7AC18679AB5377589B551DC9C3AD51CB02B2DE9
          7644091AAA29A6E875F3735C8B3A557C16C25631B0BF344103AD095708B7D2D8
          E3C8ECE50E70538826A10C5425CD36A5040DA8DA237A17C8912DB4FE5DE64C55
          096A1262329B0751360F152B19C0970DEF828109E4F34C831253079134380DFF
          F58C9D80F5E02C0CA358F2FE7F34109E84C58E5A532E49F856993180DF84BEF7
          102B90F79B8140126B07413253313276BF834840999E09129AA28196E2FCF60F
          805FB2773FFA7950BD2FAE738B0F75F00097AEFC0874D7298F91B8F0FA53FCFD
          CF0A45F0DE873FF1DAB953AEB9138E2C0EFF0D83BC7C70F91BAF9E46C0F1630B
          DEDEFE7E230054CFA11F23339651985552E3578EAD40215296AD2A16C0518328
          4B843C7C7C89CAF1A183BD078E81085C164F3BBF078207B716BD0B4801344006
          604B607FB5F7EF6F6F5EBCF944C841CF5FBA59178ED97024A43E0195747BEB9D
          EF2863B5DAFD1DD8037204A03AFCEFFD0B2F3E0D6C0173F7EC60C3D984DFA898
          AF80DDDACB000CE20EB00676275E3CDD4C325D02B80BCAD0D59D2396D69A0000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001B744558745469746C6500506167653B4F7269656E746174696F6E3B
          466C69707F1D18BB000005C849444154785E9D955F8C5D5515C67F6B9F7BA70C
          454DB0C6BE4162A0C1DA12691A4AB10869210D894C8B7F1AA055313106315588
          AD163A42E6364A28C138C6A83C902011D20844C13F04FB628C465F446882896F
          3E98E083D86267E69EB967AFCFC93DFB9C7D7233C1A12B3939FBE43CAC5FBEF5
          AD6FF7A82BFCE4E77F3D6D7093610821C0A03E092490511F80B7CF9D1F1CBEFB
          8639C001FDE0E93F0909015FF9EC7534258977AA5EEA6306371D9CB99AC95A5E
          AE1845A71A45CA51C5D252C5D9F3258B4BA3D9477F7CDA8E7E69CF1C10EF3DB4
          8337FEFEA6AEBAE2832B00ACB91A05AC21ADA2009206E0020099218C28F1EADF
          FEC5E7F65DBD02B17C7C30FFB2CD1EDE3B07541FBE722392041700D036A2D11A
          0484220042452086FA5C2E8F00B8F6A397115D0F1E3FF90B3B7164660C61660E
          E85D03404B801096CF84100872ACA855288735405104766EBB9C38F2078E0C9E
          B793B39F9C0346C01A21B207F02481B2CFF218600C6166C8C5B0AC017AC13002
          BB767C88CAE3B172F659E607774C40ACD903A939932019269861D818C00C7A85
          11825114E2E65D57E2EEC796BFF9343F7AE4D0C380DE15807BB36E06123F7DE9
          4C0B83E0AE4F6CC530FAEB0AD64FF779F0B19771E51505B1F39ACBF8C0860DC7
          801340BCA02D40428899DD9B20A701EE4E288CE98BA6B87DEF56CE2F0EC7668C
          95A8A233AA2285C1FB2F7D2F40412A335BAB0249680901CFBDF206B8B286CA7A
          1EB8753397AC9F1AE7431CC5314055450C115FFF670310B20FD66042C93BB317
          FB57147039122070A905341C33D12FC0801020985104D8B66523C0BA644400CF
          20FFC703A26EE4D1F9D9AFCFD4F209DC20081C402260F86A71EDA000DF7DF2F7
          6F02BCF5EFB7BE33383233483071307FBA8DEB6F7DF5E609000900B988316218
          5F3EB803E85A81545A35AE4739AEF9CFDB43CE9EDB786C3838154ECE1E1800E5
          ECE13D31C5F50AC0A409DD41A0A440B2C4D85CC2C0B20926D7D31DA283CB7037
          2A77FEF8977F70EFC1EB58B933BEB17CFC19FBDE893BC7102B715DE5B85E4D01
          4194B75DD48D67A995432D89D51EC028308A68006D5CDFB8F30AA2FBD1A5234F
          86274E7E61000CCDAC02BC6B42F3A8D68072918148A50C9220BAD76DB08042ED
          48896E5CB3FB639B8855FC7A39FC6178EAFBF70C8045600CD131A1232513BA83
          7B1EBF94632DCFA1D5421848F526D44786E57237AEB9E5C6CD5431DE3F2C1FB7
          534FDC3F001680D1C4089421949A4938B910D9FF80A7E66D591AC12A717DDB2D
          5BF118EF1B958FF2C253471F026203904780881EC9D7B321090C9E79F1359072
          0427687738B4FF1A000281A9A91EEF59BF8EAF3DFCFC645CB3FBFA4D6CDEB2E5
          BE17E0DBC0B0F140DE0217EE42EED00D28877D7BAE42791F491CEDD9115618D3
          EBFA1C98D9CEC24249391A11A3A82AA78A11434D3CF7016B14A01B44313A9252
          038344FFDC6FCE20E5B4A4352D084782CF7F6A3BFDA91EEF2B6CAC4215EBC6A3
          28625561A2F618145D0073792B5574E511486D04DCBEF72348E4546A61E0E2E9
          7E36AD41BF57A042F45510BDA08A22C68200A494095D00C5D4F192E91EB10CED
          08C811CCA95FBEDECE1C92424992BB3FB33D5B33818181D5AB880980C2C02B1A
          007A8003A3E1D2D2EF4ECCBFF2718F916D9B371015DB9134F5E95BB7E62D0004
          5D15C040DDA8505A51D265551885191E63170001C3471ED8771B701130055C3A
          37FFDBD79888FF675F7C1501F28E09E57953045FBCE3DA9AC040E45282088521
          9CC6FC0D4095D2A94CEE0CED08C82B74CFC11DD0F5402AE5586071582538657C
          65B5820562D48402F9F144E6DEA49F72AFA53276A54F3E580D46491143D90DB9
          89944D286591D37E0AC0A3404252F7E2C93773FE9E540A645DAF80C00DE8463D
          58A3C064095003363DD5CB3F10893743A5975096BA6BD09641AD72D121A9AD49
          00A5A75C5C3CFB87D9C77E757DD3411144232F48E458CED4D02AD602E7554EDF
          4B0BE7FE9C2E235F4D81082C3CFED09DFB818BBB5736C005BF7355C079E01C50
          AD06E0409940FE9B9BBF43ADFDBFD2131388FF0F2D68279291B09E7900000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000020744558745469746C6500506167653B4F7269656E746174696F6E3B
          506F7274726169743B9A0AD4F80000046F49444154785E95964FA8546518C67F
          EF77EE784DEAB6CD56D1C2A48D44A55896488B208AFE2D2C8B0AFBB36951E222
          B540533137428B6A551906D14225A4459B3661ADBABA8916AD0C090A2232AEE3
          CC9DF9DE2719CE9C97EF34F772FA3633E7F032CFF33ECFF3BEDF9824CC8CFAD8
          C9D38BDF5AB21D086460020148188610020C100281EA5A2400AE5C593AB2F7D5
          1D870107F4FEC9EF851C017B763FC0F44802490D38903E3B73415DCF7038D252
          7FA8BFAFF4F5C79FFFE8D2E5BFB4F8D36F3AFFE325BDF7E13747801E9000FBF9
          97DF032B083047796C5A92B3C09A4A30900CA69D035E17CB0C6164891F2EFCCA
          EBCF6FA57F6DF4CEC1135FDBBB7B1F3D0C8CEFDC700B6A3380FF12A0A951831D
          9F828604A42A01425522A70488E1F20880AD77DF46767F7BDFB1B376FCC05313
          1266E6404122B509788D280C972119042784E2BB444A89940CAB0C610C072300
          AA2AB1EDDEDBD9B679E3813D07BF3C0861C76A0A80140181C0766A1B286D8009
          0933432E06C36500E6926124B6DFB781B1FBFEE1BE537C74FC85C3C0681ACE99
          16B888A3801216B6343C834C32C330AE07133398AB6CA24C558987B76FC473DE
          BF3CFA848F4FBC7C08D02C021604024001029A4A20C050533801A7375FB170E3
          3C6F1E3A832B4614C443F7DFC1FAF5B7EE078E0279C510CA9D42640509501041
          8D9DEE4EAA8C1BD6AE61D7935B58EA0F2661CC6331CECE689CA90C6E5E580750
          AD9A81F0BEC81E26C53B4226016600C67CAFA25A58CB4DD7551865278FF284C0
          789C49067EF172A334C0AA1970115D4A78C112844281BAC60CD6F42A5CA2A78A
          BCA62267673C72E62A709C005FC582903E4848028368DE6868D4AEC41A312641
          4CA98957AF327CCCCA0422840E50000AE7D3D38B33A723442AE4E1A5A7EF4140
          B284924FC8B87750C0BDB018D526EF7C6453238BA2240A094514EA2141329B84
          545D2D8826631D7F71EE62B905A3E1502A7C63F7CECD452329253CAB430803B4
          0079E6B14DADF089C6A5C849F071958E215C0A05EAB276066A962A7ECC253EFF
          EA02D6225540A81083579EDDD2AC4C614874CB80A4C202C710F0DCE3770548DD
          BDCC8A4016D23950DE636427CECA1664544B2803AB753E7576914099F53F4185
          2AAFEDDA8A2440C14B1D3290B30887C001046FBCB88D96E8940FE5637F384612
          C8506DA9E72E16640070951DF597C7D3710BAFE3393A2D9603C5E4B8D4611179
          6E065DE59209B0F25E0862850DA28C4519C2EE63288A719B35052A59A2195991
          84C48A19B0D884420106B2B0C40255D13140DC09ADDB9320F97F153024B5A48C
          4E45BBE39877101EC8C8C025D42503D955CBEFADFD1EC435EB5A968109B50A34
          0DA3843B1D1470012007594D41113C665ED12D6013D366C3A56E9711720754A6
          5DD10F226A21369E14CDC9908960355520C66925023E0DE1C2BA5EFB8F099215
          44A2EB203A5525A628A600174006348B8003A3C1B0FFDD5BC7CE3D6845F76AFC
          6EABA162D46AF91DE2754836185C3D0F0C012F09C4F571ED83A3BB9E00E6812A
          66B63CED771D6A54773E00AE860AA502029681715DD405B8FB89263D2C807F01
          84CCA1301FB5D67F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500506167653B4F7269656E746174696F6E3B
          4C616E6473636170653B3E7604210000044049444154785EC5574D885C4510FE
          AA7B669728EAD578120F318A0822D1AC4662500888B028A260C4432407F162C8
          251B251B8D682E0B5EF4A444BC18C4F520F1E72288A81048A244F1E045250839
          88B8667FF2E6BDEED2D745F1F5B083824AB696C7AB9EEAA9FAEAABAAEE1D5155
          6CA4046CB0C865FA8EFE9333F9BB20FFDAC6E0D9DE939DC9F1F7CE7C2A22BB74
          920731172A80A879812A04022D7FBEC58C6A7B4D01B0B4B47CF4C0BE5D2F3A88
          578F7FA9D05CFCECDF7B8FF5C15B8B67F5BF4AD3B4BABCDAE8EF4BAB7AE1D73F
          F4C7F3BFE999EF7ED12F4EFFA4AFBCF6C9510043EB39C8F73F5C8037FF0014B4
          298F13A796992D490198A0E950E4A4E8FA270329F5BE12BE3AFB339E796206AB
          6BEDF3F30B27E585030FF64C74376FB9163D680720F40452EA811804503183ED
          329B9A1E02102088FD93CC65336ACB7BE6F6EB91727EEEE0CBEFCBB1430F1710
          22524A52283130AC63B620BE664CB5CF5405AA351B5AF6040908054928EBE692
          01883160C7B61BB0E38EAD87F6CF9F98AFCB31409DAD758FE975F686929F31B2
          730185B11344104DC5A56664750E0241C0CEBBB6A0CB79AE39F8365E3FF664CF
          445B4AA074E81A03996364508C18CE4CB63DB48B58099AB6A88328084110A362
          F7CEADC829CD8DDA37F1C6C25347AC07729D97673306C2287782C896591550DA
          1010303535C055574EE3D9238BC8CA52F6CA7D77DF88CD9BAF9B03F0D2C03270
          A7CA19E680C3F3D7EC04D4486056755D2151B0697A88C766B76165A541D3B648
          49D175195D4AA524D75C7D0500C4C240A62F40EB2CED79E7E4B9A23013DB9433
          81DB637A86E97B666F2B2C74C902B74991BA0EC31870EA9BF3F02614F3448A54
          05C259C4ECFD3719CD9C94EA5C206124C5000C07111A15438D4839967322A588
          E941404626805C8F2198BDAF163FFED6D6962DB3CE8507CF9C40B28DEBDE47EF
          B43A8A8D22C43C0E7B001D0840B33BADDB9C6DF0D0EE5B58229AABB7FABBBE3B
          68B369B1118D52C0E45C3190B4CEDC1DF9F809DEFDF01C6B0ED6DA0E2D38E9A6
          6732B4EFF11928286A2010A2404100D04299BD216288B34D84A8E291076EF5FE
          2003545832A11D103F51D7B116432877074BA0BA8E4E118ED8890FBE76800CA6
          B900E577D5D9F3907F31B0BDD4C23F119EE8051C9BB09E020F0C827A7ACF7652
          496172130D8295B5D6839B4F26859C274E81B7BA8C015A6D125D9B813A377244
          6142B32B8CE137BF0148EAADEB874C15AC6E6ED25B0752DE050C486159041CD9
          C925B08DCAC3D6D9B09A09A3AA65CC3568E6ED598B2767F69CEA1230B007B535
          D9E00534F9D072D8AEF3F6F48B8ABED63521C800ECCD3CB85261C049D7B20A2F
          766EE0CDAACEAA31E13107C57732EE364D0FC6EB2662442B268A12E3B870F068
          1382180EA3FBD43E627771F9E26787173EBAD758F25E509E76BE5BD9279C7FDA
          C6A780372785E56A476B9F03180980293E88C44BF95FD7FCA1D2005813FFE790
          EFCBF0738F20B210E186888652D38D13FC09839D25A3DBCB61B2000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000029744558745469746C65004C65747465723B50617065723B50616765
          3B4B696E643B426C616E6B3B456D7074793BD45723A7000001E249444154785E
          ED97BD8A544110464F8DAEEC5BB9069AF91026860662A89989916062E20BF80E
          FEEC5BC9CC4ED731296ED1E00ECEBD0B06EE077DA17BB875BEA9AF68B8A1F22F
          B503FE6F03F7061E728B2262DAB25E5252FFDE40837B715AC12C6B25E0991D68
          F887CF3FBEEF76BB2BA9528855DEB031210A160A25CDEBB7AF9E3D0506E07906
          7A46AEDEBC7CCC1ABDFFF4EDAA6AE45A03912900BFF6C7D32907932E1F3D201D
          5334EB0C98006807837F20DB7B1005879B0C0410395C601290167302F756178F
          23DDDC012A02B2400D4D2408C4E22B44481288E448B6479089555C64AE68FF66
          4088590E85CCC5406C30202859451B3D0B846C942E11B0A903D54648B073EE69
          24664B06202A9963FB108E8A200B5A41C364A22D40CFCCC8BC8B211C28A8B030
          05C570694B603D3B0287DB6760A420280584309020743993F91E48DDDA811E42
          91044210A7A66B31740E4231BD0B03831450926EB7041698009C4732952C539B
          6F4295B428FDA4D5206BA59063B07D081513444220661C46476F9B3161C8E621
          343349E5F26207D0D76FD5D6F97436BE38728D018171B3DFFF7CFDEEEB13A3FF
          B1CE406C749FC1F170B8068E748F3CC74002872F1F5F3C072E80DD2D79C689F7
          6F807D815DD38123905524385FB93E8236916C939CD0FDB7E1BD81DFBB4D7B95
          D6A0B21E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002A744558745469746C65005461626C6F69643B50617065723B506167
          653B4B696E643B426C616E6B3B456D7074793BF40BA923000002C14944415478
          5EAD574B6E1431107D155A229C090988C49A1B20B1608FC48213B062054B36B9
          021760012877624234EFA1C9D453D91E8DD26DC5528F5DB6BA3EAF5E95A71749
          F088080C23F07843165A9BCB190551CFE9D9A471E6DC8DE59CF16FD7373F11B8
          2A7BEA7CB02C1DC510A00840CAD372957BFEFAF8FEC5EBC6890711B850E0EAC3
          BBE7788CF1F5FAE6D541673A80350E84F3747BB707E2189334E2612CC64DA518
          B85C2E20A9D2BA120188A533A4E30C4132DE871950EE0564F529DBD90055DCD9
          8C8059AB5427A471CFDE4700B49B8D33508B0056939032C91C6D133DEA2C22A5
          210F223096DD7A04ACC12908E75F1875914226C0543102905226B7A780AC80BC
          6CCACE96BAB408B5AF5ACE7280037C013AC38C0CB7D2E3B5FD937A94AC64750A
          98DE6BCC6D461C04642468B376D1B804349B02D16AFAAA770E082194EC47B854
          811698240185892A2001C9068B84856F13A9D775060282A61100518635965758
          0ED4D1D81DEB2D4E9461680FC86A54EAD419958900459E28E0784D22C93BEB49
          18144D46201B0EAD9576B30BBF9C94BB752240CC90B08900C33AAAD4EA30129F
          80A4EAD60248CEB462C2FA25D96A46E75468205F4061D9DBD53DB791B06D4419
          95953202ADD6B2498051F90F1509E75360F275DE953AE7BA6D025E2B45CE9090
          F4556AB87D74EA046DB3AB1023387B170046DDF147D3E164D9688FD7AE4C4B40
          3324B43235160820984A0D7B0C3761C30FBA9149A37E3D4C427260B0F3ED3A8F
          D31B30F752AA563C4342AA71138D2334BF2AC791881890EE4D69531584E7DE7B
          6FCB46BAA1D631EF653698EBAD5500514D0A345458212D353DD0BC710A140005
          71FB652413E7D9E5D2351D75FF42477ED8B7FAF185B6E5D38C00EEFEDDEE7E7F
          FAFCE3E509791DBCE31680C6298B30F4F7CAFEFE394C6B1C503EBBEF5FDEBE01
          F014C093E98FD30A6897CFAA6F43A5B7FB7C69CB8833FA782E05FF01AEAE754F
          55863DB70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000028744558745469746C65004C6567616C3B50617065723B506167653B
          4B696E643B426C616E6B3B456D7074793B1B731E160000023E49444154785EED
          573D8ED630149C9765579C8986AFA1E50A5050D3202E408DE002EC0DB8010DAB
          BD12A0FDF93283F4ECD1FB5C2CCA269128C052F4AC27C5339E19C74A48C2DF1C
          13807F9BC093870022029E3E00100B00745A252D276085FA13F92C07F72080D9
          24962B5020D3E7CBEB6FD3341DF27D0504150579DDD60F355E0A659B9AAFDEBD
          39BC00700480550422E2F0F6F533AC199F2EAF9F03384B1556289024D87DBBBB
          9F47E1552A286B6F28B5C0C5F90451280B8155041C1C4B2CD4907A4F281B928C
          2D100CBE9A0069482F18E5BA776C880435954AFD1602209955B289B2CC39A73D
          3060043A3A6672BB02A02061DCBDC18693507376B2E27A05CC3C6667404D6E44
          A911596BD756C15CBA7DB18305EA0B0BA786338BC918D82EF9DD9D42A88ED4DC
          8F51F90AA2FD6FBDB22036111046D9D93A45220291A00307CC7B5820314148EB
          E035CB91A0400712A58A76B16036A8A03A02F0D4671FEE5416306B1B814802DD
          4FEAD46387B0464A10B24DED1DEEF121F28EB2A8526F3EC3A5503920EB186E0C
          21413522614884814CA3663D178220EE741748DE7CE561C4AE4E9804016A070B
          C4062B0D620FC39FE550A0C54E20746A81AB1E1F4236297DD1D0211B856AD2BB
          CB801890B65B00F660D106BBC41881712A08DC7C1D2BB1A824F1F4FCAC9A2AAF
          11056B3C8DA7805B081C7FFEFAF1FDFD87AF0775E4AC6855A23380D60E307B4D
          B2BBE3CD15807B005C4BE0F6CBC7572F015C00981EF98F3003B803706BE15629
          D017BA31C8E251A0CCBA5201BB4CAC1F7F4CE2FFBFE3DFA4C1ED3BE5D7391500
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E2081B0F002AF0D7059D0000001A49
          44415458C3EDC101010000008220FFAF6E484001000000EF061020000197F757
          D70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002C744558745469746C65004578656375746976653B50617065723B50
          6167653B4B696E643B426C616E6B3B456D7074793B52F49638000001E3494441
          54785EED97416A5B410C86A59740F0915ABA71C83A07C8A285EEB3E8AA170864
          5B52C8322137E80512AFDC33B57ED6FF87B124660221B1F306BCB160B04603D2
          37BF34365692B24F1B64CF760038001CBF75A8AAF2FBE1AF5C7EFBACAF1DBF03
          C0FC24B93B405A297E73BF7CD441E79E9599BA1AE3445584DCB0815CFCF8FEE5
          2C4F7707A8A614995F7EFD24BBD8AFBB6501D658FC1040264809FFFD37CF1439
          C9745F8A313B1984446DD354050048CA4F1626D49A68801A0A03BB01643201B2
          D7DE178AB75C1D2D403C0EDB4E816117059045E11A905E0D64C0D07D16682480
          4E6F8185BCA4202F0A17DD2550A74B2DC80A103669080DF09BA6D0659BB9E920
          E148EE0A74DA640558005AC93D5A8B43A57910A180F51BC2B5411843A8EA20D1
          9170B02985260EEB3903F0A2247D89B64FC0FDB8792E33769C01B37805145507
          49ABADAF3E28DD86501C005E3420846DCF3D9E7BD241611D014046E236CC8409
          CC7A0EB0AC7E3360803844DE96C950F7390EB147CFEF01186208ABD4ADF80982
          8C43BBFD16B02CC2E59E9D1C7990B5EB6C5E02355CA22CA7E90060E3B87AFA79
          F5E7D4B74D31AAB0ADA155105BAF1622B2F6C83480F1F6FAE23C608757656D63
          B51BA388ACDC9F06B08E24EA6B6B438F162484B5816D41B60138FC373C003C03
          585E817F7EF101260000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000025744558745469746C650041333B50617065723B506167653B4B696E
          643B426C616E6B3B456D7074793BDC01E0E0000002E449444154785EAD57318E
          D44010AC5A5677BC89045622E70390929092F0028848084808F80239019CC49B
          96DBBBED42C8DD2EB5ACB53CBA1BC91A8DAD99AAA9AA69DB7B49000092E80DC4
          E337D5A070F75836FA5AB451622CD0ECC3635C26F0E5FB9F9FDCE120E57CD552
          9A66E77DE5BAD91949C8E704734EC4F9D7FBB787979DC49200F33ABC7BF30C8F
          D93E7FBB7901609704D615287F4EF7E78581D42487285084667960556AE70972
          7DB5474C6BEE6CCB0A8150C95A8BBB0F10104011D112215B5344EC09226CFD66
          0584DCA16012DEAB718D34FBCF461C5074BA6B1998D926910EAA3E2669124A0C
          96783435A911D8648165B4051ED22E25B8CA2ED912D529D08805212FDEA0A705
          C19E0F3779A42655A9CABC560920D43D55D190D036E971272123676621131852
          C0600E5DDF6FB08177C33C2DC6336015EDBB4C804C0164376054818E82845007
          59AD84159CEC93361D3469CE82315D07405B612563B3023E86ADBEB8F6B36845
          82532D93D2D282F3400829052025A8A59EC8D02F1B2B6334DB9634532D0D85B0
          8253FBF01997E428D0C58AA93289F67E50728AC04808A360BB0509147E66DB04
          D080A590EF293687105640605A50E89566821DC8196CC5A82C0B695001171B97
          D82044950A46CA3163027482EB2409B2051CA803CBB71D020896223218E9230A
          B6FA30AC8022C3A5F23655602E5E20E6D55FCF94AD50AA1031402043E8E3C64C
          7BAF074117C7C27786BC7B35157D682E56C29016BBEA95D837A5CC85750292B0
          E768E87B00889AE434835E5E3260118904979FCF6A4500D258087B0049580C99
          C4E26BC0BD66D972BCA110B17A25817021319812B6C64D785835BA1A4A831684
          5CBFFDB2597EF19084607594A0825CAAC40CE2F64FB2C2C6D3EB3D50CEAB49EC
          666B3C66E95156AA9EC73A8149F5BBD3EDF1F7878F3F9ED702DD6B19D42AA73D
          CE4B4EAC0EA7D3F1E67F77F1CF4892480AC0DFAF9F5EBF027005E089218007FC
          AC9E01DC02384E0E4B9D4017F42E271C1F04BA5C37F26A0EFE0394A2CB071CEC
          80220000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000025744558745469746C650041343B50617065723B506167653B4B696E
          643B426C616E6B3B456D7074793B692349D80000024C49444154785EED97318E
          D4401045FBB32BE052884936E5008464646488032044424440C025C891606E65
          EFECD6A7D9AAF26FCB046E77808498999AB25D23D5F7EB5F1EFB9A64F99BAF6B
          4F8AFF0200AC763D0D07B340720701357FE4792364AF484698C72E0FA8F9A7AF
          E7EF004E7E0AF9B53D13FE2E100F19AC45B03C948962BC9CDFBEBEB991989D1E
          F0B3C7E9CDAB6743EC3F7EF9F1BC21C91E02B038CBE9F6AEFC9142A17B864921
          E0C1893C7D72556879B07F0A409A70FB094804E0353F101F2CDB3A362240B689
          D67031F0CE5BAAD41E7DDBEE1701E81660E6BC178AD93C696B7F2D82322A7994
          809C2ECC4AA262D88C3B9B8EE618157D26B4B5F940090002000BDB8E4C695E37
          0E7980425D20A3255AB43DDDF9A5E471FADBCA710166EBF54EC048C8163570E5
          C9D6A7463B2A40EB678EDAC5387A39DEC9A4CA8D55682353203B2F334E5256C0
          6254AF5ACD0869E9815032E001F920292FD6644B4BD81975922270640A34869A
          2D63FE00D9480302E91ABC0E88409AAAC4CC1314859680AF5921341AE3260CEC
          4E2245D40F9248E33840231A7C48F7C56113064299109EC1CCD2C5426D83A9B5
          263B6E42A3263F29B4D703734DDBBFE9A5E7CA8499B9DF84964B20E2EA93FE70
          5F0474EF1482CDDCB4C73D60B18E64E20F086A98422CAA543D97AF7309A4968C
          59AE7736D94704D749A152FB67C45E0256E3723B4F3FDF7DF8760A359A7A42AD
          362674E08C7C99A773A9C92BFB043062FEFCFEE58B9A1FD7B8DAF99CA0BA6EC7
          E708EBB929658DBB1AF735A6C107146B9BF708D0A57FECD5E701AE5DCB7FFEE1
          F41722CFF18972483DCC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000025744558745469746C650041353B50617065723B506167653B4B696E
          643B426C616E6B3B456D7074793B5543AAD0000001E349444154785EED97416A
          5B410C86A59740F0915ABA71C83A07C8A285EEB3E8AA1708645B52C8322137E8
          0512AFDC33B57ED6FF87B124660221B1F306BCB160B04603D237BF34365692B2
          4F1B64CF760038001CBF75A8AAF2FBE1AF5C7EFBACAF1DBF03C0FC24B93B405A
          297E73BF7CD441E79E9599BA1AE3445584DCB0815CFCF8FEE52C4F7707A8A614
          995F7EFD24BBD8AFBB6501D658FC1040264809FFFD37CF1439C9745F8A313B19
          84446DD354050048CA4F1626D49A68801A0A03BB01643201B2D7DE178AB75C1D
          2D403C0EDB4E816117059045E11A905E0D64C0D07D166824804E6F8185BCA420
          2F0A17DD2550A74B2DC80A103669080DF09BA6D0659BB9E920E148EE0A74DA64
          0558005AC93D5A8B43A57910A180F51BC2B5411843A8EA20D19170B02985260E
          EB3903F0A2247D89B64FC0FDB8792E33769C01B3780514550749ABADAF3E28DD
          86501C005E3420846DCF3D9E7BD241611D014046E236CC8409CC7A0EB0AC7E33
          60803844DE96C950F7390EB147CFEF01186208ABD4ADF809828C43BBFD16B02C
          C2E59E9D1C7990B5EB6C5E02355CA22CA7E90060E3B87AFA79F5E7D4B74D31AA
          B0ADA155105BAF1622B2F6C83480F1F6FAE23C608757656D63B51BA388ACDC9F
          06B08E24EA6B6B438F162484B5816D41B60138FC373C003C03585E817F7EF101
          260000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E2081B0F002AF0D7059D0000001A49
          44415458C3EDC101010000008220FFAF6E484001000000EF061020000197F757
          D70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E2081B0F002AF0D7059D0000001A49
          44415458C3EDC101010000008220FFAF6E484001000000EF061020000197F757
          D70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C6500506167653B50617065723B53697A653BBD
          2F129E000004B949444154785EAD554BCB5C45103DD577E64B5083D9E91F48E2
          1BB73E501242820F882E826054348A82880FE2225F7C7DA890200AEA262A1248
          30221A485C882808BA11FC032E04F701174AA2996F666ED7D1D4ED9EC35C6622
          88355CBAA7AABBEB74D5A96A2389BD8F1D224080068076EAF891F4FEF11F330D
          B0CE02386130307E40AC44D936DB1A2B71EE8FF36FAC1DB8FB75000E80F7ED7B
          9146C69A3327DF411592180080919D1FD24E9D3862A102F0ECC3B7E0523299B4
          9866473BCD184F5B8C462D7EFBFD02CE9D1FBD72F0F0693BB27AFF4510F9CCC9
          B7F1F32F6779ED96AB60014032A848EAFD8A18CBBC75C6ED9100BA85AEDAB277
          9776189C166BBFFFE9571C78FC0EFC359ABEFCFCDA17F6EEDADE8B20DAEBB65E
          0D9284440010A176CC593363A0D711509A6286D4A488329B849C120C8EF1641A
          F6EDB76E41767F697DF513FBE0F04301C2CCBCDB2A49F57072CE64152C69D277
          79D29C8E94125202ACB188C478340973D324ECBC7DDB3FDF8D87F6BF70EC3500
          C3E2CF7A0014544A6F0E595840C6C8F2A15BE1408030EB883A1A770006C93068
          12766FBF1EBBB6DFBCBAEFE9A3AFF6418803A0BC7746A31708F4022E15770252
          C54124B3E0D1783C0D3083C69092A169883DBB6F82E776753A790F9F7FFCDC5A
          3DA200D069C220078ABE030C2616ADC1670B2DBEE18606576EDA88A70E7E0A77
          952840DCB5E3066CBB66EB2A803701E45E15A00895022190160E57BF9845D2DD
          911AC3651B57F0E803B7E1CF0BEB984CA6C82D316D1D6DCE18448ECE063D1696
          A1614ECC2BFB6B9EC918A58D8D318BB36158197411D874F906E4D21FA24FB439
          5292B3CF522C003DB229023E730E52315335280230C0194056860D9C04D920AF
          3458C98EDC7A00701400127180DD2812E69A43862A46D3E5E986198C9A15583D
          A223624A856D86E1C0E02D160360F9996CA829804A0ECC453587A446A9CCC3A4
          4B254B60F22849F7BC0400950671C00B9038455ED85BA94A28F67952938812B5
          888652B0848402C059B91174BD8AEA197A2A9DF390E45FF89A94E0998B496881
          B41F01081245C6A216303101A4A8A92808B88B637564007076206480B5D967CE
          B34EEBF5860AACEC2EDEA9561187B390D37D6915381CD64B018B736935617162
          E2047475543F697E6FCE90F43950F3A9146425D0D4521581A25428C0A4035449
          C1E2D21B9634A2CA5C891E239558FF6DA06EEF26A29494C28A4306FB63BD675F
          DE07FA8D28E74EC7824C7613D1BC3E4A1272160EF590A277F2D265C8056F8170
          D57AA9C4D2E30C4698C399082A582444C24BB5E2AF4F1F35A580DAAC72832FA8
          0406DB7C016029181F1673404196647AB7C9EB7F02E6E2826E1C4288C7DD9CBD
          132F19818A4E086B11B80C207553A27F63D5BBAC7A1FA29CCBDEE524D465DC99
          63B2F98A618CFDFECEDEB34C2A659A175085B02AAC3E804040ECDAF3A47FFBE5
          474300533AF1CCA1CF402ADF5DC84D25C8F94A1148575408D92C941300B99F02
          A3689000AC7FF8D6839B016C00D0F4FA775F6CF97F4971BA0EE04289021501C1
          AC30A665C3480EFE93187AA92D40D8E700AAECBCF7090624327FF7D5B184FF51
          EEDCFD88FFF0CD894555A0C2A614D871CF7E9F3D715E73A8405513C1DE5352ED
          362B4998F8B2F8310AB308666A7D7AF105B06A42A73B68ADB48143FDAE277F03
          1D77B24C56C78E360000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C6500506167653B50617065723B53697A653BBD
          2F129E000004B949444154785EAD554BCB5C45103DD577E64B5083D9E91F48E2
          1BB73E501242820F882E826054348A82880FE2225F7C7DA890200AEA262A1248
          30221A485C882808BA11FC032E04F701174AA2996F666ED7D1D4ED9EC35C6622
          88355CBAA7AABBEB74D5A96A2389BD8F1D224080068076EAF891F4FEF11F330D
          B0CE02386130307E40AC44D936DB1A2B71EE8FF36FAC1DB8FB75000E80F7ED7B
          9146C69A3327DF411592180080919D1FD24E9D3862A102F0ECC3B7E0523299B4
          9866473BCD184F5B8C462D7EFBFD02CE9D1FBD72F0F0693BB27AFF4510F9CCC9
          B7F1F32F6779ED96AB60014032A848EAFD8A18CBBC75C6ED9100BA85AEDAB277
          9776189C166BBFFFE9571C78FC0EFC359ABEFCFCDA17F6EEDADE8B20DAEBB65E
          0D9284440010A176CC593363A0D711509A6286D4A488329B849C120C8EF1641A
          F6EDB76E41767F697DF513FBE0F04301C2CCBCDB2A49F57072CE64152C69D277
          79D29C8E94125202ACB188C478340973D324ECBC7DDB3FDF8D87F6BF70EC3500
          C3E2CF7A0014544A6F0E595840C6C8F2A15BE1408030EB883A1A770006C93068
          12766FBF1EBBB6DFBCBAEFE9A3AFF6418803A0BC7746A31708F4022E15770252
          C54124B3E0D1783C0D3083C69092A169883DBB6F82E776753A790F9F7FFCDC5A
          3DA200D069C220078ABE030C2616ADC1670B2DBEE18606576EDA88A70E7E0A77
          952840DCB5E3066CBB66EB2A803701E45E15A00895022190160E57BF9845D2DD
          911AC3651B57F0E803B7E1CF0BEB984CA6C82D316D1D6DCE18448ECE063D1696
          A1614ECC2BFB6B9EC918A58D8D318BB36158197411D874F906E4D21FA24FB439
          5292B3CF522C003DB229023E730E52315335280230C0194056860D9C04D920AF
          3458C98EDC7A00701400127180DD2812E69A43862A46D3E5E986198C9A15583D
          A223624A856D86E1C0E02D160360F9996CA829804A0ECC453587A446A9CCC3A4
          4B254B60F22849F7BC0400950671C00B9038455ED85BA94A28F67952938812B5
          888652B0848402C059B91174BD8AEA197A2A9DF390E45FF89A94E0998B496881
          B41F01081245C6A216303101A4A8A92808B88B637564007076206480B5D967CE
          B34EEBF5860AACEC2EDEA9561187B390D37D6915381CD64B018B736935617162
          E2047475543F697E6FCE90F43950F3A9146425D0D4521581A25428C0A4035449
          C1E2D21B9634A2CA5C891E239558FF6DA06EEF26A29494C28A4306FB63BD675F
          DE07FA8D28E74EC7824C7613D1BC3E4A1272160EF590A277F2D265C8056F8170
          D57AA9C4D2E30C4698C399082A582444C24BB5E2AF4F1F35A580DAAC72832FA8
          0406DB7C016029181F1673404196647AB7C9EB7F02E6E2826E1C4288C7DD9CBD
          132F19818A4E086B11B80C207553A27F63D5BBAC7A1FA29CCBDEE524D465DC99
          63B2F98A618CFDFECEDEB34C2A659A175085B02AAC3E804040ECDAF3A47FFBE5
          474300533AF1CCA1CF402ADF5DC84D25C8F94A1148575408D92C941300B99F02
          A3689000AC7FF8D6839B016C00D0F4FA775F6CF97F4971BA0EE04289021501C1
          AC30A665C3480EFE93187AA92D40D8E700AAECBCF7090624327FF7D5B184FF51
          EEDCFD88FFF0CD894555A0C2A614D871CF7E9F3D715E73A8405513C1DE5352ED
          362B4998F8B2F8310AB308666A7D7AF105B06A42A73B68ADB48143FDAE277F03
          1D77B24C56C78E360000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000019744558745469746C6500436F6C756D6E7354776F3B436F6C756D6E
          733BB5C726910000041549444154785EB5175B4F934B70B7F0238C2285020ABE
          1A9420A45C2257358207A3C528F1527CE2CDBFA14FC6275F4E302A608CC62763
          80A082C4F80750901AF1D99C1C126865D6756698E9B6C5AF8971CA647666D99D
          FB64BF4AE79CB11E8C31BFB0D2630CD7840ACA87B2F279F0B8E331C7D479F00A
          152AEF3C5F7919ABA84802383CEAC0D149E78C33C4E30F9877788BE7C17811EF
          19BF06DE03B303A80AEFC8E5B65FDF4EB7F6B2310E95E6591AB3B18AE4C440C2
          FC2DB875FF433BEBCC8AD761B8C8E3CDED1C7A80809E31B5C20B30431E33A3D1
          410EE9F7CD2C4644525CCA00B9D85939283A8A95EB5E9E72606B9CB128A33F42
          00AD8B520670CE39AFB65041007A315A69D56BD917E56A9C03A47B1B50E0D5F4
          E20615961618F35498A9B6B879B09021233C82F108B81418EDA841CAE702088B
          50BCD17C0F1CDD579C6B0D31867BE878559006174446C3AF3285E21AE043C027
          5FBCFF46DEE261C03521B563AABDC6CC2C7DC98B0CB52818854B5DB512520017
          510305069E6ADE1FE65FD2801589BD3FDC72B02002B4C71EEB61C059105503A1
          05CF9637F0128A820E20E0508C261366FA6D46A3C214F2EEB9D25D276DE4B722
          0C80B022CF341FD0DE6737D94B599F6B8DE39E3AA02942A08225C31CFC3E05E0
          2068B1A7CB5F51863C5D84E8B8E72E7526CCD4EB75BF0D0658062E4CE5D8C93A
          ED4ADD283D88C8681D26678F55857D8C8C7889D291B638875C3B44EB41A3874B
          88A8012912A64F96329A7FF29C902371D9E7F7D1C29AC8240A46E16A4F834E42
          135903E12C1F6AA9A6354B358C563C3CDF5E1B8CDC702DDE932CAA0DB588889B
          59CC480139A903107EACA7DE3C9C5F23EFC239210AAEF51E96DBA3BAC06A0AA8
          D7875BAB710DC161F112F142328C00786AD57BAD87BC14470E226005536FD6A9
          F7F91200193088577B0E99C9B9353C41B3C14AC47621DDD7A80A00228A105CD0
          86FF9C884B0442239DB898EAA8950E917D6D0991838B2E42B65C8BE9F1C26794
          4138E9A4A5AEF7F908CC7E924EA17FB481C1E9FE262D42A73380A92B51039AB3
          115FE12460092BB2FE076C58AAB35E144819ABD702D43550661B323E9C5F3546
          E77BD1CCBFD1DF68265F7D34208529FB02E3833E029AB1B2069104F06232114E
          34DA092E1CED6E08279F06431F31962EE0F336FA41C2F4C1DC2ACA085509B005
          E98126F3EFAB158E082687D3A57073F088CCF7E8391024CDE1180D3C92B57A38
          DE7F04A9D68ED5F7202ED569173D0784EABAF8394E8CC8E8A7AFFA5DE548555E
          5E0D00D2C25CABF2E227376B4385CC15BFE52DA77DEF08C83847F8EFFFAC0155
          AC1EA8795AF1D61A4BED59F2692DA01CEC65C04E2EBB353B71EF5D17E4151E00
          20A5C726CB418A5146B427C1730D090965FD23BB35CF1FA750CA80ECDD89E4E9
          E00B99A1DC2FE5887DE06FC26D29E3C20878DC42E5A5C19A3F0710E50C3F0125
          5A087EAA725A6D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000019744558745469746C6500436F6C756D6E734F6E653B436F6C756D6E
          733B0AD405E4000003AA49444154785EB5575F6F4D4110DFBDED8710A4B48D50
          AF52914A73A54269118407212124E5A96FBE064FE2C9A3887F11E2C9030D521A
          F105240D4DD4B38826EDBD3A63CF9C99F3DBBDDBDB731331D7DA9D99EDCCCEDF
          DDE399D9F900CEB962F487D108C37000F094D63B4E61AC87D1D69903048580FE
          DB2FBEBC6AF4F53589584431B13088D9B12B71F991E25C8C02271748CA2BF693
          F2C8AD936C1419EDF6DABB5B3363937A1816A591250DDFE86BCE4E0DB9FF0537
          EF7D1E579DADCAEAD45D2CC8CA5A5B2C1010CB74F686030C118B1581770493F9
          E74A4B3C1285383F8009364DCC918E5C3978917212BCC0BCD0F49F0CA23C4F1A
          401073896BA782DC72CB012888F771ACDC72891C20F740A6F4F1FCB258C14830
          C535315979EA6F7261902C2BB87868A7CC2A27853409555014EFA97D5BF258C3
          C5582B0387852CD6015A770F78DB402AF0E5A71FA5B505AAA505B74B69090ECF
          94254A0E706962B07229912C7CB703642E3A31BA354D3C0B83666429AFD303C2
          83C52693E4C07539906E78BEB05CC599A206441673F346C74C919CCB8787AD8C
          BAE5008029CDC853A3DB50FB6A666EA5F18C82100944094B4C9B864037A0DE9F
          2D7C179A1D80187177D1BAB0992A5A1ACA2B4786D1A894D1B51189D6A8999CDE
          BF3DAD63412A2B910BCA4FEBDF0E6A24F4994D3CC049363EFDB084F89BB532CC
          FA98CEF082035C3DBA0B8DCAD5E640DACBCF1C1890B551E146AF161A47ADCED6
          B05E68756588242AB127F34B1D1DCFAEDACEEE68F42CD6EEDAE46E48AFA9028F
          1094B57E766C40D6843FCE2C0E0CE09A271ED6231FA210D7362252698FDE7F73
          4CB096EC2102AF683322ED0DBEF298C1CCB13D5040549384C449199E3BB8A3F2
          000E890DF1AD4969FEA2FD32F8F54928D2914C0FDF7E759C773C3CCFEC8EB043
          927AC1451E383E822464F4009D79831C40CCCE8F0F0A1EC799243BCCD5CAC67F
          58C32B90C9D46319EA7830B758B99A50869851F77A40D00DAE4F8F08AE5B7B6B
          44B6EF427328ED68CAC9040A9E790465EA39F2ABF3F50F129DEFBF594CBB1D5E
          43B1521D121C0D17E0C6F45E2BAD1EFA40123496369A5A84B563B58C3C3C233F
          8FFB4096309AEBFB0066ACF3E7B82046D31F5EF5A6BC9C4187CC9AEB388F3594
          E74F6ED5260A15CBDFF25EC3DED50368E702BF7EB71C41312CC0F190F141B847
          B3CA9FD606C0A8DB01D6DBADD5D7B3773F4E50DC6A896466625CCB8464B4161D
          A6E4B92693126DFDA7B53AA71FA7B4D1015A77669B27932F64404F5FCA357CD2
          6FC2354BE3CC0361AC8A7240AAE0DF81A0BC84BF610C218DD86F4DA900000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000019744558745469746C6500436F6C756D6E7354776F3B436F6C756D6E
          733BB5C726910000041549444154785EB5175B4F934B70B7F0238C2285020ABE
          1A9420A45C2257358207A3C528F1527CE2CDBFA14FC6275F4E302A608CC62763
          80A082C4F80750901AF1D99C1C126865D6756698E9B6C5AF8971CA647666D99D
          FB64BF4AE79CB11E8C31BFB0D2630CD7840ACA87B2F279F0B8E331C7D479F00A
          152AEF3C5F7919ABA84802383CEAC0D149E78C33C4E30F9877788BE7C17811EF
          19BF06DE03B303A80AEFC8E5B65FDF4EB7F6B2310E95E6591AB3B18AE4C440C2
          FC2DB875FF433BEBCC8AD761B8C8E3CDED1C7A80809E31B5C20B30431E33A3D1
          410EE9F7CD2C4644525CCA00B9D85939283A8A95EB5E9E72606B9CB128A33F42
          00AD8B520670CE39AFB65041007A315A69D56BD917E56A9C03A47B1B50E0D5F4
          E20615961618F35498A9B6B879B09021233C82F108B81418EDA841CAE702088B
          50BCD17C0F1CDD579C6B0D31867BE878559006174446C3AF3285E21AE043C027
          5FBCFF46DEE261C03521B563AABDC6CC2C7DC98B0CB52818854B5DB512520017
          510305069E6ADE1FE65FD2801589BD3FDC72B02002B4C71EEB61C059105503A1
          05CF9637F0128A820E20E0508C261366FA6D46A3C214F2EEB9D25D276DE4B722
          0C80B022CF341FD0DE6737D94B599F6B8DE39E3AA02942A08225C31CFC3E05E0
          2068B1A7CB5F51863C5D84E8B8E72E7526CCD4EB75BF0D0658062E4CE5D8C93A
          ED4ADD283D88C8681D26678F55857D8C8C7889D291B638875C3B44EB41A3874B
          88A8012912A64F96329A7FF29C902371D9E7F7D1C29AC8240A46E16A4F834E42
          135903E12C1F6AA9A6354B358C563C3CDF5E1B8CDC702DDE932CAA0DB588889B
          59CC480139A903107EACA7DE3C9C5F23EFC239210AAEF51E96DBA3BAC06A0AA8
          D7875BAB710DC161F112F142328C00786AD57BAD87BC14470E226005536FD6A9
          F7F91200193088577B0E99C9B9353C41B3C14AC47621DDD7A80A00228A105CD0
          86FF9C884B0442239DB898EAA8950E917D6D0991838B2E42B65C8BE9F1C26794
          4138E9A4A5AEF7F908CC7E924EA17FB481C1E9FE262D42A73380A92B51039AB3
          115FE12460092BB2FE076C58AAB35E144819ABD702D43550661B323E9C5F3546
          E77BD1CCBFD1DF68265F7D34208529FB02E3833E029AB1B2069104F06232114E
          34DA092E1CED6E08279F06431F31962EE0F336FA41C2F4C1DC2ACA085509B005
          E98126F3EFAB158E082687D3A57073F088CCF7E8391024CDE1180D3C92B57A38
          DE7F04A9D68ED5F7202ED569173D0784EABAF8394E8CC8E8A7AFFA5DE548555E
          5E0D00D2C25CABF2E227376B4385CC15BFE52DA77DEF08C83847F8EFFFAC0155
          AC1EA8795AF1D61A4BED59F2692DA01CEC65C04E2EBB353B71EF5D17E4151E00
          20A5C726CB418A5146B427C1730D090965FD23BB35CF1FA750CA80ECDD89E4E9
          E00B99A1DC2FE5887DE06FC26D29E3C20878DC42E5A5C19A3F0710E50C3F0125
          5A087EAA725A6D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001B744558745469746C6500436F6C756D6E7354687265653B436F6C75
          6D6E733BED475A060000045F49444154785EB5575F6F5455109FB3E5431815E9
          6E45A9AF043548DD52A24801452C6A4B034410FAD437BF863E119E7C10304540
          8D8627C3BF504588F10B80ADD680CF8448D2EED2192773E7CFB9DCB57713E3B4
          2767E7FC9B3BBFDFCC9C7B1311416201006EB08E5B839BEA21A657C6FAD791DB
          2AB7AEF6C4C20643D67DF6FD9D1F1A03036D4492AD8454EC24028242973F549D
          E414D6119040E7009050E710565116CA19DDEECAFCA7C7B7EED48721319A79D2
          488D81F6EC780BFE2FF9E4F35F47D466C7BD2EC345A23C5AE98A0722DC93F5C9
          F410510C0D55021DD1A47FF0A8238818C53D1F406DBA25A2CC46D578CC65C6C5
          845096644CFFA52156E3A4118A71AEBC3E69A0E2B9C74018C8D7516EDC620921
          A48A40C5E8859BF765336501F6C1B6F53037FF27A0C28348F21053238370F6C6
          22EB62DBE5E0E8A0F47A4E453C08CD73C8F81EDFFC544FAEDFD9F2B442CC92A1
          B5FFD5E7D4F1388BF246B42602C916A0EEBCF4CB5F4054E8A4A935B96D037C73
          EB9EC3BA8A0532D3A34DB8F0D392D098033D3DD67448112D9A7A535081680F7B
          5A0EBC02EE7DAFAC2F0ED483CDBBF7B6320294F2B1D88C045883806E0BF9EEF6
          7D31282868019A7ABD09177F5E02204740E6A7B737E1FCFC92ACC7EC9CC33B86
          3C8D88A0E601B01C916F6F792672DFBD45E1DABDF4B904134C4F6451C4135281
          1C12AE49812D70D8BFBD7D4FC644D78394EB32028070883DFD8AB34053D1E5C8
          1B4351A862A2772152E4BC98EC7BF9D927F2B848BB09E19A80B43AA1AE38C0F4
          44FE0B35A51A425813031E24DA7FCD5C3BFFA45C8FB6E0FC8F7F64750065FCC8
          9B1B61EEDAA2ECCD99FC88C7BD50416D0C946BF9BBCCB56D86AC204DBC36A81E
          FA8CC0F361BB5929BF94DF25B56968A674C7C59B4B1640166CCC750BCEDD5810
          DD2BA17AFAE5B505E7DAE4E8CE17EDF4DA2C48410108BFFB996B300A620ADE17
          AEA3E693123DC5F420F9BDE531A02B6AEB407855EC12AE09037A44E2A87E1EE6
          AE2F027916143B8EB1A767AF2E386226C7DFDA042E883541883902C05C6F7004
          4292700D71137A864C6D1F3227A2FC92CDD70561E50221CEEBDFB58080C7C151
          E17A51032A5EBF3EDEB509CE5CBE23B7184286C0AEE1FC4AD720F49E7AC60059
          5E8FB0A7C1B3A2615C97E3425274479172105E9B68D660BF69288DB95E30A82D
          1099EB17E0CC95DF0C2DBFFD4E8C0FC3E9CB770D299713BB87B32B1AFA2B44B6
          6EB2DD2A57349D39C85C970E548AA6C736C6FEEC25861265B842AA7F21D19EF3
          5A3D8A4C38C65C9FBE723760D6B91946E00B8981F29D3AB3FB25AFEFF575A044
          1A4971718F0246092C20F50C93FB36C37013A4B80FE467384DF57520FAF85D7D
          1D17C5C6DC7CD205665CFA18EF2F06B0529273EFA1C72BB75A1383AA55DFE593
          D2BE060294D987877F7700C37078108F178528251026CA8B7CA34B68F86F0FB0
          DAED2C5F9D3D756B2C2E20BB6E2DDD741C758EC84B347751EF75AFA2E4BF1F77
          96AFEBC729F642A07372B6BDB7F485ACD2EF9772CD3CEA37E18ADAA30A02DC96
          C5786F49F0DF05DDB8CA3F7F52F23790674C8E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C6500436F6C756D6E3B477269643BE185F31400
          00040749444154785EB557CB4E1B4B10ED3663407C473E205E139C651631B959
          5CF158478A5042EE223F922FC88A87455E4AC4C320706CA20429B694FB03F905
          CC3C40BCA7525D9A33EA6E1886284AA3A65AEE3A556D9F53D5335A29A51F3CB9
          43EA9AB1F5FAA7FADB4317ACCB305412AB6C10AC80CECFCF5FB1A95D5E5EBA5E
          448541B5D654A954FE37EB344D6B3C354F40FD38364E0D0D0D99F9637878F865
          909DBCF67066FEBECA1C092072C2C89F9C996D1CEEAB2F9B4D396063FA791DEE
          5A113C915DD6F8676C1C0FD4DEF65BD90E70C2F0609F8346361428044294DCE4
          D870A0E20858F810F2016083F0AB681CA0B7BBBEA099026C9452C13F3F310D3D
          9E6A77635131D6A700B1AE8C2090B43D9E1464BC540140C2F240C23D70667DDB
          C38310C106105163F6459DBD6DA4E30D36388D8826321A682DCB7E6366BE0E27
          38124133BE184925F181FAB6FD8E40810C1615CFD0658C602C1162234540C646
          FBA20190EED3488E7E5C4DE000FDCEDA82F6782CD4030F323CB2ED339635B0AC
          B9948105AEB00CABD52A999C3905E0033C967088CF8C6391066E8A43C8699761
          6D72F6BFBAECF9354C6E19828E243A50BBADA66C35A69F4D90E593830831804C
          051DC7A1DA6B7FC829D086A3288206C8A3CAAFE114545B1A18F00C3350EA9F01
          89AF6D2F41E6D3EBB206C0230297F1C8B667F63AEB4B8AB1A2A1221CD6DC3FD4
          C8C888E47434E0F15856D3C403FD23DF2B13A0AD17C18202D3071ECDCE4FD820
          72CA056D556C56CB03D56DAD88EFE4D4DC0411BA0420B626FC3E10A9BDEE47B2
          5B317378203C9207C000B1380059F51E450309EAD29DC217C6B9D650B268C5FD
          CFAC81B3B3339F4724F179140DF095DA170D6C3405CB4105CBF646FD8C8E8EA6
          1CC360C9D1004F5DC22102FA7701B8B5718507B8D207A001A77EA00322BF94C4
          2561BA3A9B4DD9F9676AEE5E4E1DBCD9542815147A0458384A22F5AD030D6423
          413F476287B6D41316AC0CD10F34C06824F3FDFCE7016D97616F6775519F9E9E
          1A0A7E9747D56E35F5C9C9093420A32806EB06D89E2DC22A12DCF242C1A51458
          FBC016E2ACFBC6D180BEB8B8A83D9E7D76CFAB61AB8C9C7A96BD98CBAEB3B522
          90C6BF4FC7AFB6ECAC6D238215FC5034F08940417E4124990604E20A01605F50
          C2E55112420316DE87136CBE8408C970D95E5BD2C7C7C715F0E873E8F3C8FD3C
          D7C0CE46536558F8146A81B1343636766D1FD03C0BC5E707F49E2531F50D0787
          D5D00F2830DDEFEEE3E9B9F13C01B9A524D66BCB4751A8DA5B6FB23EF074DCF5
          711FC9C9A9665286B2AFDDD5D4BE0B74120B8FB884607D022050FB7940708749
          0817372DE2A0C979514503DCD7BF77F8DBE02E286BC1CC9FD4721004A2812F3B
          EF95E921C016F10F0DB07E885FCB7A66DB00302B58DFF2E534EFB20EBE7C5036
          2F8DD57FF686FBE7D85F6AD3DD362545D9090000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000018744558745469746C6500496E736572743B506167653B427265616B
          3BAF1562750000055949444154785EAD576D881655147ECE9D79D756DB40432A
          B23F81416244429A3F82C5C0922C2BE8937E0452422A929A891FA4BB25489A99
          20D207693F4444048B5297D4D22556ED8342322D4BD0B4CDCD5DD9DD77DEF9B8
          E7B4CD7B2FF70EACCC2B7879877BDE33C37D9EFB9C33F79C094504C30D228235
          DD7C5D870090B0E421325700403912A584A80C18400A801B21106EFAF4683CF7
          C5C988D3CC52AFF31136FF089CDF10832D70BA1A370B32165414B0715B1756CC
          6D6D069084281F8A99F325CDCF0C06E70EB2240C9878248B54024550014134C3
          A84A8D10A02C738B32002592CF05281143432020807D68B2C4102805168165DC
          10016DA26665D6C588423C05D88017022E453D98AF9180B0B60BB9DD90B77976
          71273F2A6E023CD532DD2001CB92B578BBE5BAA9ADCBA139958C4DD676E11011
          B04F80884A1560B1D20150E450A4986628BE09F59F930062FEB37352680D4B10
          C30C66362B09848DCC16DAA8699D2C454A52302C012E844079070E0390A7567E
          26BBDB1FF7146003E8CB6C830147CC650244ACE554B07AB14691C0FCCD87D3BF
          CEF7EC3CF3FDDE793FEDFFB06F085C17157071D5FE6A7E246089510E6CD1C54F
          4AAE1365F3A4251066A9C6CC19F73EB33708A68E193771F6A18F177402C8AC02
          A2EBA2368F08ADBCC55D8940885C4E88F3C3DA04081B9B8DD3D482204D33DC36
          6E2C5E787EEA1DFBF68FDA87391F6D38BE6BF5DB03FF9EAB01E028AE1D5CB5E1
          C0348159848CE464C00DA27804D8D8C8C9D97B9CBBD224390420850D4192680C
          C61A50153CF2E824357A4CCB2291B669DD678EBF7CF2C0E6DFDE593673968999
          6AA44296DC63039E00604320C3602D439230AA358DDBEF1C87E937DF745FE7C1
          51475AC68E5F746CC76B5BBD90C8752AC56C43A0E224C53F976B60965CBA3000
          FAFAAAB874B13BEBEDBED06F40DDD5D88EC59F87BD6743501D8811C51A228C4A
          48F8AEF3047E3CF2C3D1DE735DAF5EFA75EFEF2EA71D48A9ED76A9AF46DCE540
          9A21CB32D4AA113ABFFC962FFE71FAFD3F8FAC5F0B601040DAB6A9639F22D50A
          AA171A02416C09B2C7AC887BE58CAFEF72EF9AF7DA9E6BB7CDC7E2B7F608CC99
          B27EE593960090261A674F9DC5B1AFBA2EF49EFF797EF7899D8701544DA22825
          D4BA7CDE4357D5318933A49A91A53A6F5AA22843CFFF21ECB9B2AC166F555BD6
          BED406205DB76296FEE5F4DF72F7F85B86083805B2A1816FF6747C7EE9E49E25
          D59E5317014426E9C807BADC1F0F7B0869E6BCC2E94C234E34AA5182AF8F9EC1
          C2D90FE2CA40B2345AF0016DDBF84A3B8078C25DB76A1129E440D4B56DF66803
          161BB9B4874B62E575C08502434A410943020515304084384973FED35B2740B3
          7E238E37D18E2DF373124494F92761E201B299C56F4A99A558ECE09767CA9D01
          11A00801140482384A00009530C08C69F740A77A4912BF4BBB3F59D80EA06630
          39042025EF38B13BE93C6C3BBBB24C5020D2102D88E22467DF14A87C9EF9F024
          68D6AFC7F11AFA62FBB2364342421191B2EF0231D548BC8C07C8553B769DB110
          723B8E5310014D15421004A8848CA71FBB1FCCBC384D56A363D79BAB1A6DCB49
          B36D6C9C3B37594CDC6C3C188A14C226859651233067E97630FB8D890C856322
          A63C307971C72EAC011037D6139A0CF46B3E0F578E8500C5681ED184679F9882
          C16A8C24C9CC5BC2D0991EBA17A07F20BAB6B69C990D88E90788BD5C50753AA6
          4F05119AC200EAC61B30724805CE3432AD0D01C6C8E610CC7C4D5D3158A4308B
          285BDC3D2D9CCC20200C0304C29050A1C2610E9E32A3A5B95268D9C2C6F04D5D
          07E7E076C870DF064200D91E8140000205481820D4843054B625CB1AF9386500
          C9BAE5B35AD62D476893B2AC1895F86C3F1095BF05EE8C600FBC7C943FC7E692
          FF00CDA08F51CB8363FC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000018744558745469746C6500496E73657274436F6C756D6E427265616B
          3BE30116470000056549444154785EA5576F68956514FF3D7777AD6DD7E69C99
          A2CC2D57338D2C424ADA7006C5CA1C0495FD81E88BBA0F869936B2464A8554FE
          A956449B128C1A12E1C7B0C2266218655F2244AAF9AF0F6399B8996BCE7BDFE7
          9C3ABCCF1F9FFB74D787CEE5E13CCF791FCEDFDF39EF7B153343290543999ECF
          4F1E5419B502420CC318CCE999C18E7370069845961EF204743FB2B016C02480
          FC0BFD3F116946A2095A13DE5B770784B2F0A46489F1F5ED8DF8BFF4CAA73FA3
          F78BA1D175ED4D39D13BFCFB4558CA555FEBF65984A4D8444DEC53C0FEB18BDE
          12CB72773D932817CD9B864D7B8E1DD8B566E90A78429290DB671092025FAD5C
          19614C94AE80D872E3C06D8DB5E8B8BBBE7563DF0F0707BA5A9C9A4493297B94
          81303AB8E8C25C44013B3CF8FB0931AEAB2AC7AD0DD3A199DBF487C7067B3A97
          DE07AF8E94521C6580298E8A84C72E1A8BE165E6B47C3AD110AAAAC862617D0D
          56DE35AFADB3E7E82181808801948BBD4C3108BD7A76E1C4F6D82DF911CB2EA4
          42924A34A74E34CFADC1AA650D2D3BF61F1F0520DD21482C8B4048C6A84DE9DE
          AF4EDAD4FA76742D07AC696F021818EBDE02884C427C6E1396D414D0B5EB6BA9
          378818E7B33968623031D6BEFBEDD9BE0DCBAE0770B94417F8F81EBDA7DE9C39
          C204F98BA8DEF07C70E7B1D67A5C1C1BC5F8C45FD0058D7C2E872449902F24D8
          73E0846D00153BC00C3F7C14F61D396B2373DC038EB1EE819B2174E9ED1D2E2B
          30650113AACC709AF1E66E11234918337F4CAC03F12022E2A0E8AB5BEB837E63
          659C238F0405466EE36679983A010E60C4B6019D736CEDA17406C41218FB0E9F
          0922C6D53820A0736533E4F8E7CEB74431D82EE32131C919B376F6B8B2113907
          E212100520C0E3AD0DBE2F9C71E1CA0A53E06DECB221006C4AA0D28C18911B5E
          3C4506248A007403874FBB178C7046C8D73F740B84C6766E97C8C061169C33B3
          77BF6FB2C62022E7408C010EE7FC13CB1B60448607CFDDAAD9FCA2CD867FC6BE
          7D095E07114A9620E34A6040F6C9E029A32C9801AE23D6AF5A241C17DE781D44
          22A6B4D644B277D998D3D30B6540A099A22EB0A4E6D7558A01532FC6936D3702
          61E46EF229573285E95DDD1E2350F02D4B8205D3410CAD08C428DD0523172E43
          6B0D4A9FE3E3C12180EDD0893F469EED580CD9FDB17D1B9844C2292731645A8E
          09F33EF808B0B8D55C1A03474F9CC7C0E0693CDC528F4C59D6818C83BA5A89DF
          D76DD96AC119604499D239209BD62C39090B09E1D02FE398CC9FC4EAB6469465
          CBA1A0BC03160856B1096BE4B56E30899C402613AE2B8830BFB71F4244B238FC
          2272DF85E2404163F69C99F8F2F8080AF9213C757F135459164A7E41740AAC7C
          4BCEEA7EB5E87B865DE9D80F419B8DD2204C12424133727533B0FFBB3358DC58
          8B3B9B6F10635E89838387E6F0D6975CB4C289E17020E7057B07DC14250E27A1
          44AFAC204934B4669C1B3E87076FAFC59205337C6F072BA439DBB68B8AA26919
          BC3D0D2770D80531064E9D19C1BD4D1578A6FD2649BF7868A38F5AD296F0B797
          BBC0C4D6409A098307624273FF67A21E04C8B9A40319AD09CB1BB278FA1FE3D9
          6B2A243B20174614BD1B508D7D02B2D847DFB69C3A400A4C88BAC0D5A465711D
          3A3B1622CFE5502AF3AFAD052F7369F6F6824DDCBA4C536640CD9F3B0D959595
          284C128ADE0B61FB055331F2D06442C5F7A1020C645044BF0E5F4226E322F749
          356876C4F1F2112BB3A20766219803814A3B24AE680DB0726806D98F79F67AC8
          EB620E5FE704A4A0546CBE944CF6FC1D2D926C513C935726C6BF59FBCE911632
          560C3319B167C3E1EF90EC49892CFAE38A226726C747BF07300E402BB60511C4
          011500AA0154DA3F0E6661CA7D2C8BB9A782313E0660220B4F2499079000B814
          288C95E0BFE553FEADD4C60EFD0DFD1D40EF8A2EBE210000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500496E7365727453656374696F6E42726561
          6B4E657874506167653BD405C1170000054C49444154785EA5577D689655143F
          CFBBCF0F735B5F04AEE930D8E80B1C39A998B92C0864D0272654E41FB559E01F
          2BB6A173B62C6A202B961AD907A151532BB5402AE6D4FEB0286A2B5A6A4CB311
          C30D94643AB63DCF3DB7E73CE79E7BDF87F77DF74ADDEDECDC7BEEBDCFF99D8F
          7BEE9DA7B506699EE7D96E9C5CCB32CEB656084352C473E372A7BCFBB393AAF5
          E16AF011416B1269FAB54D0B69264859A2EDBC17121AD9B4AFE0B54F7E81379B
          96150280CF005229811A63DA3EE83FC3D0B5068D1A544408287D851028EA1347
          1AB3CCC85F59BB14B4C780102398392105990000AF016BFDEAFA4AB654E486D0
          98A9C56AB1D6CA79ACAD8CC468C3930980A711639AFA8EFD05086C2D925511E7
          71800A5480A0AC07989459170408DD4D777228D803D901887EB16D75FD42B644
          C8059F99C41C5D9FBB5A36B9F0E9EC00C0E500EFFFE8D89F1C6F671959CBE3C0
          58EAE26EE69CACE7B97A93FA0C425AC65380B20819C09AE58BD8181B6D97F53A
          39DE5AF6390F62F2BE2B0B81FB1046A461D7E1D392ED446C5DDA782B40EB0D97
          17BDEB9753A121187100B54D5F583F2F79F6000CEE7CD0E4009B2025A079558D
          981DAB01CE1B622191D8EB191E09D97A9EB7DECEAD5E7C2DF4B5DD1DA169DC7C
          440F9A09F100333EC0A9054824AEEF722E694ECC4DAA21224A84CA731A377DFD
          3279E3CBAE864808D64DF25157D51C4512F928B154E52274CC78219E843990C8
          EF58D9B23FEF70CF439BA93A250398F19101C94622FE7549451C2534A6748B42
          EEF07E81E65CA70940C20F102AAA16B6DDB5AE2F71FCEDC7BB08840AFCFE17DE
          FDE13E522A162326B99938B24244893BCF5930DA798F4130187F76FA08E99038
          14AF6CFDE6F21D7535F0C7C839387BF2F79EC10F9F164F2498B2DF7A59FB8ED0
          289F95BBC0A352E92B0DF3AEB91A4AAFAF68A97EB4F7DB539FAE3F64167A3077
          F332ACD14219E6D08680CE2E9DD789B109181F3DBD2D543E6014E7104F6B5976
          4FA8907C51940AC025A1473970E6EC39181DFE75FB89BDCD1DE49E4DBB87C68B
          8B0ACA388E925CE0F2813AB6EF4E8B246F22370F5E7DE2B612AE691A5B77FD06
          98549AB735D75A009160646870C789BDEB3600C014595E54985FD6FE480DFCD7
          D6B9E714BCF3D5C8E5A6076E8A748C8D5FB473F34A0A63C7D09F9EBCF046A89C
          B2FF9291E7492D9BF631B5EAB982C34DEA84295862D4CD1557C18BEFFFD40F00
          0DC9E028E7B87186CF0C7FBCB63DE493354FED93194F292DE7DF15A2787D7108
          52CA3203B8BDAA1C1AEB2A56B4BCF7F3400C8042E7018A0FC55C1EA592D5DA96
          DEB812CF49AC46044F90D9F34E17D3FCE23CB8755119DDFF0D07BEFB7BE0FCC5
          E97BB9C8A1E8D1996F431445CC2FB4B6D08743C228991015F5A3BAAE15710588
          3CAE787D2BA84001B5E2825CA8A92C85554A371C3C3E7A74C7F3CBEE976338F7
          8B28FE2885F91B3A89B978DB532020E5DE67991F985CD00CA27A4108A2EEC67B
          2AF70DCFB63F764B19A5D75CAF624F622A75FCFC964E63A906A5113422205B6E
          5FC71A795CB5B517AA6E288667DEFA91E26D3D43A4437AB2FBE83FBBDB569413
          BE8C0014C7C95691F28EAE88BB38DBFA4FCB65CED68835B5A57071B182A94B53
          E0070160510904219F990D60FBFE215A9D4F1B333EC90829EB639AE8DC088A14
          48AC95E2B1120F905CD31C11CB8414C2923D072390BE4228FB7E524EA0004825
          650130BFEEA52D060C592B3F1223E2CCDCDB307E52782821BDF237A1A5B18E36
          508A2D147296630454C969709EB1DE5AFAF9216B90F1AE4E074026142F72E817
          F4EE34B92E72177B96B8DC709F97356E1F7A0026BD7C12A7FBEF98FEE4855460
          0026D2DD80FF4326856F8AAA707A0F303A35C75D0F19E5D9D769438AF8BF9210
          C437180B3DB40000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500496E7365727453656374696F6E42726561
          6B4576656E506167653B0020B5F1000005A249444154785EA556696C5555109E
          FB78A550405A54DC2AD848D246D10422251A112A929018A2221812958A460B68
          9A0A862D655389E90F0B224B5845312AA0163021622A34FC40E392A249650910
          6C0C0211C114A47DF79C19EFDC33F79C77ED7D3CA293CE9DB3BDCE37EB391E11
          0193E77920E4C5D9519E799EB39630602D92D2090ABC86CF8EE83913CBC14704
          225E22FEB344119361E87684ECBE1730CA5AA7AFE1AD8F7F821535237B0180EF
          00C4298584316D9B9B4F1AE8444048A04346C068AC1194E6314B042DAC64FDCD
          6923803C03083184D92360C583240060CE80B5FEA90707B1885BCF60C8CD79C2
          6B680F5128103CD9374C84363CB900788418D3B6EDC0AF8060AC45B62A9466AE
          50835608DA7AC0B096734A2134D4DC6F42211EC80BC0EA17B39F1F7727A0E0B9
          D4A9380CB2EB499C299C21B9B0A17849E62E7C1403E0E5080126261CD396BDC7
          42CB344AAC9558EAE22E7B6EAD71E628497D03229B12AB00916CC1D4AE3C00CA
          D770CB0D7D6041F508A81E3784775CFCE52316BB580B7C24E749BAC610B0BB6C
          C12EAF1D05172F6560F68A9650E3863D478D7589F1D680D61B2E2F56D63EC48D
          060812000CAFD91DC21DF6D24E685DFFB8E48054AE0770B1A30B6605CADFAE1D
          034C7513873ACB5D0538AF5064AF27325C34D69BFD58A34AB7AE7F2C1C4C58BC
          9F5A6503C9B9ACAEB10596D78D86927E85DD1A90A89771BC2CDD5734D91E12F7
          406AC2C2BDAF33902F9656D945CC4A675F6998D1D00C93E6EF6605C2E42C4351
          1C57EE503A215EF87712A67AD68F9DD554F075E3138BA53B59005D3EC2E685E3
          01E58757322AD672292A3724512EAD3B52280364B6DE62E9B0A67D85505A3678
          EE03333E491D5C3B652983D0CA6F9EBDE1BB4790C85A8C98E566966814224ADC
          65CF822132ECFA4028FD4CE77E63A8A4D9D8395FD17D951570ECF8193875E497
          C6D62DCF459E4809E7BDF5F28E1DA128CF88A434B74A5F13F4BD7E00F41F583A
          AB7CD2CA03473FADDD23073CB83A7939CE90E5E43DB421E0DAE57A3D77FA1C9C
          6D3FB12A50BE4F14F7609968597E4F68B96E3101849DDB1C3879EA0CB4B7FDBC
          FAF0F6E9F5EC9E855B0F9D2DEA5D58EC6E3CCCAE0089A78C6D09924DDE54BA00
          963D734F1F0630FFC336E4C68459AD79D5F4E10E002F1C3FD4BAE6F0F6190B00
          E06FB6BC77AF9EC5F39EAC80FF4A8BB61D85755F1EBF5C337E48BAFDF485D85E
          DF3EBDE265D8D9F1E7F2403967FF25592B887A59A78F7062660D94AD5E07875F
          A8868A4DEF675582104525E8D98EC846DD55DA0F5EDBF463F3EFE7AF54411671
          CE6553AAEDA369F302D951317547B4E3694DF661A29562052C63FDC522E8D696
          0D807BCB4A604265E9988125BDF7C500688C7B808832F228B5594DE4DA282769
          5BF5D3815471AD7200ED83906CBD2B24B8AEA80086DE510C9AA86AE737BFED3B
          FF57E7C3A6C961A48772DC86F1565CBEE93D60FA61CAE450FDB9D97580A80109
          C3BE4E9AA50644331FBC762368A581A9A8300D1583FAC3A39AAA761D6C6F59F3
          F2C871B60C0D51F28B28FE28154FA8D0C8018B96DA6EE73E041ADDBDEF2B2335
          1910E5B705202A6F1F3D68475B66DEE4BB8B39BDF858EE372139E528002AB737
          85EE3DB368011022A0B1DCBE8E09CD7CC8C60FA0ECE62278F1DDEF39DED633CC
          0CFCD986968B5BE78E29617CCC8900B48953AC8BA0C89B962CB3F73AC9652BBD
          C2DEFB53C796C1850B7FC0E58ECBE02B05CA0F38905D1905AB9B0EB18E9EAC27
          E7938CD0DDF3CC675F7D05342B8C62ADB599B314CB1129CC0D42B496A3786AD8
          B65D21545F23147FDB11565F3200216D011879E39237C44ACFDE70E45E3AF685
          0C0C025850B71C7221BDE637A1A3D3F573416B7256A10E41A256E219F68A78C2
          79C67A6BC4E77BAC41E25D4A04201B5A0E59F4B7BEB3CE5AED3A8F177F01B984
          CDFA78B1DFA10720E9E5CB01693AF146541070A1804B25DD80FF638DD567E4CE
          E94AEA0324E8F455EE7AC8B99EFF1C096B91F40F2FDECF2BB5263C0E00000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000020744558745469746C6500496E7365727453656374696F6E42726561
          6B4F6464506167653B69EC38770000059349444154785EA5560D6C5445109E77
          5C69A90AAD1A62B4820D24AD8A26A89468FCA1621313D32804501344EA5F450C
          2218204A538AA021C6AAC88FFC064510A80A684424B51012916848D104681511
          8911DA082805DBDEEECEF8F6FF5D79C79130B9B9D9DDB777F3CD37F366372022
          901204011809D2D54B967996BD4E3054612C25631C040B3E6B11334697004304
          22B944F2E384AC9256386F0BB9E741A868D6BA9880373FF909DEAD1E9E0700CC
          0348970412A6795BDD78444327024202A11401ED58207021C7D22208A3DCACCF
          AB1A06146840880A66AF50B91CC40100BD075CF4E3EE1E204D8FE809286D8D3C
          236A4C663D008AD046842E3D9900048498E66DE3EE3F0041478B322A65F59CA3
          00C111846340AB30FB384758507DA74E8566203B00EF9F947DAA6210A0C173B6
          93F92821307926CF4A94454F914F1FA5010832A400E30A4EC99A1DBFAAC8049A
          5C7313A9CFBB79E6D7EA5FB8C794BE061195D8B700ED260438D5D10D93DF6E82
          75731E54409EAC18EC724AB6F24DE41889D86E42F24CD2C5A5C0FF110228E788
          E40A72C5B6561D5D6CBE05A063C3D7C5C229F7CA46030431006EABFE42A11DFA
          DC16685EFE88A9019D02E9F3E330F2475FFB0AAC4C1D3D249212CF8035BE0EA4
          4347958EDE3C8F36AA64F3F287D5A0B2762735DB228CFCE1E933DDC085805367
          3AA1B06F5E7A0352333F2672ECFB6FEBC916610F06129535DFCC9540BEAC2B77
          8BAE0680E099F9DB159D5573BF768E89C84786C671BA738FD21BC342CF224CF4
          9E3D72DAE69C6FEB47D5EAEEE401743384F5F32A01CD0F3B53DCB65C5F54D2A2
          6D3AA6755B876680521D5B9456A649C6118A8A07CEBC6BD286C49EA58FD54910
          82B3C6E92B7E7800895CC488119AA545ED10D1E45D3FF36088B4FA3EA02C4B75
          EDD4819A321B396307DD51560ABF1C3E01475B0ED637AF9968994868CD7EEA65
          1D7B41E33C652C2539476082E0F2ABAE847EFD8BA6958C59B8BBF5D329DBCC86
          002E2C41863DE434FE19BA14702E54D76AFFAB1DDA8EFDB62874DE641CF79236
          36B2EC4C88509977E4253A773570E4E8093876E0E7C587363D3F5BD253B3767F
          5B7E9FDC02229B738CBE013A9F76EC4F3F57BC89640ECC1F7FCB650600CA6719
          E5F6EAAD74E3B8A58B01A0AFE98CB96F341CA44B919A0D2DB46CFB61D22C2AA0
          1935D9D571EA9D439B26C9EA3F0B5A726C2FEB6208BF4F9E048C33602906A5AB
          3F8C341C23FEDC771D5108849B8AAE805756ED6B3C7EB2B37CFC5BDF8195BCDC
          DEB0EAA532374F1C585F352BB41DA5131AD0E652087247EAC0454B60D0072B81
          3116ED2F1EC1796D5903B8B5B8102ACB8A46F42FECD3045ED43911952411A5CC
          A5D45535916FA3AD4F4F84548A01E3A9A857E711DD8590DCFBCE91A06F7E0E0C
          B9A1000451F996EFFF6C3AF96FD7FDBAC9A1F543194FC3682B2E59B5468DF68E
          19A5DCB74F9F0A88029050F57512D20A40D4F3814B5782E002A4E4E726A17440
          3F784850F9D63DC7762D993CBCC2BD865A28FE46449EA67D8F8F55F473265490
          853575FE2C881C4A18B90D31AE4782348892EB421065D7DF37A0E1406AD6D89B
          0B6479C96D99EF849E0018BAAEC19E68CA495BEDAB4088803A72773B26D4F3C1
          2B3F82E26BF2E1D9F77F94F9B6CC28A5509F58B0EB9FB53347149A5E21620108
          9D27DF45229CF59F332FDAF3ADEA913919278C2C86D3A7FF86731DE780710E9C
          851ADAEE1487C59BF7CBCDBDA59F8C5732427B72696D7BF9457599249B6B21F4
          5C5AB43540AA3608D1458E86A9A11BB72A904C2014ECED50BDCA038811E10068
          7B75EDEB726CDF75C5868DDF9B0088504DFDBDD36FF1245DF49DD0CBF19A9920
          04F9A850289028B86642B16298F0CC38B6867DBECD0564D8A54C0048152F521A
          FA6BDF5BE62E18BEF30466CD6F446D225F41DAEF300030E5C5D4B26B3AE98D28
          27D45C032E1177025EC21A9ABBC07FA176C7F50132E8C405CE7AC8B89E7D1F19
          1576FC3FFA1E0EB02D4EBC130000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001B744558745469746C65004C696E654E756D626572696E673B4E756D
          6265723B4A0DA4B6000004FC49444154785E9D575D685D45109E89378DB6D578
          B17DF0DE12132DDA9A22DC62B5A1151AA8AD22FAE48B7FE05F9A42852262412D
          15414BB52898226A2BA20F457CF0D54A28061F34D6D4DAAA2508FE55B8570B92
          541B637273CE8C3BECEE993D676F1270C3979D9DB3BB333B3B3F779199C13744
          F464DBD0C73F1D47C07E19B0FCB11096F63DE7C6062C3C3B6812C0DE7BD79401
          60C6A0F9F4FBDF11A50C494A901A1C1AAC81B412C40D450111FEC49D3DF07FDB
          BE0F7F80B73FF97172F08ED5CB65CFC6F9BFC0B7E5CB2EB5842A1001BD61C810
          AC6CB5826B2C604F6927A7BC71D5E5F0D491B163AF0E6CE80F05240965741BCC
          D3F262E34682688DF6A2C04D3D65B86763D76D4F1E3E79FCE89ECDD936720D88
          B88805C86ECF7AB0FCFF909FF983CE4F88E18AA5EDB0AEFB4A4899B7A46F8D7D
          3AB473C3ED818E8488DCCA0228A04000D93EB60D3B0463362083344941DAD28E
          12ACE9EA84BB6E5DB565E7D01723E202C2366837C0F9AE20171DB13CCE207FC4
          9EAF984B2C2765ABC40DD54EB8BBAF7BF3C18FCE4E0240D9403CF192059D5007
          85C3B2F34703CA7F7024C2EAAB97C1C0A131B96F2022488905C0063B5E1F3D77
          7877DF4A00F8B734B2756B8500EACC80C3FDFDB06D6404EC1570C1070A630E7C
          A1858203DBAF8389893FE1E2D414247389B148028941D3D0478E8DFB00C052CA
          5CB7C9C38A38DAD7577D60747482895430B7B80AB600549E1D30305AA72C97AF
          824E834C7D961064587126C922B0C444626E7FDE4AB9BDFDB7E7D7F55E4F0091
          C7EF7DEF24849991BCE2AC3C760761F23C86033BFA729BC93AAF7A89882B24A4
          E919A031D19CED7AE1FBB317F613E922D75E7CF86675BF380C75AA5702D04E2C
          441451A600B6915C01C9027B150F9D38D190AF149880C3C5E129FD7707D54015
          D4399ABC38670160542114E48142BA553A27045B380801AA5419877B110311A9
          022CCDDAF41B025EAF99D02EA2D8DC2A492DEC9C35565040051E11E815301112
          5395806BA2C99BB55A453C94D8A7624D38E165722B84E6B2A559C33770829449
          A32065A8B8FBAF027365E59225E776F55CDB4BE41762B6FAD977BFF20EA71EEF
          3D5B796A0DDBC1CB83360A18195224991BF80053DDF422BC218BCFCFCC5EF3C6
          2F3FFFF31CC5A9F8A5476F2944800EC21054CF08C334C819A98E4AC0360280A4
          47DCF5ED99DF01A093829497B7AC67A9600DC3B86AA2866550AC4833213123B1
          1919A4EA429A8A0BA1C88EAF27C3B850E93651992612A8754B44D67029C03003
          6CCF14205580DCA608DA4430636876760231579B29544EFDC45B400ECEC8B6FC
          6E338083BDBD15AB0069ACC74945D1225970AB2BD3ABD254ECAEE094216AC030
          3C4B69B5D2D1F1EB7DD56A4DCDA478E69D2FEDA918353CDD89E25FC85A430F0C
          6E0AB20701875160B09EDDEA474E9F6EBCB2766DF707F57A7377E6DD6AE0FD8F
          6DF4820A092718736C72FD882E9D879990B2E5C3C2D8333EFE87E95610F1C29B
          3BE8E973E65786564FAB0021308146C1FDA7BECE7CEB41448C9CB0985E83B072
          64A44040C4A1CB94B700B46EE826C51B174E4C4A0713B51C47F35D682EAE0045
          47D1C4126966A1591BB30225947EC89B6B2105889D06CDC4792DD97584412D20
          95AF2FA9A08A920B7251C817289D930AA7A880130533D3D37F7FFEF86B9F6DCA
          159E5661E768129A5078D1C3150ACACC4C4D4A559B3248A3DFFF8828DED9E11E
          1097F907440088E89817F7DAE69CF00B06D3A5799E7DB30689C1C55890627EFE
          A2CFCAD4ED4FFF01BB43426CDA339D1B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C65004261636B67726F756E643B46696C6C3BB4
          301774000008EE49444154785EAD977B7054E5F9C73FEF39672FD9EC26211720
          102A21840412306819A5052A60618C38E24CEB5051106C4B6DADE0A5D5200282
          56AB55A1172AB6208EB696B6EACFF9591D952AC84DAC22412E1103622044209B
          6CB2C9EE9EDBFB763993EC4019813A7DCE3EF3BEFBCFF97E9ECB39E77D84528A
          FF3421045F6282FFDE14E73083739BF892F542E1142001F55523D256AEDBBA01
          4D4C140A1480540804CABB4080B7F37EA75CE06D003A63F1E54BEFAA5DD60BB1
          6CE50685922860C98229171491B662DD56E7F65963CF5922CB72B05D8963BB98
          B64332E970B23D41673CC95BEFEE79F091BAEB96012EA0F61DF8420D2FEF8710
          E2824AA08DAAEC8BE378020805421708740FA217DF95A014480452091CA9D8B8
          E32077DD3281EEA4BD68C1D2BF89154BBFBB0C70460CEB8F3AADF18CDD6BA6A3
          F0D27A46A946DDF28A06E8FEE4111A5FFA25D249E1CB2B25523E95F0C04BD035
          034D1320049AAE0112955E5D4D4320312D1B8089DF28C795F2BE54DDF3E2A987
          6FF420841099BE309494ECDD7A68284AAD968A91482C57A93D6B670CDFABB27C
          9FE5B53C4FF9F4C73182B938669CD63DFFCFD1BDAF5030661EA13E03D1341DA1
          915E353425BD0C490466D20240D735AE1C57816BBB0BAD3BD68AB54FCE5D06D8
          BD7DA14929B12CF775CB741FB24CA7AA2D6E8EED4CD8BF95BAE81A3D66F092B2
          6FCDC27234E68C2A65F5ED7339DED98761572FA173D73AA29F6EC2B452B8AE4B
          1ADA831002908AA4690160680243D7983AB18A29136BEA66FEF8F78B011FA001
          C290AEC2349D70CA91FBE7BF72300A184F2FB8FCE898AAE2B54327CF2CD40BCA
          080622140C1840C3B677687C6F2395977E9DEB97AFC28AD67B19C91F310DBFDF
          8FD035342150084CD3F6600C5D78A5D275C5B55347215DA7CEB656F2D73FCE5F
          0A28439D0248392F4BC975C09AD5B75F36724C65BFD7864EBAA1C8E83F1A0528
          6573D3A2E53C3DEF7AB2B20D5A0FEEE18505D750FBB32728E85BC0F18FD325A9
          BA8640208852E00BE8E44682CCBBF7CF4899794401C55593AAA9A81C56073C08
          B802100BC7150F88F8F437B34AFADC3161EC903F554CBDB1D028BE04343F681A
          428161E4F3D4823944EB37130907C8CD0BE0F7EB8CB9B18EECFC30B12E8BFC8A
          49F883416C47D1D56DD19548615936AEA3B01D89E3BA1842F0D6964F597EF755
          394042003AE07BA876C8DC88DF5871D3838B7DA1216333E2CA4D40EA28BA2F97
          64C2C7C2DBBE43733085EA6310EE1760506E90A1170D6780EDA3A4F407E9520D
          C767F841685EF46ECFFBC17B4F38AE5792357FD9C12FEEB93A17486880FFD19B
          2FAEF9F694E10F4CBC7996EF85279FA3BBA3FB0C7199D845A2F90F18AA8DEB67
          DF4A9BA630759DFC483E17950F23B76F16FECA01EC8EADA0E9E4362CCB44D7C0
          E7D308067D6465FBC94E7B383BE0B9440208006DD5BC4BC78F1F35F08D11D36E
          2E1C36E57B4C9EF75356CE99CD07AFBE9411B73AEB315B1AE9F8E0D7540F1EC8
          9A590BA9D50A497DD2C2F69D1F129387A82E1FC9E4CB6711175B3874E235CC94
          E9450F60681A9A9E76434F43E948870C8051D13FFC4CF5B4D93946FF1A2FED83
          6B4673DB9AD5AC5FFE003BFEEF396A6796901F88639FECC6EC88123BF818A1A1
          D3B876DA0C6A766D67C7A1DD6CFBE761CA4BDEA6A4A08C91E5357C7CA09EA6B6
          BE0C2AB81C10885300424369D27B24A574C90028A58A7CC53598291B858DCF0F
          91503773EFBF921DAFFD83DF2DDA489F1C1FA57D83343725292FF553995C4FD1
          25B58C983885FCE212F2766EE5D9E7DF66DE2D41BAFC6D7C6DC045BC5FFF227D
          B22A8984F331048040131E0CEAF4121C3B7CF2A3E8E18304C211EC640787B7BF
          C1FE0DEB39B065037D43297E386708A32AC334EC8B3364FC747637A4C81F5A81
          EE1C4744F7D3B72887C9DF1C47612CC2CB1BDEE270EBA744CD3D64870C1A5B36
          623BB6D78C004A81AE694857F50208EDE017DD4FED7F7D3DA8549A36C5E02A45
          61710C2BDACA81EDADBCFFCE499A1A92D80E6CF9FB7A468C29253BDDE9067EDC
          F6639847B7936ADA4169D2E6F05E9386E67DEC3BF63E29718CC6E62D58A6E501
          28050A5028A4CA00603CF066D3ABAB42EFD6574EDA74717E711C3BBE9B801365
          60914ED1E810C9364875E9E8A19C74E423080FAC8254123791C24EB463C63B68
          69EA20198BD0966C271653E85227A59DA0F9640CDB7170A5442040681E8894A7
          9500486E6AEC98BF71D56F5289D69D58C79BBD86B33A5369F1445ADC420FF9C9
          292EC61F0A23DB5B70A25FF488C738D6DCC167AD79145D3107DB5474B65B7476
          98443BDA8977C5712C079442D1630A5C978C6980B97E4FDBC71FED6B59B4EDD9
          0FBF543C5434C84BBBCC441EE3E8910E3E399647C9F4BBC91F548EEB4067CC25
          DEE9D2792A808485E3BA699778574FFA95CA644018800B241E7FEFC473BAAB06
          A99435BFBCD4B820F17D9F673364E6BDF42FABC64C25712C1DAB5B12D75DFC7E
          816581F22E89921A4A48BC7FEE9925508005743DFAAF938FBCBD2DFAABF7B677
          41C0774EF1DD8D4186DC703F25153584B2B2080443E407CB88B548A2274C9A0E
          5888543F0C9F1FA1840701A0146734A1B66C4C81EA8130818E95BBDA9FD8BCB7
          E3E79BDEE9B2BBCCC859E2479A62ECDCEFA7EC264F9CEC50364620E87D846E9D
          B5184E0CA7718743205EC58CDABA9ECFB4DE2B7E56131AB677907454C067C81E
          88D8339FC49FBDA2D3DEDFDCB2E9F1EAEAE26123AA0BC88B488E7C9E166FD0A9
          FEFE6206568C262B3B1BCDF0A18060308BB2F26A1E59B20EDBB2F0A58583C190
          F78916420384A7AE3C27D303A2AE2A27731A7C786FA70034C007448092C7EEB9
          6FA768DC4CEC5003FEBC422E9E5B47D965130887C318860F840E42A1A4F22273
          5DD71302E145AE0B0169EFB570968F3B17AF67DD8AD92540AB91163D7B90001B
          E806DA42155730ED273FE2445B02C330C8CA0A11C80AA2EB3AF4A22B10427891
          1A860044E600A27AC5154801AE570679AEC92803E100C9FA86E3CC9E318E9C5C
          1705689A9E39FB7942F432A81EE1CC6BF7B4BD422150D0932900E4F9E6020998
          8E65BE7BE7D2172728D52BD423A644CF0A7802A70B666E4126138A0C986D2736
          0316E09E6338CDF442100800FA7966447181639F0BA480046019E7996A6DC005
          9280E0AB9B38BBC4B8803A0F40C65DFEF7A600FE0D382B9F8B763D9282000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001C744558745469746C6500496E736572745461626C654F66436F6E74
          656E74733B0041BA4F0000056449444154785E9D57EB6F544514FFDDB58D5A54
          D4F8C5A895ED9B5A314183B45B42898F4254DA6E29A942524D444C44D126188D
          C63F401392C6A24169A1C51A1E966262A16079F509F193026DB75D44F9E21743
          C2AB627BEF8C67CE9DC9E4E6F671E32427BF99B9E7EE39BFDF3933BBEB4829E1
          380EF450939846B38959E7E1B520F3344ACC31282E6306592078D34F13BDB1D8
          1D151212EC43A6E6066560CD1FA48C175302F8745D51168069326F5BDB79293C
          09D713F0C89ADF5E8AE03009588B39147CCB9A38FECFF86C7F0A3B7BD2939B57
          E72D0030F545C393DE86CF0798EA3D0BEE52306F028E91C663E42DAB020FC35C
          CF2C30CBE247EF45E3CE73C7B66F7EB65225D1F1613927E1BA02338D58B00436
          0107E121D882435AE40496C41F4055D9A2F2F7BE1E3E0E40D1CEA0241C2A4334
          058421C5AC6D883061697C60C47285C47D59992859743F3C194F78CD433D3BB6
          94AD0170BBAD71B969CEB002E112D8366EEE4E6187B6AFBAC708C7686F947D0E
          9FBDC24E3F9EBB0241E8B91EEF67DD9981A2EC85589B88273637F5F700B85B93
          8D45EE0163C9D2C77CB66030F43960D5F26C5EAF5D96AD00D3AEE91F3F89C247
          2889B2DCB2C2AE916B8D35C50F0298D427448413303DA06BE068793B87AEC024
          C5C750BFFACECB8B7178F84F549766A38B94A85EFE38F21E5E804D5FFEC2C74E
          08014F483649F656D3F0D56FB6962E34F7C4EC3D6082E980AC80AD3D9B595451
          50F2672508B0A9321757AFFE8D1B376FC29D764911172ED914CDBF3DCA65CB64
          A273972078531D1CF883E68EFF9AB417D1BBAF3C81AEA1CBA82E8BA36B9030B1
          08870893A571B4F7FDE5FB5495301375041FFAD545C41E1004B6B3EBE883EDD9
          D7C81C2405E7670A39E11A4660FD8A1CF6E1A1DFD1CAC6E655C077B4635FFF65
          73E95824D84AEC3A077FA7A039E81A204CC4718895C8C1F7A7D3ECF77ECD1253
          360821618333CA199B5088C005436CE23A70A0FEBC57539A03282C5728B91C6A
          D457E4E98AE9CB8BFD6D02732BA033D099139B4BF6623291093E482E412731AF
          A5E03FF45F42B23C97D669D412769C4CB15B63F22940CB2F84889A800CF440FD
          CADCF0D52B1929689C992513AC000727C06BAB0A395961EF700861558EF25D60
          4E3D3A4E4DA0E3C438BE3B49A6B037C5A6DC0EF65D0201611A50EB33694E686F
          EF18F98C996479CF935115904601AE223654E4DB12680A421FC775CC9899739D
          6B57E431F38DCF15008E1F4B3A1282CCDC6FF37E1778C16F2D6293423BB1693F
          9162666D3F8FD23A054012F3095F89FE34B33D70665C21FBECE91951CFAC0A5E
          84260C9700D8F87CA1CF5EEB69EF04A9195BE6EB56E6F3BAE185C57E709D8160
          13A11E98F9184A19907CCFB151732D07BA705BDD52623CC1410F9E1E471D21AD
          090BD0AAD803D8B6FE69003A011151014F17CB63DD149B22584D4C7CEE700A9E
          073016F03E25C1CF1A2A8B832746D87B20F2EF01C707B41E1F41EBB111B410AB
          DD3D17B1FBE84566A8C6FE53131CE0002920799D52483E17D820ED692265E72C
          8113BC07EC78FDC562AB8099E89DF515F91A490185AB0A59EE37569718B56C3F
          453805CE4C37610B3169256B39729EE6BEEDEABEC092EEA3BB4140E118AFF79F
          18E3A8BB94EF91DF0C2778B609A3DF03063FAE7F26C806E6BF80625CC05847CC
          B92756F9FDF2D1ABCB08A5AEBB43482610298198F064506EDB788152B0D9E781
          89B43E5A7E114901CB3CF4C132105098793043AD9413F2A73D4B28D48441A2C2
          34E194EBB16C5A0FF036B3B20968853969FBC383C3B1ECC23859361E99982B81
          DBFFDCBA3EF8E6F6BE8439EB92A96876C2ECC1EE31EAB5B2C073ABDEEDC96B67
          014CCE9680D4D9DDDAFBC94BD5FA777CE62C2725FADCDAB40E7E5DC791B329F0
          2F994B768303CF3F1C44189660B804FF01DD13BC8BCFDC47430000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000022744558745469746C65005570646174655461626C654F66436F6E74
          656E74733B5461626C653BEFA5E0D80000066049444154785EAD556D4C546716
          7EEE0C30887C7E08E1C3CE0C08588B187575AB8B20D866B75F29AE0B1AED0FD3
          48B5BA6BCC6677FF34B1FD51DB18373159714D637F58FC84C5CD66A3A55D0564
          0035525B2B2532C8F02953B58080C88773EF7BFADEF70EF776A6B061624F72F2
          DCF7BC77E63DCF73CE7BAE4444F8A9955577D510A85084B9134847F259732712
          0E029E32604A86C4188131065961600A0954B81FD9B91C3359907F801115EE7D
          350D81DAFE0A2752A383C871FBBE043F0B9F1F2A704E094C0BA288074967AFEF
          EBEF10608060B92435021DEED15AF7C078210C832C33CC66A69F274098C99870
          5F2303450239F618BCBE2AA52021665EAD4F020A0B400110E0C7D29F30F47E30
          14931921322C18D9B66855BD82FF5CBB573B38322994602C60050C76472F3A85
          FFF3621BC736945DBC23E2E7AF7603A4621718474556447C74FC29E2A22C786D
          754A417478489D284F200A30E65BEF8D6B520D05B42D71E0EFD7DA0015D7D845
          D82393B77780D06033B252A2F0EA2A5AEFBC374C37DA06A5409B50BF6A554DBD
          7A69C84B64CFEBCFE37C632736E5DAF97E1736FD260D8B92E6A3F44833000662
          84490F83C2483C478505898E9E5B028CF9F4C2A635CFC14F008D393F941171B4
          83034A7F9B8EA1A101F43C1816E5080F21C8B28C2713533871A91DC08B739D03
          BE2D5ED9D8A3E54EC620FAD31B2FA0AAD1C515484755430736ADE358EFC21F38
          963BBED7DE79331B1C780232E25B29801E20A697420250926BD5BB5DA01092F8
          E16258892488F83A2F8D2350B28EA3A49310314634F75BC098EF3D3FEBE8C239
          47A7F00A870B159C2901F8177F6644A8ACEF00081CF91AC0992B1D385B7757EF
          2106128D1D4013320D85AB8CECFADA6025988B6071FE228E24E4576DCBFA45DE
          8A19C38B02528048C36905EA5D9C95EA1D38C399A90EA88C35ACA86B078384CA
          2B2A6BC2E95A274ED638B54349BB058C05320714F2B9865BF2D30D758CB8604E
          441C3304DD92F5192A606B41160804A62B2ACA1A80023E239933AA69C7A95AEE
          2A5E760A27D29873C0B93A27402AB60BD6272FB7F177DA7C8697E22D6B0073C0
          28FAB6C24CFD06485A89B46ECF57E324904DAF41786B0347AD97C4BB3253F858
          5E08899B0813FD7F0514BF515CCED994D73805B3CF2EDDE16BA7D8397B452821
          1420AF72F747DDB8D0F2190E7CB10345652B85EFFFEF76D4DF3D09FBAE583B00
          93A499C0D9BF05867A9CD162FF2FA360BE5930064ABC356F75DF44D537C731A6
          F42327D38E8DF9DB101A148C9E1FFA71ABF31A1253623F653BE9C39E4F1E5DB7
          ED8D79AFFB1F8F3E00E0099AE56BA8CB7EE27F7738924F17FEB57805CEF16E2F
          29CC12EB07236E547D7D1C43535D70DDEFC377DDED581013890C6B02D2162EC0
          EA65A9089F1F54D024B79AB19B9C52304A017C345302FA956144A2E67F2B596E
          24245074383F3C531F5CF5CECFE151C6916FDD8A3FE7E58ADF5E77D5E3466F35
          824DC348489C445C0260B3C6E7655817E635B57C2BCA3F630914A299AE9D9180
          B1A9DBC0D8436C59B90F8B13734092496C15455AB128EE799C6E3E8C60B30791
          D166A459A36161B168BC7D6BF604C8AF090DF7B59F7E5FADF199589CB40C4233
          D2543299CD5892BA0259AE5CB4DDBB805FC75B21CF63E8E9EB9F6621CDAC8042
          021F4FC820E30B28D0684263BDF113ED3A1EFAF22FC61EF7E2E57F44D1D277D0
          37E482C91284E12105CEEFDD2026DE993D0122F6C5EEA3577F0746605A40FF11
          D313D146ECCBBF5A28E265EFEE17AC06C78651DDECC0E4900DD6D0221CAEFE18
          0DDD15A27E8E5BDA0D9388A65556664CA06CCFDA57304793B8BDF07E12936519
          2D834D181B9F44D740277A3B9BF79DDA73EC98976588A8B7E6C129DB23DFEA3F
          F1B81CC03844F0D94C22104627C63032368EB0B0102CB627213929FE6DEB8E98
          17BDF3E9895A51F5C0A4AD11D9A63053BA1A23225928F0AC098080EAAF1AF0F0
          493F5E5ABD0CB6E438584CF3724C301FC52E9C9CE8F35C22225812CDAF58D392
          B77577BAFFADF7F42F910011A1FE66F3B1A888F94B3ABB47F223A264C4C68460
          E5525B76426CCCC1BB497D079942B02626A3ABC77D7DA2C7A32620FF52099032
          C50EB41FFAE180AD54C96D642DA6D8D8B075160B302FD482C8F048ACC8C8C4E0
          C8183A5CBDCDF79DC37F1FAA9DB80340F16110B8194DE8ED235231B938322338
          CEBCD96491362008D944046592DAE451A561B2D753F9C831D90A608A88D81C12
          0838194C77BAE190BC8DE8510F1683D68FF18F07E1DA2717A788520000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002E744558745469746C6500416464506172616772617068546F546162
          6C654F66436F6E74656E74733B5061726167726170683B03D2CAD8000005A149
          444154785E95576D885655107EEEF55D4A2DB7C28430426DD375DB02AD34D7AD
          0C09DD3453140AFA21486ADBAEBBA59542D29F4AF1236BFDA8D5C25C30CC3F2A
          659062A1617EA0FD28F3AD252182120D59D8767D3FEE3D67A67B8773389C7777
          DFD50BC3CC39E7E5CE3333CF9CB96F8699110401CC931AA1D17613656CBB6623
          1A00895DE66176C799122761DBE13F8E05613883CD2B196C35D85BCB8B44C040
          44C0DA45D5C300C400F49B1D1798344369824E64FB2B933D103E0027218270C6
          8A8671B8D9E79DFD9DD8F9EDA5DCF2D95529086C5AFC907E69E34909F5B6E1B7
          A6EA860004363B5A8CC065411E1BB9B19C92286BEEBD1D2B779E3DBA65F9D459
          00A22FDEAA17104AD1E0006CDD5D7D7CA17E08C08E0002E0E1B1778218F5EA93
          D347B7364EB320D4E22D67F8C6332021F951F60DD8F201B0781531460CAB40ED
          983BA079EC74BDFDD4911DCD75B301A063E5E342CE1B2C017BD1EDF8A6D30060
          D10C46601CDB2A353654432B2D4086DD9241F57D9598373D01D176F2487B6B7D
          038002000580060540E4D7FBD539E35D06D82AF7039B8958B1E18E80C084D195
          78AE6E5CDDF883D9EE950B6AEE0290331D42837000009CB3ED877F374B060B7E
          AF15E5699E5B83AA7B8663E9B673D27644044D2CC2892C6B3BDDB5AB755AA5BD
          27CA9780C83901D034A7DAE2E927138E2F4B67DD8FAEAE6BE8E9ED858A1562A5
          A012C915227C7EB413002A24C8414BC0F0DA6BEB57BF19AA975E44C206B3CF25
          4465AC78BE56D6B982C2C85F25A810D64910940340362AF1DB326FA260613251
          0740601D2230CEAD67B30E00D19AA51C53AA475A5F430C19B90C09FD3EFFF0D0
          45DB7636E9CE9685D1D6294BBAD09264E0BD638DC85E390F62E0991DB59749D1
          89EF5AB333677C3451333188B83F1292ABB964E041D77C803717DC2862908090
          0C206040698D8B89F3834B8F43738C980A58D8DEF0148070CF923D3AA23C967C
          BAACBF12B0BBF9240317E06AEFEAEFD20FC06A0B8E2403E9B9383FDBD58EDE42
          B7EC0308C78C982AD1D46DA8E2BE00347B6DF8DAFC5AAF246E12FAAD28CEA405
          13CD245DC062478829111D8341B61BC4C3A9D597B84F0908F0DAF0DA9A37409A
          A049275A279A206BAD4588524DA8DAB91BEB8E3521FBEF7910014C24A01415A1
          558CCC908CECD76F7AA027D5C4048AE98701EF011BDAC8F59B41EC060F39C659
          2EC83A8E6364AF9EC70153F33472C54501A0285927D234FF69D4543620AD7F2E
          EAC1AA8E754FF601A04BAEE22BAB5A6DE412B1CD84A45B6C92B371BB3A24425B
          73A5E34422C4C6B92205D20A3F5F3B04628D7C5400130F3C0BD8C8A8CD6DFE64
          647F1A8A304B06982965BB102E4ED39EC98873AD1572C55EE106496948B2474C
          037F0F58077FB734DA5ABBA8251BA28D3026ECDE8B89A31EC3A2F606309B39C0
          2C69275292A5CFBE3E2325643923E888BFEF27032406310BA2D16D1F7B806CEB
          595618BC026CCDCC6DD2FF9A095131C292FD4FA435376927717C6EED9F779BF1
          CC00545F0EB0CF81F55FFE64AE65F640B847D6FECD0846F3BC5A3093108E588B
          6DAEF90840DE4E450B20705DE00358FDC223C6A9DBB54E831496DB0199053123
          9FCF838985ED4238C8D56BE3A2BDD966DEB8EF405F0E68ED7F86ADDF77CEA5DD
          0C258061DDB3EB4F50605949787DE124D48C9A92B4DAFBE91252F3229F30C308
          1BF61D0438F000C09B0526DF6B5E7C145C926E7354FA9DE0CD0AA534DE7EB61D
          5DDD799CCD5E46D382C99300FC65BE8AF8C2BBFFF4FFBFC0CE02A3BCBBDE9825
          007CC3962B0C87A0A222C4D0A1C0F15FAEC2D4BD084097FB200151E98BFD88C9
          D9DE80603103FFF741904868272997FD6B66C9C106416F3EF62F1D034C0B00C7
          1A7288C0B0DD1288ED1DF8DF83030228E4AEFFF7E3CB1F9C984E16299BE88841
          90A5DB73E3D8D8EEDCEDA72FED3E0320570E001B84D7F7AE9D3B1FC050373611
          7A9D7273360CE9AE03E8313EB85C068AA64D7A9CE3B212943F76C10D5482FF01
          70F7A29765703AAD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000014744558745469746C6500496E7365727443617074696F6E3BAE99A5
          5C0000056849444154785E95577D885555109F737D4FDB7DBAEEA66152B89A82
          1299E43FD6AE9045A4FE63254B0ADA07911F951A5A2A5208927F9492281AA1DB
          97909116989B5F451465A861906BA0455666F44FEAC2B6BB6FDFBBF79E99E69E
          8F77EEB92F775F67F971E6CCBDFB66E67766E69C2B8808D243085111198199B5
          D2CDBE5CBD46863433C1002397597BC6771CFEE50B1104B3948F0C02AACCE4AD
          19440CBD0811E0E5B629F5AC8E1872EDDE1F0925412C112463D7F2E90338E010
          800866AD9C7B1BFCDFB171FFCFB0FBF8C5E2B239930ABC0CB73E31552EDAF2AD
          626278E1869A19107677A4128463410D1BB991DCA4A2BCFDD611B066F7779F6D
          5B366376E2C4BE75339513718C9928AF3F5C7E64800AFE203B1B07EE9CD0040F
          B58C9FB9EACD539FB32A093BC74E8858E2200C38081DAD1F6575C0361F18461F
          2341437D1EEE18DF089226B4CA5D278FBFB1A2652E0094F6AEB9DB2467ED0C78
          A493C7BF4F0131902163A954F5C3723065DC4898D73AA175D98E13C759556782
          0E6A720031B3DF9E44EA0FA9BACEA2586B24692726DFC24EB44C6CD976F07C37
          AB0B8C3C23A83909216DC4E623038D2F3E3B02268D2DC0929D6754D921224824
          05622CDD71AA6BCFF3F78CB47D62E01C405482970B66A61419193F60C9EC89D0
          D575157A7A7B218E626624869811B2DC7EEC021806C4A049888E81AAD2B395E9
          1E0B2591D049D9D4340A463294CEBC9494E0E8CED86DFDE00E180648DBDAF96E
          875E2301DA2E483A1708019496048334CCF3D5CFB455984222EB8018340710FD
          C81109EE6BBD2B91587606240350C78AC94C5871ECEB93678D71F71BE9B365E0
          1CB00C5850624042A91C19875C1FB00695462BD473EB280243A9B503356E01D9
          CEA76793CD88A0B72091C139011EF59611B4460149AF6B7740925786AAA45827
          7926A5247712A24BD064812494EB367A1B09EA85A82D075C85BB080819866286
          21C2386319100CC94AFDBE2A984ABE641810420CD6075CEFE7356AE8882D0390
          7228D10BF5DC5487C90B4180090806DC029186CCB46224525B8048A904F42E27
          961DAFEC4CCFD03A9949C2670F3EACF79624B4B71D118FBFFFE0BE13077E78E1
          F78E2BD450A7FCF34A484A5420F0924ED3AD27C70AFA372554403F074A6108EF
          2C382AAC43E5285C38AE75F47D431A82D5D39A1B0CE5042084FAE713A7CF9AA8
          D22507806ECD70BCB9B57100330CB0F15CAA330D2D96FBE1A505CBC7B4371EF8
          E050E7EB3063F246C80F1DA15E59FBDC4277165863EE84F20C6B02EC7B4685FF
          D1071ED9D3124994E6C21843A954823A3E42E7DD3B0D3A7FFA139E7A7B3EAC9B
          F32A4C1D3F5DF52D6DB8FA00F2C5EA43CB1DDFE46F417F58822D8B5F8448468C
          3294E31294E222F4339A9B0BD0D89887A7DF6B836F365C80254B570208D2DB92
          388C1288B41CCB44269665A552A4910F1D3BE4B6245B05FD1C711897E18F9E73
          3C8750668471A4E68819E90B7B212AC68ABA2B57FFD60751BA1C895C7912595D
          EA39560A4CBA24740EF4F514E1B1D736004A4D4F300460C5A20794F1339DBFC1
          E58B21EC7E723FE4F379E838FC1180EB1BAE04EDDAC0290CF1647384811906BE
          DF74A93E754F2B4C5A3DEA2F0AEBE0E3A35FC1D8DC4CF870C566A81F7E235090
          D3C6899C41828C03BE40EE1D433F5633C02879CD2726D8FED62757BBCEF76D5E
          B569FDF63137DD0CDD65D29F6C7EC4D5F7416B4889D5EF93572926099B973711
          49A4CBEDDD89228C4A71C7B52FFBD7F7FF1AC973977AB63F7A7F0EA2DE72A5DC
          90FC1B3081BB1D61A6030A15B5B067459A1DC9F0A8B0F290D47DADB0F8954F0F
          0EAB1BD18AA9339EEC8DC81A7627A2DF1D33CF2D1BA562F7E9235B17CE67CD35
          4674BD2FDC8031D45CA14D8E547F25D72C3B448C22E31FB3F5F27A9FE722C548
          A030F01050DB20864C6D01FD0BF14779B0A3AB69210000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001A744558745469746C6500496E736572744669677572654361707469
          6F6E3BE15F20960000050149444154785EED975D885DD515C77F6B9F7333773E
          632799E683342A362312D4922869415B881824F1216688A0B615C487800F824F
          1A50D4F6C97E3CF820015F5444349041689B3E584CE2474C088264624C4C4C26
          8E89662699C9DC9B3B77EE9DB3D76A719F0F86EB258DB4F8D0FE61B1CEFEEF7D
          F9FF596BEDC33D6266FC9070C0FFB6811840444821796E8BD6FDAB386B508499
          158269B82CDA1B6ACFB5E50B2890A4E1018D0990FBD62CEDDE7AFBB2A74BB1FB
          35B0CC30CC32AB21C08A759121CD9AF30640482987E1D5CED71AFECDD73E18FB
          FDC858651AB03875196D59BBF4D9A5833F7DE2D64DF7D2BF72456BC5C85CB409
          6BC72901CAF899734BF6BFFDEEE30F2AF1536F7DFA24A0B901E7DCC3BF78E83E
          CA5D75983B9AFFB8105040337EFE1EBEE029F6B11019F7E3A59D6CF8ED2F19DD
          FEE503C033C06C6EC09B2D2A972F809FE3C8A71778E5D5CF3879B28208088248
          16EEDB8C2B3871529C710E97F2B870F686EB4BDCBFB98B1B57D5E8EA9C02A41F
          880097CF801AA03540F9D39F0FB36AFDA3DCB37130EFA962A80755F066581A2E
          38C43921124304222738022F0E2E8F8FF2F26B3BF9E373001E6F901A2033E0E6
          3C6075C0A856E75873C75D7494BB10201B48EF0D3541CDF05ACC482848381939
          F936020722D0B8F6279C786F27D80C98A256DC90AC05A2586EC045118BFBBBC1
          A06364988EFD3B3060F6E7DB9859BD05C3503350878981053172D190436BA0A7
          DC83B8087416986740F216249EFC401CC7F4940580F8C00EDCA9F701881CB8DB
          87D2EB27219B808188A5330162A1F40220213B714003F2EAE1007203DEB21628
          5114512E09002A42062742E70269B9FF66859899224EC0246D0B8810386DA40D
          6D6D8153053418707189380A1BC9FA6DA8A4067EB58D280290792FA644136A73
          938C3746B9501F25B1268BCA2B58DE3948DF82C538570A067C1330145A5BE08B
          19208E1610091850BA6D08D60EA114C0C01C78F3D49A931C9FFE888F27FEC6B1
          4B1F50694E60181D5117D7F6DEC2BA81CDDCF4A33B83613F174C5BDB16344305
          A2CE503608E516C321993608243ACB58F528FBCEBEF12FF1DD5C9CFD0A354F86
          06758ED4F772E2E221AEEBBB850E5D093A0766A88532CE33600A6818121739D4
          3C0D3FC34C7219554F39EAA61CF71047251A499D135387F8EBA9171999D84BD3
          D78BCE16C030EA543956DFCFCDB622AF008501C967C01BE0C39088738C8CEFE5
          93F3FF60AC7A1C336549F7F5FC6CC95D0C2E5AC7D9CA71868FFD81C3E37B50F3
          5C1986A9E50694726B05D4C8874470BC74F031266A63B9808863FFE961D62CDF
          C064FD6B46CEEFC36BC2BF0D33D0048CEF9E0183BC4722F0CDD4290A04DF53CD
          AFD9F3F9EB00C1D85540CD20F10018B4B440B4985210419B462B4049F83E5055
          50CD6E414B0B5C7E4DCCE8EB8DE99D5CC674CF39FE13E8AB2CE39ABE18BC0703
          A3D5403095840AFC666800DDB981CA68581B02629802D0FED90CA3F579616F89
          87B70E80CFD40BC4044ABDB74B9569BDA6AFD7B37AE0435ED87E37B8EE743B4B
          468E826FB35F2CF135B8F87798854A3522F1548004B01850A03139D31C7EFB2F
          5D8F6CD954A5A7FB0BA89D6C15D75CA0E0AC9D190099C7556B11BBDEE967F272
          63373003F8CC407DD78133BF13AE5B70F4C4C28D9193FEA24DC53B7F3ED7AE18
          ED9178BD34556BBE337CF0F4F34015F09942047400DD40275002DCF7FC0B5EE4
          569B73C0E554BC0E783133448454304A43425C11C2D541019F869A99CDFB384D
          8D08FF655821CAFFBF8EFF09C486CC6823C62C0D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C6500496E736572745461626C6543617074696F
          6E3B5461626C653B819BCC380000044249444154785EBD56CD6B9647109F794D
          11DB436FBDF4502D4A2B5EBCF620E6506C448C08BD95DEC4064BFE05057BED41
          63FC80DED49E7A91D72F4A51F003117A085A8946FC02C583A0D1F60D49DEBCCF
          3CDDE9CEBCBFC9B379A1E460DE2CBBB33B3BF3DBD9DFCC3E4CF8C378402B7457
          A75F87BEF605B6D6825C6E5EF55A09A04AAD979AB863FEEEE73FAF508B874988
          24A9D4FAAB85B2AC635239C396BADF57AA50415FF5A4B2F5DAE76A12C9AE8584
          AAA5EE8D9B13A33B88A83B64A85ADC6A0D8FEDDCA0CE1440EEA5862C41569F36
          AE441D986CAD0A7B75BEA780CD46AF5751FBFAD36D44A4BE971C00EB699652BB
          36FD5A911A7A3F99CB718C28880E48FBA84326C38EFEF7AA1C45BB6EEE031045
          5BE5F8677B6E08E114CC9943A7545C735D3201F644CC9E8803A021E7802A2DE9
          DD310C45E7F9E7461527131927A48C4C032065E7E4F6C0488F40BE4705A086E1
          308450AD101CEAC8C6F1CAC4C600EA70741DCD33237040E8F9AB39BAFF74D637
          A277E37A62515174DEB2617968230FC44220822C6AAD618F00470ED0E6F51FD3
          0F290BF68F6C4812C29F855C317EF9E319EDFBFA3315F30445BEB05E1F9DBCF4
          88C64636AAF93E2728847E76AE4B877FFD8B6EAB462C3C626CEFABF30AA5AB36
          24306AE167C3C308B9040EB98E0A0EAA094037D899A0A43D50140655B099BC66
          8BE05E901D18A02317B5855C85018E068CA03A9D3AB8E6C0EA9041360618CCA5
          2E92108B97A75ED18BD70B402B3A2F24E1F4A77E7F1CD91CF21E4C3F7E612693
          331621C9B265514142D68D235B3F89798A719692F327B4FF9BCF73AE1193843B
          F2284D5E9CA11F777D99647024F66F3B8B74E8ECDD9203C1690C57798F626187
          32D65416EC85F37CFA681D003005A48124C8386336DB9CD940D564F38FBD2AC3
          2D8A54CC82F816805848E20124AA2D0AF144DCAF962074D4A140CAC0011FE8C6
          DF6EBDA437FF74491A0473C73A7FE2D2C3151E24104EE726CE4F671D3157FE9D
          909707448084BEFDEA532316D046F4C72F3FA4033B3765A7312A8168C7DAD334
          3EBAD9E6FCDA60F35DAA8407CFDC599984B1C8C03CC808F421948D3541D50B6B
          5CEC2B0158D8CB321B5E3289805476D0EE27ACE3FAC0259F2B9F6394CA321318
          AF214291A3640E7D4CB5EBFA39556EDA669D2D49A83AA7AF3EA3CE62D5A87246
          203BCD64AA723A8EC4C3876A1626DAF7705ACB3F44CA00966948F4FDF0FAAC18
          AE404C410793171FA42AF785913016192236F9E8B97B34BE674BA39A22CA6F3B
          5D3A7466AA04A05AC4E10BC7179C035C7E2344124AFC7A7293D4383938590000
          3922B1E1C45F3D340650D386D378EC0697C4A740427070B6B3883B2DD346A3A3
          5F3428C51120AAA1E67A033CC8CD705E7918D6A4F6D1BE2337DA436B3FDC9ED3
          CD534F1A24A34685444FB6C765B0DF7AE6BEDC9DFFFB56FBA7DD7B9330CB06E2
          83D4D6A5B65601394106F5FF6B6EB04E2FB5F9D43AA92DF8420B0D1B0634ACAF
          46C71E6D0322EC616166DBF45E7EB5FBFD177C170DC095E30801000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000024744558745469746C6500496E736572744571756174696F6E436170
          74696F6E3B466F726D756C613B6E88C6260000062849444154785EED574B6F1B
          5514B6C733633BF63C1F7662CFCBF6E0387112E7E5A476E2BC9AE6D1A4696855
          E823B4250276B0801D8B4A209680D402BB560224764520C4BA51BAAF68F90190
          FC82F61F5CBE337128AD0995DA059B583A1AE9DCF3F8EE39DF39378930C6FE57
          3906700CA0F3170411CBAA4654D58F2A8A1BD5F5200ADDBFDA457C1F8AB9C87F
          FFE6C88E62445F6848C9C2C4A6CBA9A61F530C2F66187E0C3A2E9BCD46C98612
          13304D2B726D21FD9131E91C12D3F5520C7E5CA45AED04A21A1E2587A1C3AD6E
          BC35617B0377A7E7CEB2B5CD6B6C72EAF41F389F40008E6C4CD3E114D3E18BE5
          B18BD03F201074438AF1BC909E922F2CBFF1A03A347D19008494E5C77009B27F
          1680A278DCD2DAA5C9D31B575977BE97F50F4D3757D6B7EEE1CB707E57CD1462
          4AC689A13242DEADDE86EE31E412253812806D8700FC60E4F2C9E5371FF70F4D
          7DA1596EDC34BD5824F2B41261BF75DD8B2DAD5DFE7179FD0A738B354A5A857C
          0E61908F65C3E615C3156AA37377DABA866C14052A6DBA3BE0242907C9735466
          240DBF522EC725712E1B0571787C616B6EF13CF38AB52F25DD8BC31E20220720
          A8BC8AE58A8B2B17EF2DAE5E642403C333EBAAEE2714DD15C1095ED35C6176F1
          DC95423042C9EFE8961F57554F403051D10B71CD741332EC55CB89CB862FD24D
          4954CB1335AD04F19268EBCEC4D42AF95F4D236E249BE590DE8F4A6621566F2C
          B385A50BA13885413222B96D181E2F5B4594DE89CF2E9EFFD3C81449BFA52371
          4FBEB2D29C3DC35A0B9BAC35BFC9C09DD06F6874EE4650A91FC660E08E281B4E
          7CA2B17CADD15A676E61680F6053E96C2916562064B3E9C567165EDF993D798E
          D97E18E88C6639229CC160976FCCAC6DC1F93068CE340B3CF4026CA79B33671E
          43D840ADC5FC60F83CCE55C80EE4062A97400C9E08F85AA5EE4E3457591BDC75
          D9B2C51080249539D9F2C5A9D98D1D94E9F026EB69CDE153201FD08A8DD6DA4F
          632796D801F9FC248884DE77A3BF7EBC7F70EADA244A4BC187C7E77F81CD2794
          1CED819DC36384B954AAC0C34F1A9B3CF58480E2FC165A9BFCBB02AAE98927A6
          4FEF9C68AD31B03C042099F91000CE12F5E6CAC391FA49D2EF513F41B8709CBA
          4C8FD72CAF6B74F2D42E82B3BEC1A9D00622A96A41F031214436B2875FBA3636
          BF5FAD8593F548B50AA9A700AC421C3CD8A9375658CEE90F5B209945210300BA
          5E4822F81E7A1B06D775BF4B96ED0316E7729820570C7AEB9B603A1B1E9BA716
          DED74C5F465CA13D6E51B2879F84DBEF57069A1467DF305CA93D0501478C1DA9
          2FFE3C3AB1C87AEC3E32D8780AC04D22F85EB5D67A0600CD3A25A0448AE5CB08
          7E1FD3C32A030DB2FB105392B42C8BFB2780BE81E63E71A01380E6C671C36F51
          222CA24A1B405E005369F92407865B0FB1CD0E5B90A29252604A00A0A291096A
          5E69F851DF60932109CB7BD57D45F71480136DDBA63DC1C34F29F74FEEB739F6
          3BAA4E00A83F15EC7D3789DE7C87448715D84C69769C00608412B8D54D0AAE5B
          85274426908B981D23262BBA9386FD439C9DC2ED7E28F74DB272DF04CBE67B3F
          037F60EB0986618BF0534BBDE34F323D658AFF0D48481CA007A8C063E1A49164
          97D05720B63FB82D696EC8E2B4E1C58BC1E875A0A7A0E4EC1BD09178A5DA1082
          EEF6D895EF35C3CDE0E653A5F238C35B110A927D4489A88D58F1417BCB92BC03
          F0C9088D886678BDA1B253EE00B99084A07C1212ED6189907E5BB3C25BBFFF9C
          FDA747C4F940551DD9F6AAEF99DD41D87F8CB686EA0A6105306ABC6AF909B421
          A5A164384C63D375E1F111E931692FA3046EB08D45C3CC6CB08BD5ABE055ECA2
          8D068E48002461E7A7E80B9D8A738DBE92E5C8D0A761AFA31ABFB601BD8B559C
          C2ED894784819ED95E8E980A7291F078A062393C2678D3314663512211164B2A
          9B2BDF2212E999E2393C50286D49C419F18107D8F00B7F013A22B080F6D21B21
          99D9D28576F2AF1147A1F3BF1F23285F28346E44268C6BDAC8966E6252E8393E
          0B0071BC27E1A83D6B8FE0603F01D0ACE2DBEDE45FC15F411CF854B90E002F12
          548A4B59BEA0285E8A7639E4B703000177C41F24F43427C80EB20D32CAF01749
          1F267FA95FB51AA5325362122A7BD8A6CE5F94F4744E2048E027C0FFA5927706
          47354828C99101DB2070E3B66DA4C3F6D540405ED5F6F81F9363007F017389E5
          45F01897410000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001C744558745469746C6500496E736572745461626C654F6643617074
          696F6E733B4ED7E32C0000061449444154785E95977F8C555711C73FE7ED5B90
          DDAEBB2D3636F5C78AEE3E28A16A4B6B858574D14A21310DB4BB2C9456AC56A9
          06ADA5FC5A439A54FDA7AD12D11A85ADFD91402CBB2668A3141B0571D5A2AD52
          A4298525D552FD07B50A74DFBE77DFBD33BD9C9C9BC97DBAEE7A5F26734EEECD
          99EFCC7C67E6BCA2AA620F38E7C89640017041306DEB71F60224412BE33F14EB
          F639E3DB7F32F273572874AB020A8A661ACDED4155BDA010096CED99D504D480
          64E313C75412254E84249587EFBA7A420000055CA1FB0B4BDFCBFFFBDCB7E704
          3BF69F2AAF5DD2D10C440FADB93259FDE0AF15E0A2E6B74C3A022ECB4EE217CE
          A20040E6795899F25ECE7E670BEB77FCEE67DBD65E772310EDDEB4C083886399
          008089337EE4450CA581097B0D00DE3FE3624459107FF7D967BEF5B9794B806A
          0A225EB3EDB04E1E000A755ED63B4CE08345036251DEDAD4C89CF7B491E88CAE
          E4E1DFEEFFCEBAF94B81CA13EB3F1CC839E9089877DF7CE4C700A82892115015
          FF1350045547D25402A0696A9159EF6EE5A6AE195DF1F6E1FD3BEE5EE8410031
          20130210C9E75B4459D47515207EAD0180E78880A288C0D09172E08E07C1CC77
          A420E6BF6FFECCBD2F9D5DBF7CF625403954884C8684B9521349A8546B011080
          01C95236BD49F9CCB79FF365272224A25E5494CF6E7FF6F59D77CF6BCDFAC4FF
          4E810860CC97709008080AA2080682D00BE6B51739DBF6066363657EFF8717F9
          F4EAA5C4714C548B1978FA384023E0264E81450000EF4DA22422A109A9352131
          22A242F345ADA9B4D076C9193A4A25508863E16D47634287651200827F0A0E10
          5544C56B548306C9BC47434774A82680FFDED218CEB0163F41231221DF744490
          20DEE32C02182004D485F7F8BC07E34664B0D9324119661936F449A2FE102360
          7E2E84E8E43C0EB8904056C04D3205817C60240C034501D4008012305954C486
          14590A45F2009C73E30348B42E7FC2F0E117103B1455F31C30405884C47A7888
          1C6E3C0E38B07B8040AE0CFBBFB8CA3C045B6716CD30A2A098B8AC69695D043E
          BF7719BEBC3461A0E7A7EE13BB16EF1E1E3C72EF9F9FFA7BD23AADA1EE60C2C1
          5615D894C4D2EBC25E2144589D221744C903A844118FF6ED73D9BE5A8B56B62F
          B8B4BBD85AB867CEBB5A3CB8ECA087868EA038CB3D8E8DBD1F64E85723DCB2B0
          83A1E153F42CEC64E8D0497AAEEF4CBFFF232AB0A16F6E362AD1A48E84A9F1A2
          D52553CAD531BEBC62ED6503AD833FD8FBC2D7B9B6F33EA64E6D415D03B77D74
          56FD644455BD7185A0D51B5760CDC7AE4015E38917C97360F9CEF9B54492705D
          8AA9542A4C9B5AE4A6EB3FC0D1975FE353DFBF994D4B1E48E7FB553CFECC7134
          378B358DC0D50C1E1AF146877E7992DE54A7FB54977874FF4B28B071C55C2000
          90BA088C45151EBC6D03B5A4964A956A5CA11297194BA5BDBD99B6B646EE7CFC
          1686FB8F73FB0D250AAE80915011488D7780D725143C08545973E36C0C2BA179
          D503A85488E22AAF9EFF53AA23AAA94471CDEB5A12331ABD41AD1C23AA69044E
          84B66C9790CD2BE7B2E7E0087DDD25062F44E0823E788215DD3379ECE91701D8
          D8772D81A6886A3E05A3E7CBDCFE403F92F897141A60DDEA1BBCF1E78EBEC2E9
          53113BEFD8C3942953F8E4E22BC0B95C9D03A9B1CEA04B28A95E341351B863C9
          1C8B964DCD7C049EBFFF2F4D4046C4E68E7BA6FF4DA369FC70DF412E2F2EE0C9
          755FA3B9653A5A28A6393D1AD81FCC0BF4DF7A0D4F1E3849DF474AEC3970C21B
          1F3CF032BD8B66F1C8BE6380B279D575802331121A00A002B84C9258D3ABD78F
          FEF1FAF1D1AF7EE92B9BB7BFFDD2CB381F290EC79695D79837D6F552A325AF7B
          53E39E13A97105B6ACFA90F5031C7E4A0A7900ED775DAC9A889E1E38EB80A856
          899FFAE72FCA5BC65E89E5D8E9517A8A4588E21CF1940C8017DB935FA87D13C2
          2FFF198157BFF72FEC21FAEBC0B995400330FDCCBFAB38E7B0833567506C9D2B
          4D056B583980C69FFF360BD4FECFD10824A16488A204B51E0FDE2B0310228CE4
          C770A816975D58CC8AD9A1FECFA986E92840A53C7AEE37777EE350979075B3E0
          9D289219B66B597E44E7DE5BF42AE5B38781F2F8D7728BC4E8AEAD1F5F06842A
          B1DA353DC9B5492D183F176C681E401E44158881F37689CCCB04C618DF394BC1
          9B3E276CE9AB5EFF5F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500496E736572745461626C654F6646696775
          7265733B5461626C653B79E28B5E0000050149444154785EED975D885DD515C7
          7F6B9F7333773E632799E683342A362312D4922869415B881824F1216688A0B6
          15C487800F824F1A50D4F6C97E3CF820015F5444349041689B3E584CE2474C08
          8264624C4C4C268E89662699C9DC9B3B77EE9DB3D76A719F0F86EB258DB4F8D0
          FE61B1CEFEEF7DF9FF596BEDC33D6266FC9070C0FFB6811840444821796E8BD6
          FDAB386B508499158269B82CDA1B6ACFB5E50B2890A4E1018D0990FBD62CEDDE
          7AFBB2A74BB1FB35B0CC30CC32AB21C08A759121CD9AF30640482987E1D5CED7
          1AFECDD73E18FBFDC858651AB03875196D59BBF4D9A5833F7DE2D64DF7D2BF72
          456BC5C85CB4096BC72901CAF899734BF6BFFDEEE30F2AF1536F7DFA24A0B901
          E7DCC3BF78E83ECA5D75983B9AFFB8105040337EFE1EBEE029F6B11019F7E3A5
          9D6CF8ED2F19DDFEE503C033C06C6EC09B2D2A972F809FE3C8A71778E5D5CF38
          79B2820808824816EEDB8C2B3871529C710E97F2B870F686EB4BDCBFB98B1B57
          D5E8EA9C02A41F880097CF801AA03540F9D39F0FB36AFDA3DCB37130EFA962A8
          0755F066581A2E38C43921124304222738022F0E2E8F8FF2F26B3BF9E373001E
          6F901A2033E0E63C6075C0A856E75873C75D7494BB10201B48EF0D3541CDF05A
          CC482848381939F936020722D0B8F6279C786F27D80C98A256DC90AC05A2586E
          C045118BFBBBC1A06364988EFD3B3060F6E7DB9859BD05C35033508789810531
          72D190436BA0A7DC83B8087416986740F216249EFC401CC7F4940580F8C00EDC
          A9F701881CB8DB87D2EB27219B808188A5330162A1F40220213B714003F2EAE1
          007203DEB216285114512E09002A42062742E70269B9FF66859899224EC0246D
          0B8810386DA40D6D6D8153053418707189380A1BC9FA6DA8A4067EB58D280290
          792FA644136A73938C3746B9501F25B1268BCA2B58DE3948DF82C538570A067C
          1330145A5BE08B19208E1610091850BA6D08D60EA114C0C01C78F3D49A931C9F
          FE888F27FEC6B14B1F50694E60181D5117D7F6DEC2BA81CDDCF4A33B83613F17
          4C5BDB16344305A2CE503608E516C321993608243ACB58F528FBCEBEF12FF1DD
          5C9CFD0A354F8606758ED4F772E2E221AEEBBB850E5D093A0766A88532CE3360
          0A6818121739D43C0D3FC34C7219554F39EAA61CF71047251A499D135387F8EB
          A9171999D84BD3D78BCE16C030EA543956DFCFCDB622AF008501C967C01BE0C3
          9088738C8CEFE593F3FF60AC7A1C336549F7F5FC6CC95D0C2E5AC7D9CA71868F
          FD81C3E37B50F35C1986A9E50694726B05D4C8874470BC74F031266A63B98088
          63FFE961D62CDFC064FD6B46CEEFC36BC2BF0D33D0048CEF9E0183BC4722F0CD
          D4290A04DF53CDAFD9F3F9EB00C1D85540CD20F10018B4B440B4985210419B46
          2B4049F83E505550CD6E414B0B5C7E4DCCE8EB8DE99D5CC674CF39FE13E8AB2C
          E39ABE18BC0703A3D5403095840AFC666800DDB981CA68581B02629802D0FED9
          0CA3F579616F8987B70E80CFD40BC4044ABDB74B9569BDA6AFD7B37AE0435ED8
          7E37B8EE743B4B468E826FB35F2CF135B8F87798854A3522F1548004B01850A0
          3139D31C7EFB2F5D8F6CD954A5A7FB0BA89D6C15D75CA0E0AC9D190099C7556B
          11BBDEE967F27263373003F8CC407DD78133BF13AE5B70F4C4C28D9193FEA24D
          C53B7F3ED7AE18ED9178BD34556BBE337CF0F4F34015F09942047400DD402750
          02DCF7FC0B5EE4569B73C0E554BC0E783133448454304A43425C11C2D541019F
          869A99CDFB384D8D08FF655821CAFFBF8EFF09C486CC6823C62C0D0000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C6500496E736572745461626C6543617074696F
          6E3B5461626C653B819BCC380000044249444154785EBD56CD6B9647109F794D
          11DB436FBDF4502D4A2B5EBCF620E6506C448C08BD95DEC4064BFE05057BED41
          63FC80DED49E7A91D72F4A51F003117A085A8946FC02C583A0D1F60D49DEBCCF
          3CDDE9CEBCBFC9B379A1E460DE2CBBB33B3BF3DBD9DFCC3E4CF8C378402B7457
          A75F87BEF605B6D6825C6E5EF55A09A04AAD979AB863FEEEE73FAF508B874988
          24A9D4FAAB85B2AC635239C396BADF57AA50415FF5A4B2F5DAE76A12C9AE8584
          AAA5EE8D9B13A33B88A83B64A85ADC6A0D8FEDDCA0CE1440EEA5862C41569F36
          AE441D986CAD0A7B75BEA780CD46AF5751FBFAD36D44A4BE971C00EB699652BB
          36FD5A911A7A3F99CB718C28880E48FBA84326C38EFEF7AA1C45BB6EEE031045
          5BE5F8677B6E08E114CC9943A7545C735D3201F644CC9E8803A021E7802A2DE9
          DD310C45E7F9E7461527131927A48C4C032065E7E4F6C0488F40BE4705A086E1
          308450AD101CEAC8C6F1CAC4C600EA70741DCD33237040E8F9AB39BAFF74D637
          A277E37A62515174DEB2617968230FC44220822C6AAD618F00470ED0E6F51FD3
          0F290BF68F6C4812C29F855C317EF9E319EDFBFA3315F30445BEB05E1F9DBCF4
          88C64636AAF93E2728847E76AE4B877FFD8B6EAB462C3C626CEFABF30AA5AB36
          24306AE167C3C308B9040EB98E0A0EAA094037D899A0A43D50140655B099BC66
          8BE05E901D18A02317B5855C85018E068CA03A9D3AB8E6C0EA9041360618CCA5
          2E92108B97A75ED18BD70B402B3A2F24E1F4A77E7F1CD91CF21E4C3F7E612693
          331621C9B265514142D68D235B3F89798A719692F327B4FF9BCF73AE1193843B
          F2284D5E9CA11F777D99647024F66F3B8B74E8ECDD9203C1690C57798F626187
          32D65416EC85F37CFA681D003005A48124C8386336DB9CD940D564F38FBD2AC3
          2D8A54CC82F816805848E20124AA2D0AF144DCAF962074D4A140CAC0011FE8C6
          DF6EBDA437FF74491A0473C73A7FE2D2C3151E24104EE726CE4F671D3157FE9D
          909707448084BEFDEA532316D046F4C72F3FA4033B3765A7312A8168C7DAD334
          3EBAD9E6FCDA60F35DAA8407CFDC599984B1C8C03CC808F421948D3541D50B6B
          5CEC2B0158D8CB321B5E3289805476D0EE27ACE3FAC0259F2B9F6394CA321318
          AF214291A3640E7D4CB5EBFA39556EDA669D2D49A83AA7AF3EA3CE62D5A87246
          203BCD64AA723A8EC4C3876A1626DAF7705ACB3F44CA00966948F4FDF0FAAC18
          AE404C410793171FA42AF785913016192236F9E8B97B34BE674BA39A22CA6F3B
          5D3A7466AA04A05AC4E10BC7179C035C7E2344124AFC7A7293D4383938590000
          3922B1E1C45F3D340650D386D378EC0697C4A740427070B6B3883B2DD346A3A3
          5F3428C51120AAA1E67A033CC8CD705E7918D6A4F6D1BE2337DA436B3FDC9ED3
          CD534F1A24A34685444FB6C765B0DF7AE6BEDC9DFFFB56FBA7DD7B9330CB06E2
          83D4D6A5B65601394106F5FF6B6EB04E2FB5F9D43AA92DF8420B0D1B0634ACAF
          46C71E6D0322EC616166DBF45E7EB5FBFD177C170DC095E30801000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000025744558745469746C6500496E736572745461626C654F6645717561
          74696F6E733B466F726D756C613B0BD2BE0C0000062849444154785EED574B6F
          1B5514B6C733633BF63C1F7662CFCBF6E0387112E7E5A476E2BC9AE6D1A46968
          55E823B4250276B0801D8B4A209680D402BB560224764520C4BA51BAAF68F901
          90FC82F61F5CBE337128AD0995DA059B583A1AE9DCF3F8EE39DF39378930C6FE
          573906700CA0F3170411CBAA4654D58F2A8A1BD5F5200ADDBFDA457C1F8AB9C8
          7FFFE6C88E62445F6848C9C2C4A6CBA9A61F530C2F66187E0C3A2E9BCD46C986
          1213304D2B726D21FD9131E91C12D3F5520C7E5CA45AED04A21A1E2587A1C3AD
          6EBC35617B0377A7E7CEB2B5CD6B6C72EAF41F389F40008E6C4CD3E114D3E18B
          E5B18BD03F201074438AF1BC909E922F2CBFF1A03A347D19008494E5C77009B2
          7F1680A278DCD2DAA5C9D31B575977BE97F50F4D3757D6B7EEE1CB707E57CD14
          624AC689A13242DEADDE86EE31E412253812806D8700FC60E4F2C9E5371FF70F
          4D7DA1596EDC34BD5824F2B41261BF75DD8B2DAD5DFE7179FD0A738B354A5A85
          7C0E61908F65C3E615C3156AA37377DABA866C14052A6DBA3BE0242907C97354
          66240DBF522EC725712E1B0571787C616B6EF13CF38AB52F25DD8BC31E202207
          20A8BC8AE58A8B2B17EF2DAE5E642403C333EBAAEE2714DD15C1095ED35C6176
          F1DC95423042C9EFE8961F57554F403051D10B71CD741332EC55CB89CB862FD2
          4D4954CB1335AD04F19268EBCEC4D42AF95F4D236E249BE590DE8F4A6621566F
          2CB385A50BA13885413222B96D181E2F5B4594DE89CF2E9EFFD3C81449BFA523
          714FBEB2D29C3DC35A0B9BAC35BFC9C09DD06F6874EE4650A91FC660E08E281B
          4E7CA2B17CADD15A676E61680F6053E96C2916562064B3E9C567165EDF993D79
          8ED97E18E88C6639229CC160976FCCAC6DC1F93068CE340B3CF4026CA79B3367
          1E43D840ADC5FC60F83CCE55C80EE4062A97400C9E08F85AA5EE4E3457591BDC
          75D9B2C51080249539D9F2C5A9D98D1D94E9F026EB69CDE153201FD08A8DD6DA
          4F632796D801F9FC248884DE77A3BF7EBC7F70EADA244A4BC187C7E77F81CD27
          941CED819DC36384B954AAC0C34F1A9B3CF58480E2FC165A9BFCBB02AAE98927
          A64FEF9C68AD31B03C042099F91000CE12F5E6CAC391FA49D2EF513F41B8709C
          BA4C8FD72CAF6B74F2D42E82B3BEC1A9D00622A96A41F031214436B2875FBA36
          36BF5FAD8593F548B50AA9A700AC421C3CD8A9375658CEE90F5B209945210300
          BA5E4822F81E7A1B06D775BF4B96ED0316E7729820570C7AEB9B603A1B1E9BA7
          16DED74C5F465CA13D6E51B2879F84DBEF57069A1467DF305CA93D0501478C1D
          A92FFE3C3AB1C87AEC3E32D8780AC04D22F85EB5D67A0600CD3A25A0448AE5CB
          087E1FD3C32A030DB2FB105392B42C8BFB2780BE81E63E71A01380E6C671C36F
          51222CA24A1B405E005369F92407865B0FB1CD0E5B90A29252604A00A0A29109
          6A5E69F851DF60932109CB7BD57D45F71480136DDBA63DC1C34F29F74FEEB739
          F63BAA4E00A83F15EC7D3789DE7C87448715D84C69769C00608412B8D54D0AAE
          5B85274426908B981D23262BBA9386FD439C9DC2ED7E28F74DB272DF04CBE67B
          3F037F60EB0986618BF0534BBDE34F323D658AFF0D48481CA007A8C063E1A491
          6497D05720B63FB82D696EC8E2B4E1C58BC1E875A0A7A0E4EC1BD09178A5DA10
          82EEF6D895EF35C3CDE0E653A5F238C35B110A927D4489A88D58F1417BCB92BC
          03F0C9088D886678BDA1B253EE00B99084A07C1212ED6189907E5BB3C25BBFFF
          9CFDA747C4F940551DD9F6AAEF99DD41D87F8CB686EA0A6105306ABC6AF909B4
          21A5A164384C63D375E1F111E931692FA3046EB08D45C3CC6CB08BD5ABE055EC
          A28D068E48002461E7A7E80B9D8A738DBE92E5C8D0A761AFA31ABFB601BD8B55
          9CC2ED894784819ED95E8E980A7291F078A062393C2678D3314663512211164B
          2A9B2BDF2212E999E2393C50286D49C419F18107D8F00B7F013A22B080F6D21B
          2199D9D28576F2AF1147A1F3BF1F23285F28346E44268C6BDAC8966E6252E839
          3E0B0071BC27E1A83D6B8FE0603F01D0ACE2DBEDE45FC15F411CF854B90E002F
          12548A4B59BEA0285E8A7639E4B703000177C41F24F43427C80EB20D32CAF017
          491F267FA95FB51AA5325362122A7BD8A6CE5F94F4744E2048E027C0FFA59277
          0647354828C99101DB2070E3B66DA4C3F6D540405ED5F6F81F9363007F017389
          E545F01897410000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000022744558745469746C65005570646174655461626C654F66436F6E74
          656E74733B5461626C653BEFA5E0D80000066049444154785EAD556D4C546716
          7EEE0C30887C7E08E1C3CE0C08588B187575AB8B20D866B75F29AE0B1AED0FD3
          48B5BA6BCC6677FF34B1FD51DB18373159714D637F58FC84C5CD66A3A55D0564
          0035525B2B2532C8F02953B58080C88773EF7BFADEF70EF776A6B061624F72F2
          DCF7BC77E63DCF73CE7BAE4444F8A9955577D510A85084B9134847F259732712
          0E029E32604A86C4188131065961600A0954B81FD9B91C3359907F801115EE7D
          350D81DAFE0A2752A383C871FBBE043F0B9F1F2A704E094C0BA288074967AFEF
          EBEF10608060B92435021DEED15AF7C078210C832C33CC66A69F274098C99870
          5F2303450239F618BCBE2AA52021665EAD4F020A0B400110E0C7D29F30F47E30
          14931921322C18D9B66855BD82FF5CBB573B38322994602C60050C76472F3A85
          FFF3621BC736945DBC23E2E7AF7603A4621718474556447C74FC29E2A22C786D
          754A417478489D284F200A30E65BEF8D6B520D05B42D71E0EFD7DA0015D7D845
          D82393B77780D06033B252A2F0EA2A5AEFBC374C37DA06A5409B50BF6A554DBD
          7A69C84B64CFEBCFE37C632736E5DAF97E1736FD260D8B92E6A3F44833000662
          84490F83C2483C478505898E9E5B028CF9F4C2A635CFC14F008D393F941171B4
          83034A7F9B8EA1A101F43C1816E5080F21C8B28C2713533871A91DC08B739D03
          BE2D5ED9D8A3E54EC620FAD31B2FA0AAD1C515484755430736ADE358EFC21F38
          963BBED7DE79331B1C780232E25B29801E20A697420250926BD5BB5DA01092F8
          E16258892488F83A2F8D2350B28EA3A49310314634F75BC098EF3D3FEBE8C239
          47A7F00A870B159C2901F8177F6644A8ACEF00081CF91AC0992B1D385B7757EF
          2106128D1D4013320D85AB8CECFADA6025988B6071FE228E24E4576DCBFA45DE
          8A19C38B02528048C36905EA5D9C95EA1D38C399A90EA88C35ACA86B078384CA
          2B2A6BC2E95A274ED638B54349BB058C05320714F2B9865BF2D30D758CB8604E
          441C3304DD92F5192A606B41160804A62B2ACA1A80023E239933AA69C7A95AEE
          2A5E760A27D29873C0B93A27402AB60BD6272FB7F177DA7C8697E22D6B0073C0
          28FAB6C24CFD06485A89B46ECF57E324904DAF41786B0347AD97C4BB3253F858
          5E08899B0813FD7F0514BF515CCED994D73805B3CF2EDDE16BA7D8397B452821
          1420AF72F747DDB8D0F2190E7CB10345652B85EFFFEF76D4DF3D09FBAE583B00
          93A499C0D9BF05867A9CD162FF2FA360BE5930064ABC356F75DF44D537C731A6
          F42327D38E8DF9DB101A148C9E1FFA71ABF31A1253623F653BE9C39E4F1E5DB7
          ED8D79AFFB1F8F3E00E0099AE56BA8CB7EE27F7738924F17FEB57805CEF16E2F
          29CC12EB07236E547D7D1C43535D70DDEFC377DDED581013890C6B02D2162EC0
          EA65A9089F1F54D024B79AB19B9C52304A017C345302FA956144A2E67F2B596E
          24245074383F3C531F5CF5CECFE151C6916FDD8A3FE7E58ADF5E77D5E3466F35
          824DC348489C445C0260B3C6E7655817E635B57C2BCA3F630914A299AE9D9180
          B1A9DBC0D8436C59B90F8B13734092496C15455AB128EE799C6E3E8C60B30791
          D166A459A36161B168BC7D6BF604C8AF090DF7B59F7E5FADF199589CB40C4233
          D2543299CD5892BA0259AE5CB4DDBB805FC75B21CF63E8E9EB9F6621CDAC8042
          021F4FC820E30B28D0684263BDF113ED3A1EFAF22FC61EF7E2E57F44D1D277D0
          37E482C91284E12105CEEFDD2026DE993D0122F6C5EEA3577F0746605A40FF11
          D313D146ECCBBF5A28E265EFEE17AC06C78651DDECC0E4900DD6D0221CAEFE18
          0DDD15A27E8E5BDA0D9388A65556664CA06CCFDA57304793B8BDF07E12936519
          2D834D181B9F44D740277A3B9BF79DDA73EC98976588A8B7E6C129DB23DFEA3F
          F1B81CC03844F0D94C22104627C63032368EB0B0102CB627213929FE6DEB8E98
          17BDF3E9895A51F5C0A4AD11D9A63053BA1A23225928F0AC098080EAAF1AF0F0
          493F5E5ABD0CB6E438584CF3724C301FC52E9C9CE8F35C22225812CDAF58D392
          B77577BAFFADF7F42F910011A1FE66F3B1A888F94B3ABB47F223A264C4C68460
          E5525B76426CCCC1BB497D079942B02626A3ABC77D7DA2C7A32620FF52099032
          C50EB41FFAE180AD54C96D642DA6D8D8B075160B302FD482C8F048ACC8C8C4E0
          C8183A5CBDCDF79DC37F1FAA9DB80340F16110B8194DE8ED235231B938322338
          CEBCD96491362008D944046592DAE451A561B2D753F9C831D90A608A88D81C12
          0838194C77BAE190BC8DE8510F1683D68FF18F07E1DA2717A788520000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C6500496E73657274446174614669656C643BD5
          C9E5430000053E49444154785ECD976D8C94D515C77F77E6999965DFD817D85D
          16289B6E848098148B8AAC5854028AC6979288212A0DDB34080AEA073F48D24F
          FA41A288890414132060136D036D0C2141E97EA0343429948210140288BABC18
          24B0BBECECCC73CFD1DCDC9B273B447620247A27FF9C73EF4CE6FF3FFF7BEE73
          F344AACACF3922E0972DC0183368FA533F2B732D4003CA75C05C0D28232F9D07
          720B14001BF92A8714B0FC8383BB3066A67AFD8A822A8A0B7E0D97A85F4721C9
          15F1312E16FEB5F1A5E90F02F9680872E3911698B9FA0F93001C4188C6984128
          F539242157943FBDBBEF1E200B0C44D7204E25918C1407C8E7F38808D65A44C4
          21954A91C964C8E5724451144404077CEE451B45C5BB0769C044007B373CF33B
          1559292277AA5AD4FFB98A45AC202AE8953FB367AD206251ABA83A1144B56319
          7DC702C64EECA0AAAACA89B88ADC5BA01804C51B688200C4DAADAD9366368C9A
          70372A4590D845B5C510911F41C81D0A60634E1F3DC0F14FDFA4AF723CFBBB2F
          10455944155150519C7885C573C681A813816A108017506C68B9652AB6EF5B8A
          57CE8158D4415027C642920738379A9A1B3971B887E139CBB3335A19366C1818
          03A15255C4F88841BD38201504186B2DB6D04FDC7BC693246421C76D8705F5E4
          3646D512C7056C1C63631B3A1EE3C91D3F06970BCE19F72971C0D838EEEE3EFA
          EFD6114DC3416247E462522DB818A3D62261AE31674E9E44A32ACE5F8EF9EC9F
          DF10652AC055A95855BF0DCA92B9BFF6E45CDD03977AF28BE3FFED5A7F42A5D9
          35A0B3575007C555ACEAE7AED2D0A88E7CE41D8B98D0D6C4B429F5EE44A801C4
          B828A2A0BE7A174119EC803EB162E70EA0CDCFD309A86C5F5DB76FD9D4A71B37
          1FF884F51D7F77C72D8E630A8522E9749A5C4505B5B535D4D4D4908E9CA1A142
          47AEEA80A84109424A04001610202E796C0E50A95ADD50C940AE8753C563DC3B
          6E16713166C9B685BC7CD73B747D11934EF7634CDEDB6B101544405D5447BAF4
          9176440165B000FF3453208004A4B587FDC72E7E3D7BF4880C7FFD720B60B8B5
          7E0AFF39BF9B37F62C61DDBCCDD4D737928A224CA830B11B17C33A2E4729E901
          AFC8A52537615CF85E76EC3FFDF9EC712D63B8604EF2FA7F5FE1EC85EF1081C6
          5119FEF89705AC7D720B8D234692EF9A43F16C1762C12AC402B18574F37D343C
          B4D33B54BA05D71E71F7AADE4DF2FC89C9F9C9AD9D0DB5C2FDBF69A725379B91
          D5AD64D359DE3AB58EA51F2D6463E7560ADD5D8CEA544AC7C1B70DF5AA49F54A
          D90254FAB5EFCCDB7DAF8D5FF168A7693AC43F0E1F410B47B8DC7F895FB565A8
          CDDFC6AAA7DE279BCD516899C3C9B586A280B5DE0181DC983908040710CA7700
          4034A6B7ADEEF7AC9CFF2A85810267CF9DE3E10F3BA8B9389935F337D1D4DC4A
          2A4A53F3C076AAFD5E27472E9987DE4074700F0C0103682A9DA5AEAE1EC01DB7
          DFB64CE3C58ED56CFBFF00E6D05788F867BF486844B716F2171E9F903C1D297F
          0B024CA80294AAEA1A362CFA1BB95C05D36FCF226862AF02835C506F63C2ACAA
          372020EC9DE2AEDCEAEA5AC29A8A26D5F9447C9ED89F905F8F0326110008A801
          51C39AEDC75D75E2C8F1D683842BD8D91FC429CBE74D84E4145C670F380802E0
          099F9BDBEE1D489ACB81104BD71408B9DCC01648E8E8C4462921958414122125
          73504CF9EF0541B40003059B903B8B25345A72E1A860BDD8700F04512E4FBAD1
          021A9543EEB8FB7B772F7B6FDF8CC44E174BAA0C7340BD5F6A48BE533030D07B
          712FD007D86B0AF0179500FD1FAF98F51850E15D4B015CE7CB4A400C5C012E0F
          2520408022D003F405821B7C5D0BAE5A0F194A40B05BBC13869B37B4FC539008
          516EF2F80169A32E5B1F3EAD880000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000018744558745469746C650053686F77416C6C4669656C64436F646573
          3B37841BC00000051149444154785EC5575D88555514FEF6B9F73A7AF54E0F45
          FE164E9645A9D0432F423105DA8FFD4844F4A6514498E00C62F5E4932F9A1848
          3645646F82842058D14B194541960A49586A09BE8C04427FE3CC3D67EFB5FB36
          6BEF73B8D73BD7D182CEF0B1D65E7B667FDFF9D69A3D738DF71EFFE753EF5534
          C6F42A7717AFF77B7C009F4A401F9808FCEBA870842584F057536C46DE3FF539
          8C19864A2EE577ACBD8259AA976B0941629D6B5BB4BFDABF65F55A0039213CA3
          A703A60286F76CBCBB83B01BACF7AA556D643420185F1A3B7E7F74BDA866A037
          711620625114454944A47CBA758720936568D41B68341A2147DCAA11A65B80F9
          7AFF86E17A667602729F1781105E76E2D8078E045C3B81D69DC6544B6B22D5C1
          BA63AC0DB470E7A3AF63C95DAB316B6016F7ABB65F21A05EF38717AF5A37B868
          C59A7028E0130A22901444C82DA302D2E6166B92EBBECFC39AC8C31ECE9DF80E
          A70F6FC74DA34750ABD5E0A102BA1C50CBC5BAC1F9CB56C0FE711264507221B1
          57074E9DBD84B70F9DC5BEADAB62DDE2E5DD3F62D3938BB0F2B68128C8AA90E0
          8CB558BA7C083F1FFF16795E6060366BBE8F03C15A991C87313611103EBEB1E0
          AD833F616C1BC96D3BEE09C64686F0E2AE33786FF4567587C4E22C0015EF5C9B
          4160730B11007D04C0D960E5140402324662AF078B436129CA4D82CC2A4014D6
          3216ED441C67220713D6730641213A9C0C7D1C20812D26D92BD341EC89BD1F9E
          83750584808F56BB420FA7803D87C631F2548B35D621006BA070C9092F70142F
          327D0B4C80130BE35D9C3D3D2059BDF9E985D8B0E312E02695440408D1AB035B
          1EBF016273D622B10B64C90D816394786125BE1E0EC437F33AEDB1FF2A86B540
          2485922461703997CC03B970DFB948AC2D34CE6A7BB916B2FBBE33E01CF927C2
          AE124811C92508C3E8FA1BF1DC8E3338F0DA12ADB3F6ECAE8B7875FD5C72B521
          A23313C4C23A46815060BA8D45AE26A0B07F5D387DAA75CBF23B62FF2D219010
          29EEDEA10C07B62E20D91410051C1C69412408D776C1128C6ABDC7AFBF8C236B
          CC4696D5604C36AD004FB8DF7E9FD8604F9C7CE7CCF1EF6F56F53A3422A26F43
          844399681E50DA4A30743FA6D6C082E16D9833B709AA8037A6D70CA880E7DF38
          F631E310518BF5791B777F7161F7C69551888A08D1053B899813A24E68AE7B30
          A8D7EB6836E7A239675EB70329FAD402210AC2C57583C81A034DB45A2D78409D
          00625EFE1152315C064A11ADA53BC784AF2CA31335E5EB730F203951A98380BD
          ABD56B8140EF72753A46B5BFE60D263E5B037BF128C401CE035608E6F5F90F62
          F0914F036714D66306B831EDBF63A56346E5EDFBE43C24BDA930B2B6F98965B0
          E347B1F0852B87E087370D06955CCF12DFFB1E9806FA83A51060D3634B49DA59
          0FC08287717ECCA010C0B9E800316BF15A72A61629FAB520A154499A8A045EC9
          11E10D24EE371FFA08B3B5580A93A85A2A6674B83D03074CFA3513E5C7DE23E7
          203EFD062849BAE3535D6B8153D7A3CFDCD3E12680EC1A0444F1C2688057D6DD
          8ECA158D823257A0B33D89D6A37262A63390A174C00052F5526B4A561155A86A
          1A51D6A5249FE110EA50214BBDD5285D04D2312BA5135DEB009304F89908F042
          96820AC456E4DA7B51E2E490378C02177B2F42546DD1BC9A463B130784C8F3F6
          C4979BDF3DF1007CE5003476BDA5464DE3147853EDE9B588FCF29FDF0098225C
          C7A4773F864FBC8E9BC440146AAEF1E35A9557B7EC65E26F628ABCD2CF014F14
          F19B2F770D8EB9CE0FA73E3A6B35EFE3408713FFF1E3BB08FF0154BED059DA6C
          F9E80000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001A744558745469746C650053686F77416C6C4669656C64526573756C
          74733BACB1BEA60000052949444154785EC5574D8C544510FE7ADE0C0303BB27
          05E4276103A241E0E68544B39AF0A3C4E8C18B273080022E3F6B62E2C93B4240
          F9092C8978F1AC24A8F122188D46511691288A8B183CAC784270817DAFBBCA7A
          5DDDEF65E76586454DECCD97AAAE9EDDFAEAABEACE8E6166FC9FAB8EEA823106
          D5854AF01F7E8673C82A09748109C0BFB60A27B00212F09D189B9D6F9D3F0963
          FAA1940BFA13F6AC00E29E8B3DE586421C0C9B8D7F766CC78A5500527FC28C7A
          C7AA15FD7BD72F29135697C6ABB1B28D62FD8FD8170E9F7924A89E1533D02171
          2D0791459665319147F4ABFB1271995A0D8D7A038D46C3FBE12811987602E6F3
          63EBFAEB35B30BA08799082460DA85D36F3B3013C81134EED4C658DC0B621C12
          776293660F1E78E255CC7B7005A634A780A96C7B85403DE1E37397AFED9DB374
          A5FFA3E088CC5BA6CCE3F03B27B1F9B915E25B80C6C12E139BEA39A7F95E90FA
          B391E1AF71E1F86BB867F0049224014309B429A0929375BDB3162E85FDF32CC0
          A4C9C98159E0F7D657F8ED0FBFC9677E04CB1E4AD4FB4AC82A1147606BB16071
          1F7E3AF315D23443732A81B98B02440E746B14C6D890D80A183B5EFF122476D3
          D37D58DA37DDFB5B760DAB7D660E96F53571EEE2751C78F7AA277A74FB6C004A
          DEB97131049B5A1001E84200CE6600DD068180A262C6BEC1E59ED0C09E733830
          B8D8C70EBDBCC857FCE2EE4B38B2731E0EBC771543DB66FAC44CA98738E02CF7
          0919E9708AE9A28075B0D92D248901137B29BF1FB986A3C77F0D030690CBD4B7
          B7B5D7CC12139F18E03C66F5F65B0B50064A054C70D681A8730B4C0E4716865D
          983DFD034392FC8DED0B7D3BB6EDBD04B85BE2E747E3E2FB16699520904D01FD
          3DBD1DEC8A1BE2C47A8E410145458130449C8589666C5C7B2FB6EDFBB9604F5E
          52C6E6FDA3DE6E59D3048B025B5737B0E9E00D9F60682383495B689CD5F6FAEB
          C9E0AE33E01CC88EF953669DE625F30DDEDC3A53895981547E704B4F50C816F1
          E5731D8E6C206D9DCB00EB00FF4EA488AF31D19D0864F6C6950BE77BE62FBEDF
          27D70404CAAD7340BC5EC8F721393990005E21ABBD678D33317EB9348A5A632A
          6AB504C6D43A126081FBE3DAD83A3B7CF6C8C533DFCC54F6417622AD86B54271
          D4F7885509189565920666F7BF8269D35B10166063AA3310093CBFFBF40700FA
          044988CF58BFE7932B7BD62F2B881093B78ED89389BE0B4F34A9AF6730A8D7EB
          68B5A6A3356D465501B51C5B40824CE0C2BE01887ACD167A7A7AC0802A01049F
          D56756320CBD09A4B1F8E698FC472A3749A2F9BABC03884A94EC4090DE25F5C4
          274812B50C04ABF2276C30F6F14AD8DF4F811CE018B0A473589FF5187AD77CE4
          732A31AE1260E68EFF8E158A19A577E8C3CBA058A96F0930F0D442D8D153B86F
          437508BEDB67D0ABC9057A1DAA33D079E92F164480AD4F2EF049CBB802B357E3
          F261838CF4C258524C99BB0AC45C2A87EE2D882858AACC91006B7204B00185F3
          D6E3EF63AA060B6214585399196D6ADF510113AF19697EEC3F3102E278033449
          7C25635C630043F783CF3E34414D00B5BB2010C8935803BCB476114A55D4120A
          5F8189ED896919A512939D811A0A050C40652F358648468112654C2D8A384D76
          0614CC3A54A8C5AAD4525B029A302B45E56DFB1C2612E0C910606246E61CC896
          C9B5F7A489A3426C7C752EF49E4850B645FD721AED641420419A8E8F7D3A3034
          FC28B854006ADBAA54AB6E980236E5993E8B486F5EFF02C06D819B30E9EDCBC8
          0ACF714BD00C44CD5D7E5D2BFDF295BD29F82B27C1CCD44D011664E1C337DB06
          C7FCC32FA71C94B5EA7750A0A2C47FBCB82DE1DF9A32C511242909C100000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000015744558745469746C6500566965774D6572676564446174613BB21C
          48B3000005E749444154785E9D57696C5455183DF74DA79D292D690BDD581C0C
          42B1A2B80430084516A161894622FED060C00DFE20FE7089898931C628893126
          90864810098921D512943D0D43CB920A4E5A0A6D40682D6DE9A294E974BACCBC
          37EF5EBF3B732733CC0ABDC9E9BDEFFDB8E77CE73BF7BE291342207A30C6EE7B
          44E2C152BE8B870823962F2329413C90661DFF1C213709BA9AEF53A01C88AB5E
          FB606F732D185B26947E11FC235419EA9DDA5F0882A28AAC05B89A03867E7EFF
          878B2A01F8086634674692EA3541E43F6C998B87184A50449C9287F776B91603
          C824F8D5FE227D0B84787872C5AA9A2DFD85E0CA3DC09228275A320142B0F193
          2B0BE41E1C728ECB45FA10C664053FD7F721DC3B4EB308F79B0B7A96805AF320
          E1D6D50EC897024C2988214F930116DB80B72A4A5255ADC2A8C2C7D40C06A1C4
          C5B89DD601595D5ACB074FAD80BFF70CB829A30D043881D69925CB51B2BE36E4
          14080FE9001239B0CFD92B4505C109EFAE9806DF9D33287D3B5E68F3F70C4508
          93C7678031965680167B0A362F2B8D091A6029ADC43F550C06074C533940B04F
          5FADC422940D8C270342A4ED7741E571144812A54A3A73CF3D88C6E6161CD9B3
          1F9D5D77C0B9096E6663DDC6CDEF8F8C0E1F741EAD6E03C00922750B62C87FAC
          EDA649259E4B5B39CDA173CE836B60D4D387BB1D5751FE58311656ACC44B0545
          B05A1886077AD0E8727DEE74D63DB7EEF52DDF1E3DB4EF4258447201CA42C58F
          77564E8D3CABAA59F848AACA0FD55C40F9A279289A351FF64C0D5956019B06E4
          3B1C985C5882BC82FC35D5D5BFA1A2F2D51DF5276BDA01F0642D80E022DA724A
          FC4AE809126F2D5986C2B5A7E16ABA86EC9C5C14CF21728B069B9521D3C24804
          606502033AC7BC0515B8DDD9B5A6EEECD98B00BE23E8C943187DA502F0A7487C
          81C971A2BE091B5F7B05B60C2297C404AB458041C0EB17E871FB905F9001C7AC
          B9D0EACEAD02B08B1048DA022E22E472D292243E6BDA6A98D22DDD8D5CEAB94D
          13C8CC00AC1A401AE0D581A1518EBE211DCCC6612F7240B3684F02B011C65284
          30EA130B207FD571E421FA68A900720E2360C00C70B25C208BC8A5034C93E494
          0D221FD54D0C8E0490A373180470C10058092CF931E45121A4C5EE131D7296C9
          57A90FE5C4243B02019DBC9C00EF409F0C1C551FB2DD13241718238CFA4DE886
          80BBBB1D3E9FEFEF07B909950049086CAD9C2105A82F5CE46314303974BF1FA7
          AC73D0E472E1D1190EF8C88D11496C702227110689E41C7E53A0BDD5859191A1
          060006816BA98E210F912B624884C879089CC80DC3C0B0D7838CB6D368A9AFC1
          59A7135E1F2711B262220D4887044827BAFF3A89C686F3977A3BDBFF00E04B74
          0C594400241B040BB56CF7B15BEA120A8931CD006D1C80DF3B80A9CD3B312D1F
          289F948BBAEA3DE8E8ECC22394F66C0A9CAEF3A0EDC32D2EB81AEA1BFFEBEDDA
          7BFB566B4B32014A840497FC8022DCB6662642AE20D8775D3770B7BB0DCDFBBF
          C1ACC5CF60D47B0F43579A505630136E72C479EC30DC1E0F0437290F1AEE765D
          AFFEB7A7F3979ECEB6CB003C0423F54DC855D2A15A10D20253F69C6CBFD7DF83
          6B073EC6C2B52FC3F07BD073FD0A46E850956DD886DCFC49B24524520FBAB6F3
          D7563455575501B8491820F8537D0B840407E0D7CD0839074C6EC2A0CA07DD03
          B8F6D347787AE972685A00DDCD97D1DDD18FE20D5F62E2E452D827E480314D3A
          156C59769EE444BFAA5C27F064A74028F8F5B1E173DBF7B89644DF869CFA6EF8
          C630BB6B1FD62F98026BA6891B176AE17275E062E126B04B06ACCD9D60162B58
          D8390604F45199FA4155398FFBE5130D750D6711F209A584E90407610661CE9B
          F3276D3FB4E379D17AE45351F3C98BE28B1585378B732C9B00BC40788AF038A1
          2C0A33D53E13089607F93DC05540BC8491702895B0EC67A7D8DF985A361B0D87
          7FC78DF6FED3557FBABF1AF2F36E0043892A548E9A0A3CE1794F341863D1C712
          6167D6954F7C6289C3BEFB6AAFEFC0C1264FAD0A955789E6E9FF6F492F209920
          A62CB411EC6A439FAADAFC7A695E1CF96775837184E905A417A12940D92A1412
          8EF10B482F0482867AC678C7FFEF89DEE20EF292410000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000017744558745469746C65005370656C6C436865636B3B5370656C6C3B
          53FC46020000089C49444154785ECD976954544716C70BCC28884B20718B202D
          3BDDD03474B38A0828880AB2EF62D446D088823BB8206626C6C4A3C6050405A1
          15501951E28AA8B8A01844657141059400A2A0ED86D02EE09DAAC72BF33A643E
          38F361A6CEF99D5BE7F5EDF7FFD7AD5B058D00E07FCAFF87014B2729B2729E8D
          F050C1F4C1A892B9C4753662E75F60FE4622FDCC0A7F87E4B2CFFBB151856F13
          8C3E6B100316636732E2D62E52BD715E8B41E434AB918AD9B9454F35B79F0662
          D7D9E03039F6B9A92470313524B00F8EE25B07FF2EB00D051349E06DF2CC581C
          801272AB59AA50424E358ACFA922301ABD600C8C99CEAC54EC3433D6CE7D5EA5
          C425B2CBD8D25B4284AC5D2367091D2200CF354563A7279A5A077569EBDB0E35
          B30B99652209E8D2379F123B545B3892C79F60412A6268E98BE2B32BD1722CB8
          7C6F25C3DA821A56BC57C5FA3006840ED31079201C137E4AE418B1C1DA35EA8E
          B1D82F89245A39CF88148F8F025389CF44A17DF83123B16F959A86A696C02EEC
          8A8185D7499CA341B745DFC21BE90BBDD052D90DB4E6500D4AC4B0C2AAAC60FF
          C80D79CE2BF6575D8CDA544856AD460C30493A06365A78F50ABEB5EF542B9799
          E92662BF32F2720B87F028632B3F30B10EB88DFB040C445EA938FF2B33BBB047
          3CBE7B3231A96FEE89F4CCA7308C369B84EADE7E44B518CEAAD59C4316E82C95
          FD96B3B9A80E2E36B7C3C2F432B9646A0C8F1AE863661F1284F70FEF6510485C
          A2406013D2A535CC485B601B34D748E44D9286E999B97BE212838E9173B09943
          D82DB60283305FB0422ABAA6EEA856C188D3556B48D7E74D4DCCBBF5E4F85D39
          DCEDE886D2A71FA0A0AA1502D7161EA106FAF26D82B20C2D3C2BC9EA740CC758
          E21203CFC435C258EC1D231C13011A8386E9F3F86EAB469B4D8661A3C413744D
          C7CF37B50EEE36B0F05C3752DFD16338CF76022B484BDE77888EA166CC8EE28D
          9B4FD57657C8DF4299FC3D14B728605F5913782D3DF4D861FAF6306AA09F9ED0
          EB1E4F30712BDB20FD79661E35BAFC097B46E83984EB0A3C4057305131CA647C
          15165B423EC70C18A1E7F80F6D23D73A6DE3F13052DFB9843CA725B7740BD18E
          4BBF522A2B6D845BAFBBA0B0B113CE362B607BE17D7099BBF7C2689B40039CA7
          4E0D10C76AACB82AFB12751635B6CC5F6206D21CCE77066334490E9BABEE2E5D
          235A9C5976BFF8C14BB82A7F07F9F59DD880027E3E740B1CA5E939EA83870F61
          72E929A0236CFD7914B5AD14DDEBFCF86FE8EEC5DD4EDA6C4C1F68F82C4A714B
          C8AE7876B1A91DCE3429E0C0FD7638F1A003D61FBA090E33D2528959565C75DC
          DC7D48C940E0DFCFA2D01F8B7B5D18773B3E22DC3C9FA8E1C0111FE01D97EC99
          78A0AAA3BC5501471F7640EE9D575050DB0E3F1DBE4DC465449C56106F0B728A
          CE5536E09F749A7B74FA126877D7BCE946943B2C5C71CFD814EFC47D958AAB6D
          6F21EFDE6B90DD7C097935AF605B512D38CC4C3F459A9BAE9C6854BFFC801C67
          672B1B2042F4E84C8A9545F82CCF959297B3CF546F6351867625710DB7E88D93
          E365D7DF9561F13DD52F21BDE20564DD7C0199A5CDE03C27BB466B94D528D21B
          74315558BCEAC5073426926380BB1A97A8B4E8F8AC6BDD2BB2AE81DBBC8C656C
          83F5654AD7DEC5AD92867D60BCFDBCEDA52F2F3DEAC4C272482D97C3CE6B7290
          95B781475C9E9C671B6E49F2A8780516AE78F11E553C7F8FEC67EDE11860BBDA
          3932551A9F59DE5DF2580125F8CCAE929583E38CE4D5E414D02D618DF6B79C34
          5724DD78AEF55C433BA461D14D97DA60C3F956D859D606FE2B8F7D30755FE243
          4E0EBD1F6E60D14FC8DF23DB99B25E0634DC17E6D71DBD835F76A115D6153F81
          627C7E576696813868E35AB689D4491ECFD2C32828E944EDF11A396CB9DC0A6B
          8B5A187E296985E8AD9740E4BF613DC9674DAB5CC782946BCF7AB0F936AB7705
          4453573807269D7A937AF909FC70A605BE3FDD02A71EBE81F8F452107AAF272F
          1D3170C868DE84D8FD65FBAF3D86E42B4F21F16433C33A9CBB3AEF0E48C27690
          4B6928B7E9CA9FBD4384AB4FFF401291F9973D30D0D2272924F487331FB6E1D5
          249D7CC4081CAB6F87F85D97C1C463CD36A7C85D07B79EBC07BBCA9FC28A638D
          0C2B8F37C14F458DE0149DFD62387FA20577DFCBB018E537425B0F9269BB7B19
          50654BF6A53868D36AE92F25F073710BAC38DE080958A4001FAF84F44BB0F9F8
          5DC8AE7C0ECB7F6D8065BF36621AE0C7D3CDE0B7FA0418BBC74793EFB38B5121
          4257DADE62D8D8DA4329C62A8C6B40D9443FCC57E2D06D69D1C965F07D61132C
          2B6880A505BFC33F6FBF823D15CF60C9E10686C59895471B617EC60D10066C29
          624BDF8F5E6244887299CB93B748149AA16CC05E9ACB35A18E1966199C726C7E
          46052E71232CCA6F8085871FC0C243F510978FE3414C7E3D241E7900F852793D
          5CE069478E312D3D11B9C4A18441F1096170BAB201C9B77B09DC73DEBFBF96AE
          AE247CD7D5B8BDD5B8020F617E5E1DC41CACC3B11E62F03CE14803F82516E2D2
          AF5E85F3B568D733228F316CBC486951A00B2C66813B950D584DDB8391911271
          4D0CD0D4B513584FCF6C5E72E01E23FCDDFE3A987BA016161CC431A312CCFCB6
          5CC779DF60D469D75311CA79C2A31ECE31B113F103FE6440149689F7258B9688
          7B32068D1005BB3844E6BC5A8485E7E4DE873939F761717E3D29FDBB1142FFF1
          2487361E4708D3F92916139A3BD159029E9BF8EE5036601EBC1B990765905251
          A8095256CD9136D200C7E803EF16ECAF85185C059FA422309CB8660B693C7A55
          1301CAD9BFA2A987334D1DC8C82745D980206017E2FBEF644BD589619C5313FD
          305FEB8C8D9B376E41FEC7D9BBABC13C30A5596DF037FADCFF8C59212CC0A583
          C0CC4F3374301878252B1B30F14FEBC12F0D19FB125249E49E0C35CC509E6BE2
          F7C2D0DD30DA79C977E4CCD3BB5EE09F8A04FE3B1013E9DC8F8D183EC12F0519
          7B2733E27A9EDB950D18F9A4B2EC6030F4A6A428996045BFE6FE956405B0208E
          7FC2D4178BE27233A253B673600D7CC650E1FE56E4FE8E44FFE1E01AF83C2394
          FF72FC0BDF07F6E4857816860000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C650050726F74656374446F63756D656E743B53
          656375726974793B9C83A6A10000061849444154785EAD967F6C95E515C73FCF
          7B6F6F5BB865AB34DB2AC3760C2B62C41912D1750982E9A8BA1F6689C36473CB
          AACC2D23994BE616B664FF6C4BE65FC4C5642CE842DCB23875062353560C1421
          E0CF455C410A525A41A096D9D2FBEBBDEFFB3EE7ACB44FEEFBB6EBE506B2D39C
          9CF33CBDB9E79CEFF79CF35CA3AA38C1180360124A0D3FBEABFE3F052C100211
          A0C99869FE57CC6FFED6FF0A98350A8828A0A82882A27A5189CF02A202893B99
          F2A5F2D93008F6FFE1E1D5DD80B864AA26E0AA306B7EF9CDE5FCBF64E3E307BE
          04D4016562A98A008A0250F02DB544011467157156A70DE3391F07780A30CC12
          6F2E0A44B44AA8D8D364705540136762AA1C8D71F0DA08185449CA5FF60EA328
          2A8E7F0411F7E52A886825A8E8F4E736ACEB40E3BF04BDB513981D9F6FAF6E4B
          62E02036097F66C51ADF39442E13019995C1537B4EA2AA153815AD542D5381A7
          CEB1AFCA43DDCB00104094CB4B409929DF59F3B924DF49345CE5495F11706828
          3A0702C6984B8E21B311D8B6FB0422B88AC5599D35F78A155B41E307772E4354
          112BA8088077454DA80ADF5DB3A4828050290F7785A8BA6096D05AD45A4ABE8F
          A2F8E5106B23378678B5134822E0A2FEE995130838DE7526EF22641B53B46433
          44E502EF1C3EC6E847E729E42626EFD37CBAA519BF9805A877F13C402E894092
          67C5F0BD3B3E8FA2A00641930061ADC52F95F9E7C17EDEEC1FE48E55D771FD92
          4E9AE63730727E8C7FBF37C8A9FD6FD1F9959E87DFDEF3DC6FFDC2440084B812
          E74E40662E9F2776BD8FAA6085C404281ECAE296468E1C3D8E91884D1BEE66EF
          C1433CBEED79CE8E9CE7AA4F36B1B47D11EBBFBA967FECAAFF9165FD82D7766C
          DDE86A8B6A23E0A8EEE95A0AA228F19CDB8B6A2D038367E89BAC74D303DDFCFE
          A997D1A0C837D67572CDA24F7172F81C2FED39C0F113C3DC76CB4D7C7066F4FE
          EBBF78CFF3EF1DD8DE0BD8B91030C93D200EF6ADBDC7E239776A45696B69E050
          FF005DB72EA3F7D5B7B07E811FF7DC4326530F782C5F369FB6C5AD6CF9F3DF19
          1AFA906B977C9691918F7A803D4050850237B7F1DC4F23E0D05051D4808D2C41
          50A66FFFEBACE858C5A6DFF5B2F1FEBB49A552186350558CE7914AA759DBB992
          27FFBA83D593F6D5D732AB800C50026C150A4852C0D69DC79064F75B65E5D266
          02BF4CBE50A4697E2323A3632C6CCEE2FB019810114144F183320BE6CF2397CF
          939DB456BD66A0012800D1DCAB58048837D9835FEEA8F8CA74026118E09F7E83
          9BBDD779E6D15EEE6D573EB1FB5B8E2A30168C42A340BD40776B2BE307B6F2F5
          F694D773DFB5B73FF2F4F11781606E0498D9847FDC39106FBE29FE2D37B72FE0
          A6A38FF2938DBFA6E1EA2F802A20A0E2A093C459B8C19D27860EA58E3CFDABCD
          C02EA038E72A5601121DBFA1BB23F1C62B6124944A45D2EF8ED3D0BA021D1F80
          30474D49D5D3B468295EA40BDD049A4BBD862E286C79F928A21ABF849165455B
          9695857190088A6749CAEE834778E2D93E1EBC77356B6FBB818A84793019FCFC
          85CAC4D5D8038A02DF5F775D050DD1E90928960A847D636871049D3889696CC1
          098F6D7B8923A77D1AF69E63EDADCB21CA03A0A5F344A3FDF8131F0398AA2F54
          920292CFAABB1015C40A22D355D9A1EDC8F00E64F45F686E98FBBA3AF84CFB72
          D6DFB90ABC343A796F8776A027B743E11C2206C054DB84AE6E18CF95A7830322
          956C88A28842BE4C930534C04BA531FE7FD08B8AE27D7C81D1D37598D28DE807
          FBD00BEF638C81741D688458AD9A800251502EF53DF4D8FEDBD571AE952DE868
          B096A05CE0175641434C2A137730B06FA088B559DE199CA0EB9A14A62E030A18
          1C82D51110A0FCE4235D5F0332899FD29EB3385B0734FDFCA7CDEF2221265D57
          A1CB00FB0EE79877551B6F0E8C61EE6A450BA7C0006A305854A9D284F12B5504
          FC445092BE4BA02C623012A25E1D262E91435B6E81ABEFC2A41BD1A88449D561
          3088B5A0EA7A00AAF600609D56130B64A248F363C7DFC866D30BDD281AD400AA
          98C1EDAE655CF606F0EA193DF5219150044240D2B31FA15A628C231282C367A3
          1F06CF6CDE6CA0452C88801590E94211315851540CE2A62812937BFB4CF033A0
          E412B82211A0FCC0B3B917809D8E12535B01085DF0BC7B0DAF5892BDE2CDB5D2
          ABDC89530BE87F01A9674B0D6DFED6F80000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500556E70726F74656374446F63756D656E74
          3B53656375726974793BE6E88DAD000007BE49444154785EA5967B7055D515C6
          7FFBE4BE7209144890E4264A40441EA3D5121E1A04C4F20A16ADAF44294E07A1
          0E958E5A6B0B1DC77F9C4E71449DFAAA9676A46285F210AC5815A7A8A0F24C94
          56810022C6241083E4719F8FB3F7EA25F778CF64BC133AD335B3669D7DCECCFD
          BEF5ADB5EE5E1E11412905A0000BF000DA710194F3CE07A41D17FE0F13110070
          C0C001F9CDB0CA59E57EFFB69389F80D4F34356D77C07C7787423517070A371D
          8E466A5F6C6BDB0624F3934091DFC475D75C0250F02D78DDB5A5ACDB71EAB565
          E515373DD3D2FCAF2565A1592302818D7555A5ACDDD3F2F7DB8A4B166EF8E6CC
          3F80940BDACBE91D11403BC9D880E425700EBC36031EF9EC00B74D19CFBA9DA7
          5EBDAFA2E2F721AF7F455D55199D0DFB5930BE8AF4FEA6B51BDF3D42FDC92822
          59398D8018937D06C488F33E1BED54EA83177E79ED1CC0003A1F017D4EF6F599
          CC6B060B5DFFCE90983C9E573E6A5D513BE11CF83EC48635FB9B98F6F8E3FC60
          FC85DC323DC8FF6A4B9FFA700AE0754A475E02999ABF7D4F79C5CDB6946FAEE9
          D74CD727FBA99B30210BAE618B3D94EA47573176C66C5481976842E78A8BE044
          C13851B281CE7082EC890240E5270002A49FCDD4FCDE8A0B57BEAECB96CFF3B7
          D0D5032E6C490FA572C19D8CBC662A85C1009665F506170105EE190441443944
          84DEE0E49D02DFE2B2B259E53EDFF26CCD9B418368E1CE8CE47F79E94552432B
          A9BC66264D1D29C2718D08B93A1B23EEB3084BE78ECE924030E260F4A180F7EE
          B2D0BCCCA86DA8AD0AD155BF0F31F4647E03A7E8CC9CEF9A30913FAE7C88F2E2
          20F3AF9F4F61B010449C6C417A3FE722F25D059452DF25707120B0A9EE5CC3D5
          EF75642FA5F22777B22993F9CD055FF7F4C2D2C91379FA81FB301757D1D8AE11
          2318BE9D02411B9D536369CD1840B08D41320E587D95207D3816BBEDE5BDCD1B
          E62961AB5DCAD455AB185E3D95A1E3C6B1EE57F773BBEF1B9EFEF028D73EF604
          93C68498766500704AE064A9B5C6B66DB43124120904433299466BFBBC4D987E
          B1EDF41BB7970CB92315287DA5E4DE87B962CE5C0ABC7EAE9C53C3176D11D6AE
          FC2DC31F7C04CFD86A36ED6D211CB7B3753706BF5711F4592462518E7FFE399D
          67CF128F84292AF4503A641089681140C0C14B0326DF14C4D79D697F0D28DD7A
          F575A707F4EF47222D140683DCB2E8761277DC48205088CFEF638AB272E3A6B5
          21164FF0F6EE4F3978E404D74DBA943123A6D2BF5F80B6331DFCE7F0099A3E38
          40F5F58BEEAF7F77D3EF12D16EE73E01403C00CE8524400230BB1B3BB8E1EAE1
          90D25896E2E55DCD8818B401A1A7C64E831906F6F370FCF809821E61C59279BC
          BFFB20CFAC7995536D67183CB03F232BCBA9FDD10CDE78C77F8FA676C09E6DAB
          970102D8AE02BD4D89887B83A0583C7324829033516831D8B6E6F089163E6EE8
          66D95D7378EAA53731C92837CDAE6658F9057CD1748A3776ECE6D8E75F72D5C4
          EFD3D4DABE706CF58F371FFA70CB3B8006242F01E310D0624014ABB71F75E7DC
          716D8441C1028E341E63E6E4D16CDF79009D8872EFA21BF1FBFC28CB62DCE822
          865F14E2D9BF6EE6E4C9162E1951415BDBD77701EF012940FA522037C38B320A
          F41200D0B626994AD2D0D0C0E5A32A58B1723BCB16CEC3E3F1F4801B512865A1
          0A3CCC9C52C59FFEF63AD3AAC7B3738F6F12E003E280F6E4B9CF550E5F4080D5
          6F1DC588AB80D1C285254152C904E1482CD37085B4B5775032A888442289B252
          182D681192C9244599EFE14824138368B10639131105EC7C0A608C0140104460
          F1AC510882FB5D48A753C49BF6E11972880D8FFE945B2B85013B1638A502A5C1
          12F01BB8C0C09CB2323A3F5A4DED70DDDAAFEE92E90FAE3FF63A90CA5F02A497
          022FBCD598CDDEE9036D34E583BC5CD7BA9205773C42207405880006C4803321
          EED930CE39779F3C38ECD0FA879F04DE0162F90918DC291061C99C51889033DB
          B689C76378BFEC24507639D2D908E930E7B5023FFDCB4762D952EC4CA0EA730A
          44B2FEFC9B4730E2CC3F82B135A5033DCC8D7682B121760AD760C7EE43FC79E3
          7B2CBE751A33AE1A47CED211503E12912E00958F8072B756F756FBD9EC4B117A
          2B108946497FDC81C4DA90EE2F50852538C61FD6FC9343CD0902EF9F66C6E4B1
          60470090F819ECF64F49749FCD61F55102D79ECB2890DBF310745A131A68F143
          93CD4A9FDC8A152C8560081528A66EE6289E7BD7A676EE24B03C487B0326DA8A
          8A9D86EF5D8631EA3C04105C839FF72C17AEA5D369229128BA1E901456810795
          F80639E708D6D92EDA9BBDA8F86548D32EA4EB384A29F078416C8C963E0990EB
          010077BD02C0ED0D93FD2149A30A7C6EFD805D8D31B42EE29313DDCCBCA800E5
          F581E40A8C91BE14705B80CE70320B0E1843CEB47D4E8124010D9834CAE3CD91
          55C0AECFC204070F637F6307AAA60C897E050A1085422342FE260404B05389D8
          7B8B9FDC395D8C8080C1E4960E31A0B54D2A1161B9512893462C2FCA4D9183CF
          4F84500DCA5388D8F19E2D5AA1305A8388D303904F010324D72C9F3D1FF0B95B
          0C961371A217287AE01783F6761CDB172CF2143BA3A8100588A04E6C75D77540
          29C0F2D3FE550BB62186B398E4550088010917147A3F530084EB9BED65A90D4F
          3E6641B1D1600C6803269B684FA6DA0862144640046CA3C2F5ADA95F03F13C04
          DCCBCEF1FC060AB0976D096F06B6398AA83EDDB5B4031EE9751B8A087D599E95
          3A0D6827132B0F41F2BFC338AE01F92F3A47851789A4079C0000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000023744558745469746C65004564697452616E67655065726D69737369
          6F6E3B53656375726974793B7B1AED18000007BE49444154785E9D966B7055D5
          15C77FFBDC476E929B00095A5E25281049283E4A0D485012310591A93AD651EB
          873A4A9DA1DAFA6875F48B5F3A9DA2ED8C43A7E3A8D88E6D75C64715AC2F8451
          231AE22B560D0402166378C41092DCDCDCF7397BAD4EC9997B0608D1F67F67CD
          5A67DF0FEBBFFF6BAD3DCB6CBCB5897110B2561E72ADBDDA8A968AD54E55DD60
          8C79CB710C61C7E1DEBFBEC7FF0B55C507614EC41DC04D9E68F47B172EAE3FBB
          FE5C4606FBE83BD23F6D6F67D7CAA1FEC11B7FB7F9936701C33898E05C030B30
          1E810716375D52555212634A5515AE17E2DFBBBB39363048C8E0645DBBA969E1
          8CADADBB8F64836498938C93BC021670010FD0D311080155D158096FBEFC0695
          9327B3E0FBCB191A1862742441229120395A88FFFA89B6E1C6FD09AC15544155
          110515198B0115F5CFC7BC5728BCF7D8DDCDAB0101ECE908584F24BB737B6B6C
          E5AA267368B0C04BCF3E4D2E57209B2F501E150A5E98961FD470C5D239FC2F58
          FFC7B6E54004C84F580211ED915C7A5EDDB296C805E56534B734D0D3DD45F2E8
          57BCF0D287C44A4A713DC1F54E2C2E8AEF15F1BD8E3912A3391405088DD7230E
          01F03CD9127608C7E293298C0EE0A8CBACEF563377FE0CD28941CEAA3F0FD053
          93AB021A7CFB67C77DD0F5066042050E1E1BFDDBF973E2B76792C31576B40FB1
          396C364972708049F152AAEB56F07CDB4192D902228A2AC53A8B6810ABB2FEF2
          05A8FF130D9A7542028FBCF679EFE3EB17BFF945C78EAB66CD8E637323889761
          CFA77BA8A95FCC956B57515159196870C22D4F8A7D8F9EAA8031E65402773CDE
          EA9C7F574DCD164D64F4CD17D1A6CB985C9AE4C0BE5EDADBF730B47C26ECFC18
          9CE9B8E2A0185414C19F0251ACD8A21AEBD7D4018A27828A0038E39660737D3F
          FDFF4A962E7BB076C39993AA6F5B3EBF3114CB94D0DEDA46E2400F76723555D7
          AF850A972DFBEFA161D64A6E6BBA8F78BC92502884A8166B6EADC5F33CAC08B9
          5C0E45C8E75DACF54EDB84E12FB70E4467B74C7DF5C7175ED9BCEABCCB102D30
          94E9A57F6E239AA861243B4256FBA80C4DE28A6997D0DB7794F54FFF941B2EF8
          03BDC31E2250591666DAA412BC7C868ECFF7D27F7480543249BC34CCB433A690
          4BC70162BEE22E20450233574CB9B369416373537D2387539D24F2BD58B5A4C8
          602379ACEB91C9E6C9A40F93297C45CE554CA9D29BD8CCCDCDBF241C8992C9E6
          78A37D171F751E60E59273A83B7B1915E531FA8F0DD3B9E700BDEF7D4CE3DA9B
          EFEA78FB1FBFCDA593AE4F02404DE343B55F88CA5C11F53B5B1061CC072F9C6F
          C1DB5A159BC19D173F8538613ABBF6235E8175D72CE79DF6CFD8D9B18BBEFE63
          544DAE60DE9C99D4D79EC5ABDBDBD8BDA7FBEFEFBFB2E976200B78801A5F1607
          307E9D622FEED83FD8B4E83B14DC20B910C4A8C1093984C351BABFFA9AA75EFD
          80FB6F59CD9F9EDA8A71335CD1DC40CDAC33F9B2B78F7F6E6F636434CD450DE7
          F1C22BEF70B867DF555D6D9BB7033940C2AAEA05A38103B0735F82AB2F9EC748
          C605356CDAB62F9873DFAC28F3CE2CE3935D7B6959BA806D3B3E460B69EE5E77
          0DD168098EE3B0A82E7E5C818D7F7E8E9E9EC3CC3F7B16FDFD476F015A8102A0
          614E85F1E7B638C337B7CC03A50805AC67C917F26CDFD1CEB9B50DDCBF611B77
          DEB49670287C3CB931E6F894442211D6342F61E35F36B3A271313BDE8F2E01A2
          7E19ECC9040C608AF91514D8B4751FA281026295657553C9E7F2A4D2192ACA4B
          E91F18E68CAA8AE3A45CCF2D2A552814985251CE682A45BCBC0CABCE147F22D2
          80379E028808008AA20AEB7E588BA204FF2BAE5B20DBFB21ABA676F1DC833771
          ED1CA574DB0D78E23F4C164441046202ABA74F27B17313D79D658F945F3FBFE9
          9E67F6BF0C14C62F017A82028F6DED1EBBBDDF07562C4BE74FA1AE730337FEE4
          37C4669C0FAA80808A2F9D107C0B0BFDEF64CF67355DCF3CF030B01DC88C4F40
          008277FD67AB6B51A508CFF3C86633843A12C4A69F8B26BAC11DE51B112AA162
          E63C1C4FABFDE933E312100D145085475FDF8BF86FBCA2886769983B8985E904
          8807993E02C05BED5D3CF17C2BEBAE5DC1A5172DA4083705264A2E3552ECB7F1
          9A102D125014B875D53928272A904AA771D3C368A61F4D7E89299D8A0F363EF9
          1A5D8772C4DEF99A4B97D683970240B3C7F00676914B0E15734D5082008FBCBE
          37D8F350AC6B699857C90219BB95EDD98253360DCA666062D55CDF52CB236F7B
          5C77F91270C2E8C02748FA0826F3354C5A8488F906022801E0E7C7978B00AEEB
          924AA5B116D0024E288CC90DA2FF35146768848143114C7611DAFB2E3AF205C6
          180847403DC4EA840410D593F63D45D50010F4862056415D4C281AD40F78B73B
          83B5713E3D90A4657608138982160B8CE8440A042D4062343F961C10A108EBFD
          57813C310B888B09478A640DF0EEEE51CAAA6AF8A87B18B3663A9A3E08065083
          C1A2CA699B5001AF90CBB4AE7B7847938A828220C1A22960AD472197E23E3118
          7151278209AEC8678F36C08C35987029EA6531A1080683580BAA7E0FC0780A08
          907FF2BE553F02A2C11683E37B7C1F01E2BFFAC5940F86F77F58160F57FBA368
          5003A8620E6C09D675C018C02961E0E0613C2103B8808CAB0090017241523829
          0E01A31D87BCDB0BCF3DFC7B07AAC582085801B1A00A22062B8A8A411454C113
          33DA71A4702F9005C4A86AB0A97E5B042AC480123F36135A00D74F9E020A3E81
          6F858068A08613D8290439CD99F86601FD0F3905B9341BE78C80000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000053549444154785EB5957B4C53571CC75717B28D506DCB2DA8C1A95131
          214EF0BD6C7F287B245343742E3A1F0CD03ADC90A89BE886056A7779284AC507
          088AF860554185296CE8321C38662D828210DF031FD3888080149457BE3BBF9B
          9BA60C6935176FF2C939BFC739DFEFBD3DBDF70D0056FAB8643186430B376D3F
          5CB879C7110B4173CA51ADAF45005E0ABB0636E89387E9E2F66D3A9A5D80EA27
          9D3DA01CD5A8E7751918B0569B187FF65C296ED7B72323EB34749BD2089A0B39
          AA510FF5F6B7019966A5CE7FF7BE13B859FB0C6191DB316F51C8CEC143DE9D41
          D09C72544B493F01EAA535FD69C0292038A2F8EA030B76A566C2EF8BE5092C37
          82C1898CA01CD5A8877A694D7F1A7867F1B2704BE5DD662C0FD563D8F0B1E358
          CE99F1A688F3508F515E9A908DA01EEAA535FD69C0657EC03A945737824616AB
          6C7F6771AEFA5F8F4B7F1A90CF5DB81AA537EB4123C562DE418F7403B2F2F8C9
          7E3712A73DBAB57D1A5E055A436B690F29069CAE19A63CBA7F6C29DA6BCFA2BB
          F516BADB6A1C70075D963B787A3D1F35194BEA680F29069CAF6D998467F772D0
          D55CC6A86094DB877A5AAA1835A8371F04ED21C5804B559C0FDA1F64A1B3C184
          CEA64B56FE2A3881597382099A53CE86CBE8B6FC833A533A680F2906E415FC7B
          7876D788E7F7B2D0F1B8081D0D25E87C528A597383316DFA1282E694B322F434
          55E27EAE0EB487240397A2BCD076FB005A2A63D0766B1F9EFF9B87F6478598CD
          44DF9FEE4F084FA1A3EE02DA1F9F176A420F8B5BEE94E1D0C71F25A58DF5C48E
          C1EE3FF5F1B1B26FE062B8272C37F6A2C9FC3D9A4B7FC4D38A5858AEA7E2CF5F
          7662A69F06B3E72C4761DE5E764E4EA1AD3A53A8B5DE4C4757EB431484CEC66F
          E3C7E3AE568B7C3626BABBF164E2950C98C246C1529584C673DF8A84A0A97815
          9A4C61C8DEBD06C7773363177568366B855C4B793C3A1BAFA3CCB01E79DEE351
          C3C42BA74EA591E25E261C1A285E3D1C4FCB13D150B0AC1751DF0522724D208B
          3502CD257A7646AEA22476297299587544042E7A79215BA9C091491351A9D309
          F96D6E6AAB0987068A423CD05C9680BAD3FEA8CB5FD28379F30208216EFC5B8B
          F6FA2A98F9409CF4F6C6EDC8489899F871A512316A2EDDCFC5E5C3345FDFAC2B
          CCC4491F1F1844130E0D9C0D1E8227E61DCC8006B5B90B507B6A7E2FEA7E5FC1
          0EDD155CD0FB23C7C71B37A2A2503C6E1CFE183810296A0E8BE4F2494C47B950
          2E9F6C9C3841A8E74C6026D49C60C2EE7BE07490DBE3D2D84FD16032A0D1148B
          C6F3FC0BE96C7988D4D1A3714DA743213B70F90A85C061950A5B382EF907A5D2
          93468AA94E7DA963C6908893DD3761C2678396FEEACFD59F09E0608FA6EA72A4
          4D718571E448E428953825729291E1AA42929AA39162AA0B7DD1AEAAAD4CE32D
          BBDF02F1D33B82E1E9002FC694B8199F5C4EE3381C737545766F843CD5F52AD5
          36DADBD1139089269CC557AADC0E83A2930E6CCDCC2F42DAD721D8C3448EA8D5
          C8B48162CAEB954A1277A5BB7774065E16596C8A9137E61680AEB8E49FB147F3
          0D529858869B1B8C0C1A29DE6823DED7BFC01E2F148FDC96CEEFCF3E03BAE253
          0FA3A8A40214477F30DD9CCC44F7BBBB83469D42D14B5CAA0159585C12BFE768
          5E0F718A57466C4E64F561510A45A241A5EA435C9A01D9CAA8047E57464E0F71
          8A9785F124C631E4E2411B4CA3ADB85403B2A075B1BC21FD580F714D783C1685
          6A6DEF7400C3499C3B59C5251A907D191AC96F4E31F6105FBC464F450F3B772A
          22DD80D3E72B3658C50BCD15E0771EC4CCAF5619586DA0ED9DBE2E036FCF0C5A
          0B5B7C17ACB0BE541CCB4937408F57CDF010196AFBD8A51AF80F9940FAF78D94
          CE730000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C650053696D706C65566965773BA37184340000
          04A549444154785E7D57BD8B5D45143FE7716B0B714DB0B1B178314421BA9A05
          D142112C4470639EC668218A8640081865D9228104B65050B4F12B9015026F4D
          2258A8452C2C84AC1F453612B37F80B8905514D2A4C8BB679C3D1FF3E3E4A1C3
          9D7766E69C3BE7737E731F2F7FB3FA58A1F20E113F44A56C3DC46CB4D4C95613
          AAB43ECA27A7B696E474554C94097B986CD1B189EAF85AEDA3AE8E561E7F70B8
          7DDBEDB7119ACAA749E118EBA39D3186713E168E35AEA4BDD18CDDD8FC67DB85
          8B6B2BBCFCF56A79E1C9D9AC8CA0AD50560C31DF1252BA262115DE33848B4B87
          11CB5F7D4F03A828F1FCBFF2E21C0EA5116A08BA0CE44DB9A5A8659375DCE944
          D99CC3DC3CC51AF8EC0A60AEE025786E0AE14E4954DF19A8845AE3E187F5B931
          86A9006125E53582C5889CE962C8768D4B6C4AC486073FBE1499A58567873A5E
          3ABFAEA2E205B738BF43254E9CBD1A15AFBC63A31D3A3FBEF21B8998819F1F99
          4DC687E19D0F116E86C91FBDBE3BA5E3933776A70809B1BEF4D9A10722F49E2A
          2FB2C3B33A3FF0FECFD85F29F23AF0C974D1608AC063AE811A58CA105E1C8B94
          7BC13C3959446BC09959212DCC0FB1D66A23179B5034780EE7E0E9C9FDF7C240
          37487CDF4E37E429235C210C1AAF6E121ADCD07A10A149ED7D5FE9A4A749DFD3
          AB4FDC9D0DA9B4874754D8F474B1C694CFFAD297EB9AF350F7FCDC9DCDFB92AA
          1AD02BCEC0AF295F3C7385C66FEEA993E0C1B02E26A0DE8B77362FCFFEF827A1
          793A4448B6BCD6DE535FFBCDBED7281C7CEA9E861D1208C9BEA0C414762530DC
          793E49183F60A27D7B6650C19C8B94C42BBF64E029ECA02500A554D67E0CEDF1
          052654A8553A294504DC7329EAB57A6F5E3BB5481C7E66888B292122A5416761
          8E1C00AF17F7DA06E2B2CF3D3C03396C48A0D3B917B22B73E9A55D3977F19E14
          2FC2C2B8A7A3C24BBE08CEFDF41749299AF35EA479DF4F2635EFD23C9F48A513
          A1A3F33BA1D07E802F8C1475A114F8C0AAE8E4B97545387D41237047C2FEC24A
          7C1CC5551C2B2885FDEDD3BFD2F985399B700E43679BA47B1DE71BD84D5F541C
          E80539EF35E7D66FAAF7A2FC5E8AD6CF5B7B35EC002F14754BB5885EC7CE04BA
          B539B09D68DFDC0CBCCF00983C6FE1064CAA22A45869702C02C114A4CC4105F3
          333F6C78CEABC70DF126EA79782F82081E9DDF85824C471C940209A571E0D5B1
          D130D9FBE22377E5AB14E949F703800CCADF7DE53E600414190E40529792D531
          C9F8AF0C444A29A7D0621300546EB8DC0692AE59283F3EBE1ADF71E9EBB64079
          B64B393902E2FC23A72EFFE7B76647385BF9AED689A4AF596BB94688E10D0545
          B4E244E56F0634BF0B6295F39F9103EFFDA22F9FD8BFB332486F35B15C2AFDF0
          B5FBB5C20F7D7A49AB5E79C879F57CAD129C08AF44270EFD1F8C2F94979F7E14
          D6158200C0241F35AC67CF638C19201A0634FEA9F1B7B908A795863226610696
          42596AD86A1AF7917FA02DDB675DC1DD0FACC41C1F8F2D0A254574FADC715336
          FD2F0BC79E49DABE281DA4C22810F2560444BAA008A81A8CE9CA6758AE11A883
          EB7F5CFBBB412A3677BC2ED64B4A13BA2BC9D1497812E36CF9EF1B9B95F2F5AE
          B247DF5D5C3B5DD7B7C74612C513E75EDAB6B8014980EFE214D16CC807C71061
          36B91B953FFA17EE5B09176C78AA3B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C65004472616674566965773BD560E4A2000005
          8549444154785EAD564B6C954514FEE6F6A7A5D0DB5235F44158A0265602C444
          440D68252AB291C418E5B12060D4C4F8DCF858EAD6951B13125F75A161A1C605
          C60762A126100C226161D3DA120ADEC68B6D2145EEBDFFFFCF7FC69379DC9349
          DA10A27F7232DF3D3377BEF39A33A386BE39316860DE05D42618468691B2238B
          010010786468E7E147A78BD6592DB9A50AB287810516BBA516575976268C0E3E
          BC71A0B7E7A64EC86739A21F4639E8783D896031CE635241A77808AB0206A62F
          5DEEF9E1F899836AE8D009B37BDB3D311984CD2026160EBFA5ACB23AF218C17B
          258B8D5F1D8C18FA7A1825A1088BB028B96003A8401A421D87C74486B0B8A478
          CC6294C589F1540A2A0E7380467432AF3C81984B62A578EE08C51D138FC45262
          06B7612832B13E1625302A40B112B10E62B144CE7129599B3467A11C0939383A
          5DC37CBD807CE2911C0AF1904030E4E628CC9141E7B216AC5DDD61C9C578313C
          89B26EC45326C7E09DDD58EC235F64052D2468E2DFCE5D094E49A024AF28F91F
          71D138F89FC883104B28BED849D8089502A1F0FFFFE4127A8748D284C456AFBA
          BE111FFE540120F344058AC24033ABD69A3131D68CDDB8FFD13B40B60E84BC60
          248DCDF12441A73CB1A42136E399ADAB6EC8739213C582A8088C702091FE21A3
          5920EC1F0F571C266212B29E1645819C45EBC2626DA3E0F0B3DBD742794E0A24
          CA37133F3040E22E0B88B27959C439DFFB60DF8D786EC94B2A342CD9333A75FE
          1846E75AC97454704347A74186AC97852E42EEBDD7DA7B4E4E0CE1A5C737A054
          F2970F8B981183C4CEAB9003E9D74471B5EFD9D27B3DCF2D3940D609AD731E09
          8D1A37B4ABAD308690B4B4A0B56D295A7834C68537F12D53EEE9D01511937C7A
          ACE2F26CBD7792EBE035E33CC3FAF1AFB071EA50543F77B3688FA7BA07B0FACD
          F7D1D9D5E598145C0A625A65BD21C4F9DEBDB96F11CF89C9D9806F0FA0FDAFEF
          D1DAD98E85BE939712D48FFE889B5FAEB1019D4068C5E1FCCBBD2E5D2A8AC0F0
          0597672D95CFB967F21CEBC6BEC0E6EA610E6FB220F9896A0BD2F151DCBA6317
          F22C6DDEA64440E249A5EAE55E8872BEFB81D5E2B91D8937CBF1F3C8499CEED9
          8ADFEF7D01A926645EF202D06430F1CB51BC38FE96259F397B0AB73C5D88A320
          5F84A145464D222EB8A123933602A1D3A5698AB999192CEB28A3B37F151A79C6
          7A85AC00723296FCC2E9114C562E37C9E7CF4FA0870BB0C91F3A2189067224E3
          6ADF33B82654BB0DFBD8F92AAEE895686B5F865A6E50CB08D772423D2D2C3E75
          EC3046A7E6F0D4D6F59839F2A525A7279E47B9DC1562EEFA40F49890E0B07AD1
          26632B7EE4A2C6C56B0A859E4783495336AA5ED7683472F4AF6CC7D973B396FC
          F47805F733797ADF766CD8F51C3ACA654FEEEF028A4A4FC8098B77389D654CBE
          C41E419BF75C3B23B29C4563EC0F219FACCCA1BE691BD6BFFA3656F6F4700F28
          45CD2881BCA1A2BB7A457B825F272E03BE5AA5580D66FFAEE2F3FD77D99390A6
          0D264FD9F314F55ABDF9FB950FC62CF996DBDBB16EDF3BE8EBEB474B2201F712
          EE0203B9B02CB6CFA8401B3F4C0DA6FFACE1C903E368E41A693DB761AF37348F
          1932C679CEBAEA1C36DFB614AFEF7B0CFD4C9E244BA4D92929F492EC6D58113D
          CD63726F281920696D45B799656F99342B5834B2948959729DA33799C5E04019
          6F04F2254C1E15BA09118F8A500AD1AB24350A14EE5696AEAE1578ED118D7FAE
          5E83D60A066D4EC8D830B72D5D83E51D1D282F2F33B9A31037A5DB2A307AEFB3
          EFCCDE1D0FC1C8AAC888F86A8EFC709820FF813752C91E08BAE63C40FE5DF0D1
          C14328F9578B04217E9D2C442E7AB78F904B577513E28440E5E7FC3F4A0CE62B
          D539CFD924957E6D9C98284D22901A115DD44F028E2DBF387D09809A4F787AE7
          E1E3673E617D6FD88800794880854C941AA727A96A9254C9F35E9A4D00CD44B8
          757556EFFC17AEB01AD32321FCE40000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C65005072696E744C61796F7574566965773B83
          DD444C000005FC49444154785E7D975D885D5715C77FFBCCCD9D493299949098
          49FC78518AF82068DBD00F69C5820F520449702AA956447DF2454B41C4076941
          AA50EA47B1500989C1C4F8A0911AA15AA520C154C98306C40FF0415AA66DCC7C
          64CCBD77EEBD7BAFBFCC3E8BBB38143CCC66EDB367B37F6BFFCF5A7BED9BCEFC
          EACA0342DF86740C0909526AAD24000C810009E1D6C7621E082103018958433E
          51B5F94CE94D492B3DA40B0FDEF9DEE5C307968807A4EE8B12DE07E190E88773
          DEB7E46324775030EBC3EAF58DC3BFF9C39F2FA43397AEE8531FBDAB0B2368A2
          0B0E862F19B390C050CCAF8EC764F96C778233BF789926100AC8FF83CB81C9A1
          2EABD4954728E63B5CC8FB202524E8C95189D491D9FC9B9562C80906C83C2E64
          E07093EABB9CD9340DBBE6FB34A942424B75AD217A48A0848B18D68C8B57FFC3
          EACD8C0F46B085C4DDC51DB0B82BF3C97B96D9BDB01B420984B392C06815C081
          90200146B5C5C4EA66E68B0FBE9D94124DA2EE28752D249042B5ED69E1EBE7FF
          C6643A656161C1D99DAD8122707BA06EE427BC6F00153E1C67E69AD4B69466FD
          D278BA59229B914D6C0EA61433CC0A0A7A381A4A02A2D79131E228BE67C281E1
          40D3244889E4C15424CCDA56AA35649D75031EA9834C342824240C1E8455E62E
          1CD24E4B217B91C8826C500CD43DA03AD2833081B9123D43214F38E13BA8A01D
          706D17AEBC49F7C1775D3871F732C584E44DC5C9012FA873B009E8399414FC38
          76C54C8126C1C90F1D2125078B9AA253135668AD44696D48EEB0D865378B7AFE
          42D868A088FA06CE5D7E3D762EA314514A21E7C289FBDE3183E3F120A3C2CD21
          24B503D54410063C857BC5CC0B936728AD024214A3C272296C4F32391BA3ED31
          568CD168C2643C62381AB067BC977EAF0F730DE0AA74B2CED330225FB8C2F10D
          69735EB40AF837AFF28F2763FEB97A0B4C5805083398EBF5F9EE4B1B98ADF3E4
          C3B7B3B067379178DD4E4F0225F9409CD751568124A4C4CABDCBEE0055A1C170
          9B6FFEFC1F3CF5E80788270AD5579EFF23933C619E3D4154CCC1E441A81475DA
          B192813C430C8AC48F7FFF1AB918251BD932A3E1084C6F857BAA4960664E8DF4
          24392941E35D0753E126112905C5DA8556EE3DCACA7D47397ECF113E71D7320F
          DD7128F838B042933B2036376FB2B1B1C160306C9D495D191ACFFFA8EB280EA2
          6ADB7E3638FBF2BF39FDDB7FF1F4A95FF2F4F33FE34BA7FE82C94276C9776FB3
          C3E6B3CF5EE389EFFD94674F5F64381C12C50FCC88FB401494A80508A8705124
          1EBEFF5D1CBFFB0893ED013FF8C6E7589F2E8008D9670EE36928D6267D7EF2CC
          63BC7E7D93E160D0294C601E84027C01EF220B05E2AC87E934878226FEBE56F8
          D853AF504A669A8D3CD9B18552765AEBC4E5AB7F4512D33CEDA6829F84588C80
          70B0408AD3CD233FFB610F60667CE4CEF7A362F57F2AC24A21FBEE4DC6F95F5F
          F6E053EB900224F98524C0214E9121B90A054A7584EA80F339F6EEFD9C7FF172
          9B9AC5AA43E656AEDAB1F7DCE6A96DB505DC6B8105B413CD44085467CC5205E5
          5C1006C0338FDC5E61B92AD4824B7542AD553B7E637DAB93922102AE8000D4BD
          90B8F4E349E1BFC34C512BEBD668821425FBC9E75E686139332D993C9DD66F9D
          4BA6E4CC135F7EC495952B43E7F15A1025513EA33F3F4F2FBFC157CF5EAB20B9
          03A35B9BEC7729AFAF6D323AF03EBEF5E8075D52556B1EA08FFFF04FDCD8D89A
          C540D3CC015173A21ABA30288AD2DEBD7B39F9C03B198D46C86F3842DC1A2EF0
          C24BAB7CFE6BCF6126387A87CB9AE2F4933B82F8FED94BC88C83B7ED667171D1
          6172433708895DD0CC35EC5FDACFD2D212529AFDD23998335F387998C170C8FA
          8D1BFCE8AAF1D8A9AB28EE01E04509E0D30F1DE3D0DB0EB3B86F1FFB76D68AD3
          9604A4EF9C7B519FF9F887DF727D8AD7E85700F18C271336D7D6198FC7B3D30F
          13C22AA0DF9FE7C0C1432CCCCFCF5442607E2F3875E1925743045132BC134766
          171E53FABBFA1C5A5E8E9F73C8FF2290490964E1788A20484003DA7AED8D3567
          FA02C2E1C2A4802BE0DE2068318688E1E8138BF3EAEA75206DF584567EF7CAB5
          D3665A06E22798E48BAA73C5961C86450937B70A34F277EF87E3A221213432D3
          CAFF000B83FDD049674B460000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001C744558745469746C650052756C6572486F72697A6F6E74616C3B52
          756C65723B6BC8E0360000034D49444154785EED563D8B5D65107EDEF79C2B68
          9A04173B219B34FE08D1DDC2228D0A69B4B0F44FF833FC2A126D44240422164A
          1461A310885616166944081622E2C68FACF7DE73CECC38CFCC7B2EAE8D28095B
          E4CE32CC73E7EB9999772FBBC5CC7092525D1FF201B6036C0728272B28003A20
          2CC2FE3F29FF31CF5C955ABE7BFB991B5D297B6A80A9C1CC32EEB8F9F2A32A8C
          3F0AE6CC36B5E542E7CF849A7551CFF8F19E22F6E5FEEBB79FEB3B60EFC9972F
          2325C9506895D5CD4D4B95282E90889949AB1114E6960910C7608CF563D416E6
          C91258DD0D9F4C030EDE7AF3595EBF578D552087B7013D4694D82657DA86950D
          677212D22FA8F46124592874CE1F60AB5F508623F0CDE1AA6B0E064AE955993C
          C1648846066E63E983249963300F8A326F6E13B511D137C6E008F28CE9EA77D4
          E99E630B62982B8D51E3BAB537B19C52D66EB3B1D192980490F44B5E42DD5738
          580CA8286228602C6B79625DFF060C7F2659ADE89CDC5CE9A0A1986E2EA05075
          F271958454DD6C91931E3BA9E413B558691BDBE484AE5C244F8DB4C8CD4B0D1F
          9DA1669603C4B693938F47700013D9BCFBC64ADB10192B666E9639B42C611153
          5492A0CE2469883598D38F3466097BA8418F7E821CFDD89E4022E3C6D52BD8BF
          F862FE3EC8E8BACAA7B2319F08864F3EBC85172E3E0D74C789F963F1B1C3FB97
          AEE395572F24BF4538F0E602220AF9F95B0C776EA258999BE5D7CD5690C31FBC
          A8029567EC1A41471C4DBA9D73905FEF34EE0A4389AD6BDB5649BAB30B1C32C7
          400A5EC41052AAA9C2748CC637BFFA3E9B3B56CB0D502B3EFFEC1BC77DE0EB1F
          7D8DD2D520133518B1FBAFBE7700D42E6A3E78F753C0AD07DAA973B177DEF898
          BEC073A02A0780C6F674F54FECCEDBB1491013763BE71DA7BF3E7E3EC8606844
          8BBCD8997340F57C31E0CC2E8C31D37C1E646D397D96457FFB168842D603D4E8
          34A81864B298501A56C79137299B84959118616590F04F6E653DC5F5A651A0C3
          144403ED6A8CFEE37A04B0B980955BAF3D75B080ECB3C11FCB11A71EE9A1C42B
          C77D0F53C53D2F7A74D103EAFE35FD1D61E2454792C8796CC68363AF057386D6
          C78CFEC094E5A45FBC74EDEEF305C029D745BB53C1BFC87DCA51D7C175BDF973
          1CFAE0E49FBDAD0D61497C7262D54E56B6FF946E07D80E80BF00493026EF57BA
          B5470000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001A744558745469746C650052756C6572566572746963616C3B52756C
          65723BD62932050000037149444154785EAD974D8B5C4518859F533D09518882
          086E24A03FC24D4483901045D48D1F0BF1631601FF833FC0A5328B60228C1918
          8C8C1B8984388E882482E046C842086232A30322666698494CBAEFADF7186E17
          05BDD02CA62ED47DDF6ABA79CE7B8A3AD073B6F9AF479280746DE1E85AFCB37B
          CC06DB383CD4BA82A14618C2F4D9DF3CF5C1AF2F021DE0FF63CC71FF272574EC
          89773EC6CE380208E41E7260F7E00C0E1C3DB8E7EA27EF1F0746400F18D89700
          61109077360600D1E19C71E9890077F4E30E6242195865B15F01D806F2001FD6
          00CF0394C8103D97CE7E88F174AADE54F83E05A808C0CE15C6D0573876E6E4FC
          7BF8D0A3B8BBCDD5CF4F57400B07143644AE76DB5D1132852BFA61DF6FAFD3FF
          7D8D88760E00E028AFC853789DBCE7D299050C2063838051E7B60E600AB0C073
          079E4EFDFCFC29D2E1C786CFC6377F43043F5FF8AAB103360C56679C3B880E9C
          6B8D9D75626F93BCB7034A380700CD057800F6B89CB928477167878B2BAB18D5
          5BD052801C860275EE5099DCEE517797B8FD172FBCFC347EE87194E6F86965A5
          750E5002A7C0E97164C863F2DE1F484082BCB5014A3868EC80994E9BBB9A7ECA
          99D8DD44112071E18BCB452D1C687E0DEB15EC2126103D796F13E5314A239078
          E9D567F1E123A0C48FCBE79B3920408E7A04903BE2D626EAC7A054BF25896EEB
          064973D8CD1D30440FFD84BCF73BCA134048E2CB952B58C2180AF760B8751483
          F21D62779D942738252061C42BAF3F437AE449A444DF07A4C4E5C5E5D6516CE2
          D69F101D569AF516E3EDF54154EE0248E0681FC5282304A25483002510AC2CAD
          55C041689D03060B2404400215317858AFBD759CB8174468C47767979A3A40B8
          8024C0A018403220312D26B636B0841BE7806C434D7AD58E2A28717E71151B00
          0E69862DC0FBCF01C01202CA1B543460DE78F7780DA2B5D3E75A3A501418343B
          19629693B76E20256C9AE74075519A55B0BCF82D54A001F140525B0730482E70
          01B5F2E6FC73E85E1081C839406275E15CE35B10A591102A73563BF0F6754422
          7220ABF9FF0219034616A870ADEA82104B67560163C38373A3B60E6053C6A642
          25A85BF3F6A913E4878F20C4C58F3E6D2AC036146A9DBE345590657CF33A56AA
          B201EF578081FE6E977FB8F2D9D747C38173C6617204CE8163BAB75DFB89D3F7
          C0B8858000C627167E39091C0046B301836A9DFDCDA40888FB89F817F71B6BE2
          B20AE5620000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000013744558745469746C65005A6F6F6D206F75743B5A6F6F6D75612DE6
          0000090349444154785EAD96097055D519C77FF7BEF7F2923CB2872418421642
          488000216C0691680CC2B02A8BB69DDA6AA76AAD38552953970A16A72E0547A7
          058A6BA12C82DA225025618909C1C42064819040123081A8D91F49DE72DF7BF7
          9E3EAFEF499475A6FD66BEF9CEB9E7CEFDFFCEFDBEF3CD91B871BBDEBBE29A8B
          E2CACBC66B2D4A5EF30FAFE06280B0867F7205A5759B4AB89AC9C0B5C4E5152B
          3784FDEDDD838BDFD87664EB9BDBCB2ADED856F6D5C6AD65DD1B369756ACDB54
          FCE19A0D9FFCFCB1156B63011320FBA1079A4755E13ABF47F7D9BFDA06A00BE7
          CD5A6A5EBFB964D93B3B2BDA4A2A9A44736BB770385DC26F76874B7F5654D620
          366E29EDFDCBFA8F57CE5EF0CB483F0820F9BFBB76E3013D5EC90702E0177FEA
          4F6FC7FE7D4B69497179A3B0D9BF1375BB3561F702F4DA1461ED738A8BFD8A77
          CDED7DAEEA60074AEBC59A8D85B50F3FF14A06103010E2E575FBAE0670590AA4
          3FFE795374526AC6E119378F987EEB94E1988C32A79A3A59B7A59CDFBDB08FA5
          CBDEE7674FFE9BE75E2F66CB9E5ACEB65EC4E9D2983E2995D9B96346A58DCC2A
          FECD936B3300A3BF70D56BA4401E98F3DCFC45A69821493BA64F4C19919E1283
          43F1B06577358F3DBF9743B5766C414349183F95F83193E833C5F1D9693BABD7
          9751F4790B36C54DC2D02866E68E1A3C243E75FBDC450F47FB6BC2EDF65C1BC0
          5F70F3173FF4E0E81143723346C4D2DBA7B0FCC58FD9B6AF81471F98C96BCB72
          78F6DE912C9C14497888094B58286171F1840D1BC1DED25636BE578353514988
          8F262B3331634CD6AD2BFCF5E0F1A8D73DDBD2838FBD183E36EBE6FA5F2C991A
          63321978F98D123EAFB3F2EECA39186409C5ADE1740BEC2E8D5EBB46E1C95E6C
          4E152F3BB204B6F60B64A586322F2F190312EBDFDDEFAEFAA264EC875BD73601
          9EABF5097F9EA4E4D4CC852387C7C45882CD54D57FC381CF5A58F9C43C9FB8D0
          C51D2E4D1F6B08D2E2CCD4B63A917DA72E213991F2AA3A72B286101E6A66CCC8
          78537B47FAFDC02A40FD7465EE55010024817467F2B068149787C2D246221212
          488FB7F8C4351C5E777A841E156F0C0D36E8056A90247406596248622C9F9F6C
          63D6B4448627C751F499310F580D48A9A30DF8ADB156BDAC08254D13E36E8A0D
          C7E952A9AAFB06CBE028149FA07DA0B8AAE152052E4D1010206134E38D201B21
          362E9CFA2FADC8B24478D82084467A64747CC0B5DAB8F1D221E0A6A040137D76
          3B9DFD7612420671BACD494244008B1F7807213C685E47D34052119A40481A9A
          A6F1E8B30F21CB106231E3ED0F3A80906424B0A4A4650FEAEE6CED1DBAF4A074
          61679EB82A80DBE54608F0681AB2D1A08B949CEB634E70189AEC227D5C1ADE77
          50DC1E3DBADC5E77B9BCD143FAB0209A3B5D18026454838610121E55E0F6A820
          49C61BF903DF76B31E9B5D095535888B0941F5B8B02A26F6D45DE49917EE23E3
          A660DC2A3855953E4520C96094F5FCE30D582C324E4521222C1055D37038151C
          76BBBBE154F945403CFF5A8138D1574966C87EAA829732DEBEF3878DC8E5566A
          CFB776E91FCC1E1D8FC366D5F11C689CE8B0B1ABB69BFD8D56CA5AFA39D3EDE0
          9C55E15C8F42B3D5454BAF8B508B91F62E2B192951FAEEDBDAAD288AD270B1A7
          CD8DCF2AFAB238D1978FD5388C9A41F70C0440389D8EC293A7CF6332C8CCC84E
          C265ED44482AC8020C2019D181649340360A7D2E994036437888016495B3CDED
          4C1D3504B7C743FD992FB1DBFA8B00151003210034C10F019AEA8FBF5776F4B4
          5D682A111633F99393B07D7D1EA349D28584013008304A08A30E843150227C90
          81A040998ACA267232E308B704D06375505E714AFDFA42E3B61F0300043BCE32
          DEB6C30F8000B4C2DD1BBB7B7AACAF1C28AEC4E351599C3B8A9448335D679B08
          4025C024810CC80293771CEC158DB218F1B8158A4AEB08354BCC9F3A9CDE7E85
          4F4B8ED1D1DE565C51B2B5C1272E846FCB93075533D9FDAF2B5E48B4EAA3857F
          DD5F547DAAB9F92BACBD761E5F3295F913133957534F5F5B3B16C9455C98D92B
          6CC2657770AAFE3C878A6A99911EC7B27913F49D575637525AFA059AA665658C
          9F930A9800C3AA27664913838F93195A8029C88231D0EB660B123A9EF0DF808C
          79731F494D484A2FFDC9D2DB23870D8B272A32987EA78B43D5CDD4B574D2D2D1
          A7378DC49870462546919B994044B099B62E1B35279BD8B2E53FCC9F359ED4D4
          1436BC53D0D9507774FEB123EF9D009C80FA6D2F387B2600214020F003F8BB91
          0C1873E73C92113978E8CEE939E3D2A6E564111E164C44581081662346830CE8
          FD0297A2EA8DA7B3AB8FC203E51C2E3D86E6515872F76CEEFF692EC76ABEE4D5
          75BBED3DE78AEED87F68F7F7108756DD29043AC16500FE0BA77154567E4452DA
          9495212121F74F189F11989A9A404AF2502483040240D0D87481FAFA7354549C
          A0BBAB731FB2694AF6C44911AD5F7DC39C3B2662B1981817D74ECBAEB55D7BBF
          B8B0E0F5C2A61A1F84A7E0E93C81F8D19DF0A272E95A061881A0B19317A6DD36
          EFC9D5772CFC43E99D8B9E71E4DFF5B4B87DC15322CFEBB97396574CCBFFED9A
          5113E64D01A2878F993D2D7FD19F3A1E5FF58198B564B5282BDC2E84D22EACE5
          2F894F7E3FADF391DCA45B8010C004487B97CFC09F82ABDE8A7D6E18E092CF01
          3440F5B9004C6963E765C627671FF8759E393827E00031B72C2468C43DF41C7F
          9BC33B3EEADA73B4F5AEB78E9CAF021C802A01CC5EF29C0EA16A0209BC51F315
          261CDCF5A2045CF2CB4DF840F00106668FBB2573C594DE3D53F233A344472BB1
          D3EF2628ED5E7A2ADFE2D0A65D5D05273BE6BE79F89C9E0E891B346FF55EE76A
          AF91704F91E487B86F42ECB8BCD1911FDD3A373B4AEB6861C88CC53AC4D98235
          147FB0FFF0039B2B17007D32FF27932499F3DB6F13800A38371F6FABD97BBC7D
          61C1FBE55D52F450DA8FECC1D1B083E499CB91546DAC3F9DFF1B80F4A3A94106
          F81EE2FDDAAEEA8F2B3BEEDAF5CF235D1D9E107ACE54D178F01FF4DBDD35FEBA
          B9E114BCB978240881D04000FA585C3A416D9D36DF18DD5FA86893002310382B
          3164744684F9A584C1C1394EB776F858A76BF98727DBEB01E58601D6CF1D8E90
          7441D07CC2F8E6022EB4F523D001407F04AFD674F96B22003003067F8A0017A0
          DD30C0EB3393D0848001A2FE1D2304CD3AC025717C7F66FD995E69406F91069C
          1AB1F6F624F15FA62BBBA407EAC6F30000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C65005A6F6F6D20496E3B5A6F6F6D540FEDDE00
          00091A49444154785EAD96097014551AC77FDD7325999C049260C84912482042
          089741241283509C4740D7AB144B5671B554108FDD15145C45C1927201C16317
          16413C560416251C11082606391239C2914002017391906366BA67BADFCECECE
          60165390DADDAFEA5FEF4DF754FF7FEF7B5F7FFD24BA1E37FBAFE0BF08238010
          A2734777F8A69D487430D6AF5174F2B0156BF7F1BB8747D159C8C08DCCE5F90B
          5685FCF92FBBF3D66C38F0C9071B8B4AD66C28BAB4FA93A22BABD61596AC58BB
          F7CBA5ABBE79F0E9F9CB22011320FBA03BCAA569DC3084101E8D7B740380C738
          67EC4CCBCA75FB9EFAF8B392DA7D2515A2AAE68AB03B54E10B9B5DF55C2B283A
          2356AF2F6C797BE5F605E3263FDCCD070248BEE72E5BBDAB6B003EF3975EFB28
          F2FDF585FBF6169F15EDB67F9B3A9DBAB0B9015ADA15D1DCEA1057DB14F73DA7
          FBBAE601DB55582E96AECE3FFEF8736FA502E68E104B567C0BD0A52D90FEF8A7
          B5DDE39352F78FBA2D79E41DC37A6332CA9CA86860C5FA629E59FC2D339FFA9C
          FBE77EC52BCBF7B27EEB712A6BAEE25075460E49625C76FFB4943E197B9F98BB
          2C1530FA0A57D3B49B0348EEC8CE9D6E8AE819BF69E4E0C4E4BE8911D81517EB
          B794F2F4ABDBD873DC46BB7F2F62060E27BAFF105A4D517C7FCAC6A2954514FC
          504DBBE224A6573863B2D37AF48C4EDA3861FAE3DD7D35E174BA6E0CE02BB849
          79BF9DDD2FB967766A72242DAD0AF3DED8CEBAEDA799362D9BD7670FE7ED5969
          3C3A3A82A1C9410486061312154D486C32DB0A6B58FD69190E452326BA3B19E9
          71A9FD33EE98EFAB0797AB0B1998FDF41BC166B3F90F4306C6A2A82EDE5D7B80
          53979D2C7F6122F78D8CA647B011A74B1066353034D1CA98F4602C460808F0A3
          477C6F6A9A34B61654A2B85C640D49C16AB5CE997EFFDC38405EF4C234E9467D
          4002A484A4F4297D7A474458032C1C2DFF995DDF57337BD65862C3CD282EDD2D
          81C33D4ECD5B879054D67CF830C9517E54373A01884988A3F8E849B2327A121A
          6CA17F9F68535D7DDF47808580F6DD826C71A30C4802E9EE84D8EE9ED5E7179E
          252C2686DB52427E3177BA47A74097555207241116622422C484D9286331C920
          CBF48C8BE48763B5489244EF842824D99803180029A99F01AF3A07D07531E096
          C8501CAAC6D1933F63ED118E9F59C2E15DB9A209B77434D989A2AB6802640318
          2D6036836C84C8A850CACF3723CB12A12181089DBEDDBA479B01E92635E081BE
          C5DFCF84EAD46868B3E11714E81E354F06263EF811790FADE1DE59EF23641776
          5DE5C997BFE29967DE63CD923518CC925B101464C1DD1F3C00429291C09A9892
          1908D06BE6EE4E218C3E00A7EA440870E93AB2D1009246E9A57606F40A409314
          D232FBA03A55145573CB3D0A17C1B744A1385DF48DF5A7AA417543C868061D21
          245C9AC0E9D240928C5DC9C0BFBA5953BB4D41D3212A2208CDA572F0623B17AE
          AA7CBCEA315E7F3E87375F1C87A23B70E82AEF2CCE63F1A27B59BAE4010C2609
          AB55C6E154080BF143D375EC0E05BBCDE63C73A2F82A205E7D7787F8A9351780
          A301337F0580EA548E5FA869449220B35F34F6F6665CB260E7B916CAEA6C9CAC
          B573BEC941CDF94A14A17255D339D7A450D5AC52DDA2126C3552D7D84C6A62B8
          67F5B575CD288A72E66A53AD136F94B466E086A0D9184B59E03DFF990187C39E
          7FECD4054C06995199F1A8CD0D0849734B70BE55A1B4C1C6D1063BBAC189EA72
          21C9209940B640689001648DCAAA3A86A7F5C4E972517EFA3CB6F6B602400344
          4708005D5CB70515E5873F2D3A78CA26748D30AB85DCA1F1B45FBE80D124798C
          840130089E58F8244B5E7F008C60F493080D34E0EF275372A482ACF42842AD66
          9A9AED14979CD02E5F3CBBE17A0080007B2503DB37F90010809EBF65F595A6A6
          E6B776ED3D82CBA591979D4662370B8D951598D1309B2490015970BEC5C1E576
          9570AB119753A1A0F024C1168949C37BD3D2A6F0DDBE43D4D7D5EE2DD9F7C919
          AFB910DE250F0D2C65A8F3EF9D7E0DF5D283F9EFED2C283D51557589E6161BCF
          CE18CEA4C1719C2B2BA7B5B60EABA4121562711B9B506D764E945F604FC17146
          F58DE2A989833C2B3F527A96C2C21FD1753D2375E0F824C00418163E37561A1C
          7098F4E01D98FCAD18FDDCB25891F0E009DF07C99833614E524C7CDFC2DFCC1C
          DD2D36369AF06E01B43954F6945671B2BA81EAFA564FD3888B08252D2E9CECF4
          18C2022CD436B65376AC82F5EBFFC1A4B103494A4A64D5C73B1ACE9C3C38E9D0
          814F7F021C8076F1B31C5179DA8C102010D7007CDD48068CD9E3E7A476EBD1EB
          B391590352466465101A124058883F7E162346830C78FA05AAA2791A4F43632B
          F9BB8AD95F7808DDA53063DA381EB92F9B4365E77967C5165BD3B982BB76EED9
          720D62CFC2BB85C043F02B00DF81D39896911B169F326C415050D0238306A6FA
          2525C59098D00BC9208100109CADB84879F9394A4A7EE24A63C3B7C8A6619983
          8784D55CFA99F1770DC66A353120AA8EEACDCB1AB7FD7871F2F2FC8A322F846B
          C7CB390271DD91ECAAF2CBB10C3002FEB70E9D9272E7C4B98BEE9AF262E1DDD3
          7F6FCF9DFAB2183DF92591E356F6F8792523729F5C9A3668E230A07BEFFEE346
          E44E7FADFED9855F88B1331689A2FC8D422875A2B9F84DF1CDF3231AE664C7DF
          0E04012640DA366F54C70C747E2AF6CAD0419257003AA079250053CAAD13D3A3
          1332773D966309C832EF22E2F629F827DF43D3E18FD8BFE9EBC6AD076BA67E78
          E0C251C00E6812C0B819AF7820345D20817BD4BD8509BB37BF21011D757D082F
          085E40BFCC01B7A7CF1FD6B275586E7AB8A8AF2172E434FC53EEA5E9C887EC59
          BBB971C7B1FA091FEC3FE7D90E892E86BB7A6F72B2D689B9A740F2413C342872
          404EBF6E5FDF3121335CAFAFA6E7A83C0F44E58EA5ECFD62E7FE59EB8E4C065A
          65FE4F2149321736DE29000D70AC3B5C5BB6ED70DD941D9F17374ADD7B517760
          2BF6339B4818330F49D36FF56DE7FF06205D07619001AE417C7EBCB174FB91FA
          A99BFF76A0B1DE1544D3E9A39CDDFD57DA6CCE325FDD74790B3EC8EB03422074
          1080672E7E79836A1BDABD733C5A5C522B0146C06F6C5C50BFD430CB9B313D02
          B21C4E7DFFA10675DE97C7EACA01A5CB002B27F446481E43D0BDC6787F0BB858
          DB86C003000204F04E59A3AF26CC800530F8B203A880DE6580E563E2D185800E
          A6BE152304551E004074CC9060E5E916A9436F913ABC3562D9E878F14F334089
          E672B7CC7B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C6500476F546F4865616465723B30A743B50000
          046E49444154785EC5576D885565107EDEBD51924BFBA320A2D8C8B02C2C445B
          0892645725C494822D0C9128C48A442A28FA25F4AB1FFD11FA00A3A8B0ECE347
          440441B84B5A810516FDE8C32C22CB30DA7059EFDEDD7BEF9999983333BC9D58
          3D7BD7A0D91D9E99F79C9733CF7CDCF79C2422F8B7A494502329F02CDA5741D3
          02C0AC88105CCEEBE5E1BF3FBD781C906101202CA532576D2601178EBA460091
          E1644B8E8CBC2EEB004CE600EA5906369064F8B2AD7B01EA02D205A8404538AF
          833B0017AE54AE1F796ECF2A00FDD500E6669FF67CF0E358421A1608F4BFDB6D
          034787A0F48EBF7A3F84006653B5496DCA765C17365CB56D13D8885CA0509701
          0D6578D7C6250869369B983A2A259BC1BB763BC32E2A52746C9D3A00BAEA7B44
          910981F6445D004995AD398D0D042440FBE29B71E28D9D567301589172ED49B1
          B01E88FAB35FD7FB7E9DC237005AF3C9000455397FD122F48FBE8BD9560B0511
          98192C0C9006C710561488AF8B0888804E97F0DAD831EC7D72F4260013A6B501
          44068CBD5A8DBE06062E1A50B555F120A51AB46D8BBD09B31DC225DFB1BADFEB
          0802A07905A08C4C046F7F7AC21E28A26ACD249E7A28FA188AB25744E96FBF6D
          2904560E2B6D96FA0024580077AFBEDCE90564CA22D9B75CA5E01F7F3D079054
          6D933DE0CD4F7E73F628915DE175E7C80CAB22328107365C6B4D6A64922BE6D7
          849271CBEA2B32F34A26E2A62017E5512BCA65A5E9B904BA2964FFA1E351D7CC
          3618671B12BEE3431B97C5282E2000CECE3DB70E424988934D12DC53C93267C2
          FDE0CA80556A4101709400FB3EFEC5675B7D06337CE62D1BC41CEC7DDD1EBA73
          D3F53E25D51EE8E99750F76E5D3308F1BDB9BEF96EF8E821590692F7080320B5
          E51CC770DFF8CF6041B02D6D66F6CE379B918F64529B18BBEE58EE93C1412C50
          7AE801C1B691ABDC8A0C18ABB043444C1939785890BD66C05885BC72E0A7EA8C
          47ED73C7E77E7014011EB9F306D871C1B9077A6D420870EFC8D510DFCDE29677
          7F2E2FDC17EB05F709D61FBDFF124A4C12F0F247C7C071DA65D6DE07961561F8
          9A4D8A007874F4460B8ACEA10915EE5BBF1440F6F369681A22B6D1FB20BF0D2D
          E89790BC04CAF8C50F7F5096C13EEA6CFE3F330031F46E7C6C74854F49EF6741
          9F70E6B663C33599711C4470A61C3697A92E249767BA398DE6E9163A334D0018
          C8EF0328EA7AA06489CAD801E387BFC6C9BF26ADF695096043B72348F1CC5C77
          29E3A917DEF9B6D99CFAF29927B6AF0370AA7E0A3C00F6DA164438393189CD6B
          87C01CA5E09229B9B266C091995090DE4360E292D0C1CFBF5A09A0FF6C012438
          E168C2D3AD6EC9A6DD6E837DCCDE1FFBA2C4DCFD1C590954F57745B3972FD346
          AE7F2D17D76E7B66FAE083CF7EB6067EB874665B5879650233B0F696152032F6
          CA58ED821C0B02B1A2FAA4D73D0B92CF843305A00C524AACCDF2D2E3EB377BB4
          0DDFB478C9F36FED7FEFC0E12176665CA97766ABC83014E48939F5E71FF5AFE5
          5172BF71268F0FA6763FBCE5760017CEF1F1D998F3C3B4CAB6F04FB289B94EBD
          337D2127FC37229EE1B98FDDFF53FE0667D39A73B43D3A220000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C6500476F546F466F6F7465723B2E2AF2700000
          047749444154785EC5574D685D5510FECE7BFED41A9A8D1B51022AD1225582D5
          45B15AD2B44828290A51142DA294AA508A0A85E2A21B05C155415D54942AA54A
          578A0A8224C546C51FA8AE8AD22A626D84522192E6EFBD7767C6377766387981
          F4E5A60BCF7B1F3373CF3DF7CC373FF7278908968E9412BA8C14F232A8754843
          01604144083EAEAAB2F9DBC7C74E0830C8CC50C799DB1081309B54D89CDB0C61
          80850111CCCE4E9F7A63FFEE6D00FECD0E746719B22E82C19D43F7E9C6254837
          6E831C4C82C22533A1203D87C0A4F382933FFCBC1140CFB20E64F648873EFF6D
          3C210D0A04FA6FB51AE0E6DF25BB4FC77F749699614425A482CA79D337ACEF87
          8F6B55748B80BA32B86FC7AD8831333383239F4D821918BA7F0044C65E19AB5E
          90CB8240AC526DD2798F823902A0D6CD81A4602F4E6240A06C80DEEBAFC62763
          DF3B73671BF9CE6C6D0E26CB9F18A62E5E380D606E2511802CB1AF59B306C30F
          0C60616E0E0591B2B7E2A21C6A8A8214738C0868B6081F8C9FC5E103A3F702F8
          C7D0D5811C01E300D46B75F4AEEB55D8517127A5D3695B166B13169A841B7E61
          357FD51604402B724019C5658F7F33691B7A2819B61333C050E9611765AF12A5
          BDFBA17E08A0F3B99B1CDD1D9060013CB6F926A7172253164598A596827FFC2A
          3B9014B6C836F8E8EBF3CE1EA564073CEF1C9161052212786EF80E08D97C5C77
          A5118048968F6FBE39982F89449C14E4223DAA45BA2C359553A08B627C38712E
          F29AD906E3ACFB7C3EFEC28EF560421BB20A07381B4F3CD80725214E3649704F
          25CB1C09B7832B0396A95539C091021CFDEA4FEF6DB519CCF09EB7681073B0F7
          E3B6E9DE913BBD4B3A6BA0D29D50D73EB9A50FE26B737EF3D9F0D643B20824AF
          110640AACB15B6E1D1137F8005C1B6D4F3C3C774BBF59A4DAA1363DFC31BBC33
          388885940A3520D8B5F516D72202C62AF418220646761EE664D50818AB1847C6
          7EEFECF1C87DAEF85C0F2E4580171FB90BC200E5364C958B10023CBDF53688AF
          6671CDAB3FA7176E8BD582DB04AB8FEA7742894E02DEFBF22C389E7699B5D701
          F28B89875BD406F0D2E8DDE6145D4111AA78667B3F806CE7A7A12186D842734A
          6D46A4ADBA03E42950C6EF7C71465906FBC8B3D98B230031E9D5F8F2E8807749
          F567414D3873DB337C7B30B68D335F8B48D8C15C2181FC2A56A50640E1406CEC
          32B76044208A91CB5C17F955BDC4CCA57934E66700609DBF8E1180A26B0A2C6C
          CEC8517C3C023E3F61763C7CB853671270E192053D04BC4282037B6AA7A766E5
          A7A163B20DC0D4720EA44CD21CB834D72A191111D64E4EE0C6A70E03D402A40D
          722201CEC7C14D800B0795C74FBD75E81E003D9773401CADC6FCECC9E7DFFC76
          0BFCE152B41A784D00A577EEFD672104301B5427D529EB311F9DB071D708D8DF
          6F97AD01659D5262000BEFEEDFBED33F22EA1E999E575FBFEE8CB2E97BF4A033
          6CA163144D3B4E6DA0A5B67B149158C17741A4DB0B663EB70F1AED1C7E27C7F6
          6E12F65E574939F7A4B2F01A608997118F92E0AF69E4EF8225379CE5BE9013F2
          A87BFED6BA5EEBF2259CED7C539D067051441A1D0EFC9FE33F6A23B01B54C7E9
          000000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001B744558745469746C6500476F546F4E657874486561646572466F6F
          7465723B6221D21E000004CB49444154785EAD966F88555514C57FF7CDE80C66
          5AF807A21032AC088BC0420349664842C42898A21009234A49CCB2C22C0A4230
          08C1D03E18D91FACA4C028088A48313328CB0F05516A9259F621676C9ADEBC99
          F7DE3D7B95BC7D3ABCCBE331636ED8EC73CEBDB0D7DA7BED7B6EA724A2655946
          7B238BB18D972045F71C1895142858E75892FFBEF9827DA01E0132211366CD6B
          0BC2728F262C40088D3858D1E1DE37750B30D802405B96001D64EAB964F90E08
          75501D424E93593AC76A60B97B00D539BC7DEB3C60724B0005F6D9D60F7FDA9B
          91F50881A05EAFC2911BC1724EBE7E1F0A60D6700508E6797C1D9FCBDF99B762
          1906005DB8B5AB409641CFDAA5B389562E97193A22B0C0AC3B9F7186759A2CAF
          35CE430DA89FDD3BA258090194DA0370C19804381B441054A72DE0D45B6B9009
          09CC8442EA7D30B0DC35E0FD377FAE207E1DE27BA032960AA0C27E62773793FB
          DE63B452210F0133C364104490211341427E2E8910A0560FBCB1F7183B36F4DD
          00F4BBB707902A004208E828753075CAD4B30E080954402A40E91091315A0B4C
          FFC1007E04468130260032F952BC73F0141248421206202F3DC2E218CA300913
          C8C4FDB7CE418099D234016303A0C802EE5A78A9D38B215196D25E08C850DCB9
          8F13808BD01C8060F7E7BF397B9084B9E37DB75819F3AA78251E5C72150AFEAE
          8B7BAC15404AF1EE859745E6854AC49722B9D81E100E0A61B2F1B7C064447BFB
          C0C9D8D7C436324E6B64CDE7AB975E1D47F11C00A4FCDC73F32C6420279B2972
          CF9044AA84EF632A03094CE704C0620BD8B5FF179F6D900C337CE68524825964
          EFE760126B965D839144E8CEB8BE842658BE68167202A9BFE96D7CF4C81A15C8
          5C23060481F43FC770D7BE9F3111D962023373E537D646BA920342C1587BFB5C
          9F0C2BDEAE1A8706C48ADECB7D459A00C9D7C9A4861B093C0E72BC15C012025E
          FBF478F38CC7DE27C5273D789460DD1DD72283E063E8CECC27BA0B23AFD6228C
          34EEEDBD02390593AF5CFDA9BDF85E0D2DF83EE0FA48004AA75FA8DACC27BB04
          2083CC5A8AD02B01ECFCE418166FBBC4DA75002643869F81640878A4EF3A8450
          485330637DD773A7B75437FDB1B95A9DB1A1CB9061666D442858B9780E90F6E9
          362C6800C8BCFCE6ECBC6D11C0846C221BA73D3471D2C04BB5674F3F5F2D4F5B
          3FC14C2D4418BC059278F9A3A3982CB227F559984815207D039078B4EF7A9F12
          110120E8BD69FEBABD235F769F79B5FEF4C096FAE0450F974211404996B83DB0
          E4CAC45842892F52E24F649E2622020528011D422C9A3B9F33C303ABBE1939DA
          F5D7EE7CE3E08BD65FD400210288895B5CC52D96851F15153FC51D18E4B971F1
          7498BB60F6CA6FC3B152F95DAD6D310502488C4896F8379B5104E56D49083B2C
          883C0FD46A813F8707903101287516BE528A22FCBB52C72404CDFF0400712D10
          A4FE03263C2A8AD01A1530F210387EA29F138706F654DEE729603802907BBD3A
          32FCD9AA6D5F2C424216932A4D8189D46B6BD6885244A2365A3E085481C9C1E0
          C0775F73E2AB3367933F069CBA7035F54E9C619665068CBEF2F8E2DB802EA0A3
          7093B58C6DCE02300A0C03936462FFC787F6543ED07FC98B7781801CA8002329
          791B6BFB3C5D8C4039F46BE7BFC937A5E485BBC07B6F5E898CF3639AB2266368
          BB86CABBB50EA8A6E405000520E27CDA3672A04C0BFB07CF258216A440A3A500
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C6500476F546F50726576696F75734865616465
          72466F6F7465723B1A76AD6D000004C149444154785EC5575D685C55109EB3BB
          D90D18ED838950948A95D522550B498B85D290A048290585182CA515C55F8841
          630AF5A5452A088AD2FAF3504554EA0FFAE09320882D55E38BD817416B93B66A
          B5BE342D2149D3ECCF99F1CC39337BEEBD6C924DFBE0CD7E993973EFC97CF377
          EEC61011E8658C81252EA37211E4925250779827229B755068C5F9BFAF5C7314
          80FA982A217920A675B44ED645B2CD02581BE4D41C1DEFFF98EE05A736259081
          C9C83C18EA5BB9E31080AD019083ADA77760C28E5587BAC07AFBF1B70F740340
          47530299E8CD81AF4E1D31605CB404FCA9D52A0027D7FB3F78F6C3C780938818
          C0BA65DD465DEF933CD3BD731B60F05562B15406984ADFF0D6D50DC3ECEC2C4C
          9F24EF65D5437B25C25A7A57BD1AECD6016ABC16469A09DF67B9A5081806FAA6
          946880C01240E5FA7BE0DC2743A1E6CC85A58DB5B72CEBD203527F94FBFCDCDF
          D3F02B00CCB59201A0CCBAD8DE0E1D035FC2FCDC1CD4AD054404E4FCB2632709
          591290D8C9E9D602546B163E3A320187F60CF400C024A305029A81103D6BF95C
          1E565CB78211AC2424294D9A12460203F3550B9D279097BF3BCC3BD896087044
          9A8BCFC7CE0587441EE8CD927A60296348E8C012FCFAF1FBCB9E0A2225A7095A
          23A0197018DC74A384A722864C0C5D7ACD68FCFAB36C0286219BBC83CF7EF847
          A2072F51005277D4CC20031A99786ACBEDA149291010406B4D48513EBCE9268D
          3C93097D4883D3F2B0A6E572205C7E096493C7A7DF9FD5BAC66835E2844E98B6
          3FB3758D8EE21510C0B8D8BE7915301F92600D69ECC693899990B5BAC29041A4
          2B22808D121C3EF697CC36AF91EB2C331FB26111357AB107A743DBEED029C9F6
          40EB2721EFDDD1EB32C0E6547D134FCBE881091930D223E86059A7AB1CC3C347
          FF60071AADD711513A3FE808F1956C59B708C30FAC95C9C0ECDB9596D103043B
          FB6F112D310144A2A727878162A578602D3B03CADAE3836F4FA7675C6B1F3B3E
          F6834826F2DC8377FA7EB0710C4DB32F3D44D4BC09358C47FA6F0592DD48A249
          F727CA2B6B0ABD206BEB8094CE40D7EE129C7FADA28488D1A4091B9304EF7F33
          01A86FBB18B5F441C80A21888DB985223C3F705720953E07D479B16BA4B4EFFC
          1B95979C5E59B009593C7A5F99355D27DE86991E081BA50F209062C412A86CEB
          1C2EBE6C4A30EAF4579B12B0888DFABCFBF5382069D76B9D03309901A020A51B
          4706D60502F11CC871E4CEF9FECD3DEB47C74EFC0C4CA65913E608636C4F6EB9
          4D230E8E63BC6C8FF16BE40C529047C3F9B3C5BDCEF90B1BCBDD30F69B275068
          7610815502EAB8C9ABB889AA44F557F2282E740E15F7F56ED830B2B1DC03672E
          8CEB119E5FE01C206DC2E8385BEF8C0D93F7D52624A43DDAB8447F5E9C803393
          E3BA2112488E8536E1CC5C8D2350A3A635EC559DA5365D3CC245923661EDC23B
          D5FDC7AA3FB5AF5DB7FA8942C9CA5B325D0212D42A972F7DF7F45B3FF6B24742
          754A710A504931D0CB2C499207AAF3B363F27D70E6E27BD5177FD975BAB4E6EE
          9B77C911994F8D9D71977466BB43491E300258482E62B3E2FC924345EE755D3B
          983B985F6906A70EDA32119D2A64CA5797EFEF97D3CE9B63F1FBF1C5D8B9BB0D
          09112EBC6E2767BEC0D18EED3926359DCA808213A18EAF1637EC291222C9BF6D
          E87332F5A62D48962B44541302FFDFF51F3BA0501B1DA396290000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000015744558745469746C65004C696E6B546F50726576696F75733BCBC9
          6F2B0000040D49444154785EC5564D685C55143E6FF212C6A621988DC1458B68
          A8094694962EEC22095A154915858A4803A2528BD25474E3CAD2ADA8A8146C2D
          527FAAAB6E8245A435D8A2486DDA8D154ADA9A85A20B09054D3BC94CE69DCFEF
          BC77EF5CFAA0A4730D781F1F1FE770BE73CFBBE7DC99970090FF73A5372BD8B8
          EBD866D219D080621380716214906108CC775E1527153806C5592D7C72F9CBA7
          A30B28E338200F03B89F982486CC49CEA18A110546A0D80EE003400E2A564E5A
          919B5EE8ED5DDB798AFC0E3108E088169BDDAE0479BBF9884128DE22BF24AAAB
          D702A8C87D037DD5990BF3F2CFD5C62188EC8442349CC051F251DA9721D80B95
          49159CA3F4ECAA9C0050F0BADBD648F72DE933AAD8DCDADC200543651FE90B08
          5B04195FB513503ED3337FB80DA5078AE30AD84C9C513A0083102A34A700ECA0
          35BA52DEE4467E8F925DF62BD1348ED5262561656E6FF5DB0A2B87229F21CDC8
          4DC70AB2489615BC58C78F5B3EC543D42DC56AD35265694782D1753BDE75352E
          8B80C82C4B83683A64B9FFDCFEF71EA0660DD188D456D3B7A766A71349C6406B
          B95117FCB2290F9CFD684F114B645AB01A6BC11B27B60949F67D767ABEBBB72F
          4ACB95A68264ECB5270672AB56ABC95FE791B775C3C4EB24AB9CC8085936DB65
          F56F03D9B975BDF4F7F74769B93A5275F7ABC1529B607CFF1699FBE48DBC6F74
          311684F81E12457F41FEAD7A8FDCD9D515A59DAFC98C6D9BD214BF3A99ACEFD9
          2959AAD729CA0814800A604921D7169BF2F9898BF2FE9E47EF7DF3F0C19F1FEF
          E911B4AF1DA2E40AB1905A902D908E9CFA5D5AB6132B8C0BFBC5470664A1B62C
          6B6FFDDB247F56BB7BA5B3B353EA4D6D5B4B5C239ABE05392646D68B99DE9324
          9620C90DEFA5E9374AFE8BD6EB52D51072787A4E7C5200AE05D27A9B5D8F6D68
          F9B92AE4586D2800D0560B9E7BF00E7228107C04E1670E708384A200C46B1307
          B96E063E3EF1AB0FB04A5D2F09C72F8FDFEDFE74B475020022B4E1673A05C231
          3EBFF52E5F7B9E34F16F107CFE3AE5628DD78616648AD6A01CFAE69264EA64AE
          F28C005D4ADEBD6D4880D082486D28A0DC82177855BC01238B0B93EEA73C0C61
          A6B1DA3003D090E4C0D7B3A2CEF61F95666694829B4D3E392C7682702710A72D
          9F40A8D2AE4ACEEAB27AC275D74BFD4695486D69067C009FFD5F5D0877D94D78
          E6D8DCAF3E359CB36B7525525B6E41A8F695F141CBE6164461668019B096B86B
          18AF2D0FA10FB027CC88B341B3884782BCA75E12A92DCF801ACB958586289083
          2A17683D0BB625C99F0C6EFF78AD3F98B4515FFA6EF787A7C700982BDC5508D9
          89CCB42CEEAD966A577FA051E357D0C9C9033F8DB6A3AD2FD6BEA751F7DDB15E
          74135D44C70DBE5ECBB6120D075B699BDA3A51333D0035F152E10CA2153EDDE1
          A03E3E429B797D10B6B7C0C5F94AA2B57EFD0B1611453350C9B7910000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001E744558745469746C6500446966666572656E744669727374506167
          653B506167653B4166DE82000004ED49444154785EA5964D881C5510C77FAF77
          D6C9AE9B8420220A8628242A8808A2397898404402C1CBE2D74144F0247E8007
          738924E821E025B028840DE4222A8246C153581370C5600EEA41241AA292E021
          8B9BA8896E7667A65F9558AFE8D7CD748680D353BC8F7ED3FFFAD5AB57D34155
          A1FD2284D018BA15B90F3ECE6B9A6B69192B108121103BD72DECE2878F9DFD9C
          22F45415BB2280528D155414752DB109D0501008845020E570F1D5D97B1F05A4
          33563C134F787FB22C87BD67776C0648A2AAB99F6D04A8D3E9D0ED76AD9DFBEC
          A79E03D1B98E70176F1DFD61A128267AA2CA9581F2F6B1F3894A05B50E469AC8
          3335A18090186EDBD4E18987372308A2901D1843EDD69132F65EDCBDE57F51EF
          FFE0FBB42E80485EDBB916F56B47BE5D0845617B7D69A564FF876750138D494C
          403C0A54D401C9B9C9969BBB3CBF6B6BA216452C62629102429B03995A62EFCD
          A7EF6E528FEF8F50BFF0CEA93AB5F5C51C6F4420D3CFBEFBD042086187A2FCAA
          2FF1CC514549B4D6536FA52E0CB8230ADC75D3FDEC7DE410A5D4A9BD2FE0A34A
          B31181FFC40F3E3587FA858AF7AC4D0F531FAB201A6DDEE788B164CF7BFB9D5A
          91284EAD55920A20B13D079C42393B386E6238B188D4F7DAE995686D9A4795B5
          E1D004A33986099B05775EC103D69E034ED2105149733E02B7A836E74FCB2721
          1A29680BB5AA3B230A2D6514C143AC62C2BE01794ECDBD24620852AB80799D88
          ADC9D45E2704881ED5B608A002956C2136C685EB39800226EE6BF3FD66B647A9
          324824C388487B1DF01F1B3DF66D114721242C857C046D4D32A446AD107D0D66
          0EE611284693D0BDCE64265698B89B8717C4DAE07B1F24391FB171DE7731EAE4
          5484A8329203C14C4DB419767F58090C57E1E4A1755C385D34CB30269E44C4A9
          0D383F4F7C7BA3452A6B369350BC4C28DE0AA810107E3B35C1E2C12E7F2F973C
          70CF83ACEFDCE2E235B30CCFFB2C12C1F413B5900B5BDB290892B7A1CA602F22
          DCBE7DC0F6D90D14138199E90DAC94978C865C19FDF83AB9573E3F35092A92E6
          54AE750A721D808699C0F9F34B6CDA3249A903CAD8479BF7C1E80564945AA381
          24A0F67F43A7F514061D29324B67225BEFDBC83FF12282121A5B90732006A124
          20EA8E38B55A8BC1B456425127489EBB78EA0D5695E57343763D792BABE5E52C
          9E1DF504ABBD9A95B5ADF0E8FA16B5574215010F5A209FF5E373259FBCBEC6A0
          2C997FE36B4E7CFC4B0EADBAD5C711CF9D8808798D7A1F688F405532052A4F85
          9D2F07EE98EAB1AED8084EB7DCFF990BFD1FA12A5406907E3F4A6DF3BFFFB5C6
          CCFA8E2721527720E46318090A4212170094B32B27094E4826F675994E149A75
          00C4EFBFBF709A1BBAD3C4587E0194803622A0E2F53C975E138D626D0E757095
          501327D1635311D5091B2F5FEE333D93A8E7F7ECBE13B802F481C1C86BB91720
          C8E2A8345FBF707293142A7A82DF114100350098FBE83B26BB53C472B008FC09
          AC3ABDB445C0446225EE62591CF1B1548E00D51A202A4B7FAC317DE38C39F1E9
          81C7B701978135B761E2D1F63722FCD1C86899F558577941E552A842280A078E
          7C4567728A188DFA2270B54EADDA5E885445E90F86AC5DED13013CABD5B7243A
          A9871A4D9AB91CFBF5E5FC73DB6CAF9BD49285197140811887F1C42B87F7ED6C
          9EDBFC468C8B69747AF1B63A1D1007DA4AED3A631D28BFD977EE319FCB7FD3B9
          65DC9C9B386DDF5BA1F9191F01F77690455A6CFC3D75CB7B3DFEC3BF2F170088
          6F7C97970000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500446966666572656E744F64644576656E50
          616765733B506167653B6DF481A1000004C449444154785EA595DF8B95E517C5
          3FCF3B4707CB7E7CFF8042ECAB31D98F2BA12E6C8C5203932823A2282813A122
          8BA42E0C228224AA0BAF22C29B102D22A21F500EA40E42378117614161604517
          51281AC9FC38CF5A51B337F3C09C330CB461B31FF679DFB3F75A6B3FFBEDD966
          98955268AC001D3012E78C6925BC7DB6CD3BA2803E300DF47B4B2C9CC5BB1D27
          C6263C52C62D90856D8A0B7205156C23996AC046158C11C6A5D015D39FD6898F
          EFFE6933507B4B451DDEAB7DC65F5E7710236C231B308E666C210CF95BF11C6D
          BD8EDEF26594CE3C73FCC10DC9566F29A85FFBF0D444D78D8CCBC6E7CCA1A380
          C116C660908D654C1436503A287318FE77F9396E59FF2DFD226493357A4B41AD
          7E1D7F72EB2A8040E93CB7BE80C95EAFC7E8E8E8BFF1A543DF506D84A9322403
          C350EFFC74D3045D19C7E2B49F63F731C042A92D80A238E040EDCE317166F515
          D7B37BFD9B08A17C16230980850DB4A8ABC79FDFB01711DA4AA8D59D8A6CAA2B
          04F514D18DFCA3F50814B3EFC8EBD8C605A46854C66E1868D1BFF2FEA989D275
          1B6DF08C79EF0B926A84412007DA46EBCCD970D995BFB2EEE6E35462202D9C0C
          C8A80480410C94D26DDC7BDF18FFC5F61CE887D64AB4485934981C3203D91933
          D54DD60450709B05374953989AA9480609C7B42B51271BAE781803565B21B311
          0D76932EC6CD92CB5712AD3072C53202540D31B0B5D25CC3C6AADC56E7F0895F
          1031F502E1792D1D080D8F6DBA068809AF460E57360D8AE27D1B0FB9052D35B8
          C0FD1BAE02B75264E3CC2F20883CB81A3925A83180463473E08A3C640F64638A
          AE0F4FFE9C6840A6C6D9A9AD40168F6F590310B42B964DCA0135C1616AC83490
          0159C1C49C3F70EBD5D0E81EB889158F9A1C0655504D8A15ACA51CCAE6C11ABC
          075202221C3C76A6F9838871B6E6CFBBB65E9B439ACF509BED8785D40CA9CA10
          06E4B63E0F6D5CD55CC3B05CBD94467C30ED902ACF1080AB85C3179901B50DF0
          EED11F91A0DA38D05429D1471E9EB86B0C0135BF908062D884627600138C2CBE
          8812288FDCB63A354F43442242FB259452EB6CB2228C31AE4E89720FB0600F24
          0360287060E2343248C2B90B825EC72DA898A7B65D07CDBE48B69CF4C76D3131
          88C32448A4A9F9A377FC1F03ED70E621E44DA7B45AA3F92154369E0C0CFF1851
          AB420A28C03B477E40A97D73139CB9884FDF73032EA66294B2D458426A643220
          610FBE054572AB353B36AF81566B004AC4DCED051B28A4D6ED55C52891F3DBB9
          B3AC58B93C1935E0760F243538E2DB9F7F9FA8630E424BD1EC7AB1FBDE1BC1E4
          660419917A83988B6F4CEEA71BEDD0AC268159C083198817776EB936375D831A
          68F680817C2DB516F332FD7E7E9A4B56F690C5A93D7FAE05CE0353C034A0B601
          AC2C537081B73EFB2E749E73B50CE0648267B7DF148A64E16802D8FFC149968D
          AEA0F66726813F808B401FD00206AA6A7B0BD8B5758C4C4059C0840C26934EAD
          397BFE2F462FED81C547AF6E5F0B5C08D45341BD52E6810C88D620662C6DC133
          8E985A7FF2D549469617EAAC07A2F6906B98F5B97071266827E804E29CA8937E
          DA19B0912B5FBF706651D4ADF51A10757676FACB87F71DBD3D3574522BE39426
          66C0904D66048BD999A981A8095BAC81FEA117EFDC16B92EF2A58D8BE5C21568
          A7238A85369C81786106280CB3C57F7378A3F5E2F637E3114E07AE4B4E210000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C6500436C6F73653B457869743B426172733B52
          6962626F6E3B4603B9E80000067749444154785EC5975B8C955715C77FFB0C03
          33C3CC30F70B3894D62284526BB11A630CC6041F7C6C4C7CD0686234B16AD486
          165B07DBDADA02112592A8313ED4C4F8A0D6A4DE22314D0DB4182EA558532816
          2D22B470E6C2309773CE9CF9F65E6B393D7B67BE1C652693F0E097AC597BCF5E
          7BFEFFBDD67FAF6F3E6766FC3F1F0770F9E03E3018BAFF61B79CF89B347BFDA9
          C76CD3EEC77302970EEC61FDCE6197E685E4DD32C1DD32095B320134590A48C0
          A71F7DE823ED4D4D7B0BCEDD0386A56DC983190BBF27CE359F80FDF71E4BD105
          30C58B9E1E2B9586771CFCD19F8100D80AF2A7D0DEB8F2E7BD3B3EDCDFD4DF07
          66C93402A9C6B128A6423E5630C14440051305115403A8804433152A2313DBEC
          EF6FFE0CB805904420CF8006E95FD1A8CC9E394D7E4CB0053244AF8699629A08
          461F89A962D1D2389153452B152C843EA021619267009C7A8F56CA58F0398184
          8D691A5B1D09CC52161493E823B8448212308D6B966584CCE7A5AF2700E23D16
          32340BE4E84490E4731239789E811CDCC4C0847C2E48F048161625E0240B98F7
          98CF484F0E080BBAB01AB0E1EAB220A0D19B1AA4AC246DA02258E611BF0481AC
          5CAE9D5E7D96C7249957CB555E7DFE38D72E1719BC7D3D776C7F2F858602A812
          7CE0CC9153BCF9FA45BAD7F572D7F66DAC6C5A1949254226010D9EB9E952DD15
          2DE413A88E5F271B29A273199AF91A11F59EEA7489D3BF3F4CF5F6BBE97DE400
          93ED6B79F9D00BF86A153F57E5D4A11799EA1C62ED933FC06F7E3F27FE78B4B6
          C7BC47BD60B5BF13C826AE53199FACCB40A14E8462F8B12295F3E70853939144
          F09C3DFC126CFB10FD9FF80C1BDFBD89ADBB86C9D66DE2AF7F3A366FC7999B1F
          F77FEE2BDCBA752377DDBF93E60F7E94578FFE0D4DE5947285AC78856C6A0A09
          8B8BD0A92A1A02522933FBC6795C4B0B8D1D5D4C8F4CB0FDE01798758D74AE69
          056714767D8333FBF71244E9FBEC971918E8A2A7BB1DCCD8FEE0D7F8CD8EDF12
          A6A791D20C9A650BFA5065895BA0D408980866C0CC0C3253A27BB08B0B3FF921
          DBBEF908D54C5185EEDE0EEED835CCE454998E8E56BA3BDB30355A9B1A38F1E4
          77E85BD743363E1E819D81827A41040016C98045118A000E4B22DC706B2FFF7C
          E5255ED9B787F73C3C4CA92A007477B7D3356F0006B4AD6AE0D413DF62F2E563
          6CB9733DFEDA0446EA98383404546B902EDA0D4A60C1C7A6913722B2F131DEB9
          7980F3C75EE0E4E3199BBFBE1B289007818A727CEF134C1D7F912D77DF46363A
          927A972E5C5D1545456E2842072022484DFD310BF33E9209816A710424303131
          C3D8580904C85F0FA8417966164CA85CB9124BF9B6F9B7BDD4C61A04D1254BA0
          A9040ACE812AE662CFBF3452267BD73DB47FEA4B980331C320B1886719FAEA43
          9CDFFF6D2EBC76820D036D14483116332AF525A8F9FFD180F92C3277907E50BC
          EEF19BDF47DB27EFA36FA08BAE8ED598291DAB1B311A982C790CA5ABAB8D8D0F
          ECE68D034F71F9DC4986BA9A2338402A81AA2E710B4408998F6D137016395432
          E3CE9DBB28DB8A080E74B4347266FF1ECCA8F585899207A0B3AB9D0F3CFA1847
          EEFD182A010052EB560D4890A5FA00988F41CE81A9033356B736537DFE776CF8
          F4E7295703EDCD2B38F7BD7D4CFCE50866C659075B1E1C66BAE2696D5EC9BF9E
          7E9AB6B6164C322C7F8322216601E086B74044109F45D11891048E819E162E3D
          FB0C00B7DDFB71CE7EF7C75C3B7684A1C13560C6E5A38779CD8CADF77D917FFC
          F4192EFEFA97AC5FDB811F1F4D2F2B0043832C5A02B7A0816A2C010089443636
          CA3BFAFB29FEE1592EFCEA17B4B63633D8B39AF2BCDA01D6F6F5317AF228879E
          7B8E96E6466E59D7493636827AC1111B91295810546CA94EA804B15A20712B0E
          301364E42A7DBD3D340CAC21944A54E7C193C699BD7295DE9E6E06FBFA91D92A
          95AB45508F012AA49328228A982EAE0113C1BCA1AAB9789C8B3E134A6FBD05EA
          A23AB1DAD8A5D3558A455052DB755804A2FEFF08C144EAFB40CE06276AE88206
          1C140C97440409D80073092892A4000818699ED62001E330334414155DB4159B
          88C43AA944ACA41F88DED51D2A6581024E351E32464512A4B95A0EA00BD9B568
          39010344828C8C5D9FEB6F2A7854638CA9D5A71250E728600BEC345F8B802ECE
          AD6E9FA39C15F0AAA340A8D70028307771B6F2409055DF2FD0D403F9FDD5046C
          B9C7CCE52932F2960BD1CCF23514C321A6D7FE9DCDEE02AA40DE91926F005601
          4DB93670CBFC1473CBFC34F3097CF6465F469216B2A5406EC22CC7216F873705
          72F364F80FA3C7188E64BF0D450000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C6500566965775461626C65477269646C696E65
          733B5461626C653BDC8D2729000004C749444154785EC5575D6FDC54109DD9DD
          202A5EF8AAD4FE085E092F45085A92ACB70D5529F058C2878444378406F11320
          2540521E408536A4A04AA848B45D6FA008F1000F65C3137F022135558B4493EC
          87EFE578E6C66339D958CA4B1D45C773CFD8E3997B66EC65EF3DDDCFA3960233
          6FD95CE087AEEFD1CFDB3F0C245F2B04A904E442D0B2732EE5346802EC07F4A1
          0216FCCCC5BF7E21E667C87B6101E4E55C6DCA6C45D8CA79165B2C8052795ED7
          06FDDEEF97660F8DC1D1D903D8C169F0F9534FD0B0E3D6DD4DDAFFF0837BE6A7
          163B8742CC9E69C08E4C904992E5AC59B0E2F87B3FD3CDCF1B246E9C9199EFE1
          669BFEF8EA05D2BC59E970937B9B0339B36D36C31E2033B2081A3C10AD0F0E53
          ADC2C4BA1648DBAE787E9C6AD58A049714F48E623B159D69A25001039368086E
          1936DE4705BE386A7E85EBA2333F52E7C2F140C8C5A605802BF8172B008F5CD9
          03E6C3B4E69E970C89385BF5DE5CE28F27C02BE7F355DC72B40A6C7B00D62DF0
          22A4A7DE6AD3DABF29C66ABFD9A25B7736A8010DFC737B839E7CE32AADDDEDD2
          E8EB40F0A3AFFD207ED1BB31FDBD067EEA7B5ABB037CF58AE0E8A92B741BF7B3
          5C866C810340C52873839028049722D3CDF30DEC7D855A678FD081C7F651E7CB
          49B12138C1CE05C5F893061D7C741FAD5E3C2195EA2CBD4823E057BF3E4903E7
          68A426F9F2301152BEAE49E2C41E245A4A202A7083FA58074D7D27A836B16034
          13079BA8A77E8AF8FB0F5DD0ED27BB6A80BD49C0F69181410BF1476369A6B6F7
          E60C605420528D1467AF1F3EAECDDBDAC454C826442F2AFF4932B4A840F6E458
          7DA277B402360DD5CF3458D205810FADC7B92EE0A0F2711A095D90550BBEECBD
          D8ED8548783BB858515B542C4E42ED8223332BD43E3B46D1EC0D6ACD8F510399
          63C8489FA3D5A0F61594BB4E7564DCFE3492CCE305E034EC8506D5A75B1403A3
          26EC45E0F475BAFC617DF8EBD80EED82CE79A8BACA50F92450D50E94E007D105
          183662FF099557AB0CB59F40E6D53438F8876875F924F82AAD5E7A09C8C09721
          4067FA2813219137B50F9C9003D8E873B1B10CDE537AD64B7966A83DA189668B
          FA40E759D40F3EEB8AF5EE00BEC96E2234B93A13445EE8D2E7928509D604462C
          E5565EAF60590F3CDB3D874E4267845C603DE125605D540EABC883635851F3BA
          F0BA66898AED04CA06910F68BDEFBC5D06C189364CD6C1993954209D901CDCBD
          666D8D082C11211C64E63F77BA8D728F43EDAAFAFA4C1BC155E5F162C0A0F695
          85A3546F5EA3F6B96314094E52FDF4358A5384BD22F655BA3C57272A791D4B73
          EF7F24A8BCC698E9C7A172CCF2259DEDE873513966BB76C132545E11958B1DA3
          02071E07FFED2B5807FF0DB0CA626F741379AFEC3A885C40CFAA6EE7495055EF
          540350B2239BF1826A4BC68344AEB3F581167EA39780F3BB76019BAA76FE988E
          174CE57E07BFF667C7344B1388A249AB6414171C7DE1BC2E7DEE6DFC0A6F0ED1
          DB6905BC09DD6F01AB984B44186E49F2EAB479609FD7DFCD4D4889EF81772138
          830F2E105A449B28F57A6F90FB280D2467E9B8ED225426497ADD5FA7CE759E4D
          2D97ABB197209AF103105BAFEFC08475A67C20111FA661B6458ADAAAFDCDF5DF
          C227B9DBE901FACBB34F37C29A7D3A9763B98F69BC0BDC0CE77E5B0502D103F2
          9E7E1F96FB380BBE8306F2C4DE82954331C67DFF79FE3F6A56363AB1CAB83B00
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001C744558745469746C65005461626C6550726F706572746965733B54
          61626C653BE8BCC9780000071D49444154785EC5976B6C14D715C77F77766777
          BD5EB0B1B1B18979630C1B301048026D52993E92348FAAA51FF281B652BF0435
          7CAE92564AD40F79546DA548A5511BB5AA1A421B5515491049684952A52A9434
          404213A7F2030CC6AC8D5F783DEB7DCCCECEBDBD9A9DD5959071A544558FFCF7
          9973EF9DF9FFEF3967EED84229C5FFD3A2FC8F6CFF6B3D48A9F0A5ACF92EEDBF
          A1D1E54BB5454A89EFCB1DF30A1042F0296CDE9BF6FD61F7234AA91FA6E2A995
          AB9A3BA8B3EB341214CA25269DEC67CE8005440C825884E0E1DFDEF1C2DAA60D
          0F6F5BB183F6866626F3572879654D5EA42215B6155D58C0CC3B3F45FA128562
          E93D8F5BFF7EF9F12FA6EA62CF2A5FEEF42A1E85928BEF2B2C014228224250F1
          7D3D56D1F0992916280D14C9F49FA09CEEA6714D0753B9E160F705B784539823
          BA50BA1B3BBB31462C198BFCBE71CDADAD2291A4FFFC598AD951DA5677B26459
          3B76D4C6B62300A85A191528E5E37B1EFFB8749E8C3B80DF5A4FAE5464AE9827
          9B7710A67E0BD652008B8E3DF9407F77CFFDAD93572F323735CEDACDDB695FDB
          4945C1C887A7A9940A44ED18D1780CDB8E636941B2E2512997031CBFDA8BB539
          4D9F730927EF0442228098A796D19A3720D66CBBD3CEA54FEEB22322DE75DB9D
          B4B4B55198CA20AC088B97AF229E4C82F4B074ACA4A4E2B9782597B25BC42B96
          A89782B35707988C7A6473390A453720B0F6FDECCCDB207AA45228403B94F4AB
          1E1008EA13927C7E8CA5D61BDCBA33CDD2B656F253D7E83D778E8E75EB69D5A5
          882F6E62F2F2054D5AC012160A0552E27B2E7ED92559F6A8774A58C904CE5C1E
          AF52A90A40931FF8DABA80508BC09755AFA4C257920852938D12FBE8049BD29B
          68D1E47313637CF0DE7B34B577D0BCFC160A93A3D88B97D0D6B545AF1D273791
          C1D3A45EA988EF16B577755CA2D5838B3373E44A79A4544401A1C9A84838D937
          032A24D7904A92B4A1921B233DFA121BB776D1B26C19CEC428EFBFFB3796AE58
          45FAB6DBC95EBBC240EFC734EB666C5BBD8E586A31EED5CB94F39AC4AFE0973D
          3CAFACE339EACB65947229F925EDC3F75601BE2FA99A0A21A9B705BE334657E6
          25BABB37043577C6339CFCCB0952CD2D74EFFA1C3399CBF49EFD67207AD98AD5
          38D746284C8FD3A83393482DC22BE671F3B3B8B92CAEBE8E158BC8BC8B543E15
          E98702143A5000A8903F11B5F0F5CE3B3387D8DEDD496B7B5BF0F0BF1E3BC6D5
          CC046BD39B35F9301F9C7A17A960C79EFB98D3C4972E0C32A2519AB94EAC2E85
          2F6136EB303D33CBD8944366620EE57AB4A42CEA921005828E1D1ECDF161DF04
          D5BE91D4C724BB0A47D8BA639D266F273B36C25BAFBC8ADFB299E55D2B39FEBB
          5F10B56D5A566F60F757F732353CC060EFBFC8170AACBE7D13D3572E303030C4
          E0E065B2B29E726EAAAFE0A9BEEB2575EADC16D56179D657102A2D80BA1F1CFE
          A4F0F4BE344A015405388EC3B9438FB1BBE76E66339778F38F7FC2BA653B7BF6
          3F453C1E676CA89799C971065F7986F59D6BC965AF136F68E6CE3DF730F2D119
          06FBFBE91B9E66CBB77FCCF18B36BF79ECA13B8031C0010A80DFF6AD84AA6640
          A91A390A85B004B66DE335A679F127CF52CC392CD9FC25BEFCE8333435356345
          222CDAF6798AC502C9450DBC7DF8208DB64D675394F1A1412E5E18A2FFCA0C77
          1D384847D7565E1F19021807A601F7E4D30FCA236FFE9DE70ECF120504E12F89
          22FC21168BB3FBEBDF25DDB39757DFCFF0604F27A9D4A2805C088B88A5114991
          DEF9054E4F2DA3279DE4E3A3CF691C45D6B572F7819FB3B17B27256CA402301D
          FEF26BEF6045A300B5D71094210F108946A8AFAF275197249228B2B8A12138E1
          40553306081DC76209A49D64E5AA55347CE747CC7DF3FBD8B1184B1A96602712
          B8C54A2DBB82D09E3F53BCF10F12C59FCF4F7065B28854181245001189F0EBB7
          86C33123A0160B08E6A594283494ABE18000199E2B37B368ED35BC775B6B4858
          9364AE5F3831C423F7AE41015585222C57B8A33706F8DEFD9DA044984145B80F
          66F2659E3874DE6420140E180128937E6A0F50E17AB36390A0A88D1B1704CA10
          9B4D848129810618600EA25071A8DD9812E670349AA8E936A00A30E406E10D37
          2901D22CD310A1EA5A0CA6E684E3C2084521C379B3E140AD59231716205070E4
          F418538E8B52848D64CE071DF1ABE3170222AAE30621CDF3AFF72143813511B5
          67486E6AE66BB877D772730E04CED82F35F9FEFBD60713E69D36249A9C471FD8
          58EB07531209D982CB132F9E5F380360528C293A8A2036A99FA7F1801BDE1E61
          BA3CBC1FA5166C42A40415CA36C4A69E37A635B89284A2430865E6C3D49B7B8D
          9CF93210CCCF163C2ABE118169C880389B2F9B66440021A11420F4FC9C67C8D0
          1E7163397DE63101A4F61F3C75CCB6133D12300D06529946A2461E7EAECDEECD
          1A081B4E9A6C01B8F9D9D3479F7A682F701DF0943623006C200EC44C4F20CCFC
          4DE3FF3E66765E001CA004C81B4FC20A200177A1FF113EE5983222A898786102
          1620F82C50F37D0BFE03770D8DE023F05C9B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C650044656C6574655461626C653B426BBD8A00
          0005C249444154785EC5576B6C544514FEE6EEB65BBADBEEA3A505636279187F
          F0C3164D44B0587E501E02F2F01184C480B1F84824064230680A023F3444A091
          428D8946256010A3D106100405C12026366D4024680B54A03CDA5DF6D1BD7BF7
          CEB8B3333B73371B0804132639393367CEDEEF3B8F3BB39730C6702F07B98D39
          EED85E686352A8D4C805EE76381B5288160D5A60BB83B5044E034802B0240949
          40822FD870E200401A2863822E0318B5B9D66B46C1289373A16D6A0B84ACBFDC
          87F441762DD04DF3D891CD33A73BC8E465C0E0E0AFCF1A9505E2246C2A3407B4
          339A5229726D739D5BDBDAC7A654FB49B1D214DF1CEE1E0FA01840027AE81270
          B034057E393D003009CE58BECE92A260325A9AB5039452E1A3EC9A3C832008C6
          74C6F5D035E7DBB64DA59969D1533921802E93AC0D0144598486D020FAB7948A
          400B08484D38C134A7AE1ECC3551EEA2EE50E0F9C2143F2640F56F54482CBFA1
          F34B205277EE62147F9CBEA24AA0352F834C3F15CDE84C31E5B6EC5ADA73FE54
          5294CF2F1C9A001975BF0F8B1B6BB068728D642F39CBC8DAF6F7A029B3A7A325
          809A33B4EE398B57A68DE676510AA2B3168E9968DEDE89A32AF2C21228D62A5D
          DA5512D1C072A2D39E05850057195541086137EB01DD885031A97AEB1A6A7232
          32494443487B9EC5D1337CF3261960E23554E0FA01443D40E85C1804D0D044F6
          8784A50E220C851928EC019DE8BD1D5770FEEA20A8409465D1D1B7EDEBE6362D
          80D0D2694BFB19B116E06A2ECF855B3721DF9F525B9507C8E000FFE11F344D19
          91B509860454D7280BFEEAF40701460A5ECD81780AEF7CD671AB0CC83CEAE7C9
          28A4BF8E58A41839BB53A94348464BD49E884A95DC75B383483196504A98E344
          D39C146F251CD84A99E83F731A69CB0475BC0506E13378E6070275007C841063
          D3B06A450054274E36968E5CD71379732AA8AADF99A689931FB7E1C4A285F86B
          F72EA40693A0E294425911C58BC1E00B93428143CB4215CD00FC6FF65D31DCEA
          DD64C0EE5F2FE1DA0D535DA50A8C09B06D7BCE8AF40ABB1210861237C39F19F0
          9EAD5B306DF15338B069032C2B8DD173E62199B0F040CF610402FEB7264EA873
          C5F71D5BB634103436870756E7DD8673C7DDA71A4BE0E8B13503BE64EAE8EC06
          D51BF22866D8B9E34774B7B56246D36C945CED45C3AC0938D0F20192838348A6
          2D84BEFF04F54F8C75A1F73C1A9F7C14ED878E2F7DC6EBDBAD08002AC5BAE8AA
          939D25296C3C420812C1E118B37215BE5DBF0E8DE347C2EB4BA261F263D8DFDA
          02C66CD43F5E0BF45E40F87A0447BACED153A6F9F657F15897EA0179A1141EB3
          5CC444CD59CE8742911EB45C18397B1E6A56ACC0C1133D18E8EB87BBAF17931A
          1EC1C4096381DEDE0C7818BFF5DDA05DC964F3A7D1E8360031B7F3A48D242CA4
          6D45426CA8FB9F211C4FE96604D14D4B091861306D37864F9D83682C819FB7B6
          60DC88A12809C701338D1BFD111CEF8BB063F1C47B5FC6626D1C6EBDDF4FDD12
          299D4A267E5ABBE3640385B3C100EA780B566FEF5411534A7373E5DBFC7907CA
          8B2DD4FC1B41D070C106908AC6914E5AA020806130EAB813C4A5298413F1C8FF
          6CEE3BF8C7EBB4B900F8160602F3EB43C1E593EAEB5CECFC05440622B0533686
          785CA095211CECFCDBFE3D165FBB339EF810C08013C4E0729BDF08A4700DDF92
          50C5CB633CC56BA6368E7733DE70D73269BF1C669451D4951513AFC70D16F463
          4FD739BBCB4AADDB3538D84270FBE356BEC64BC1D0E4873D9EEFA6CD98E866DD
          3D18B89E01BFD44F8F666A4E1923E33CC52B6ABD2EC35BE48251598EF65397ED
          0E2B3597D7EFAE45920BADACA8FC7A6355153B5EFB107BBFB2D25E5056D60C60
          2880AAE74A4BDF5D5BEEB7F75507D89AB232D6545ADA0EA0FA7FFB362484B839
          D0F260A8B5CA65CCEC34CD355F44A35B789D25C1E0B32543DE1853E45E75D1B6
          F77E9448BC06E0A28CE2EE656375356403573EEFF3CDE080008CF58100D695FB
          219BB46296C7F3348061008A9ABD5E1466E0EE33916B68CA32A3604F10B1737B
          F7FCF3FC3F67ADC44826DAC37A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000017744558745469746C650044656C6574655461626C6543656C6C733B
          67260E50000004AE49444154785EC5574D685C5514FE6E4C53AA69D1451735A9
          A46907BA15DC88910A2DD6B6082282D5957F509B8D82A2B6EA22A21591C62235
          3FFEE1C644220A4A9BAE0AB5B13B71D18658C719D3D08889A634994C679C79F7
          C77BDE3BDCC3CB901953063C7072EE3BEFDCF77D73EE77DF7D51CE39FC9FD64A
          417903D072FCFBAC7E6E4F17B4494831358C4CCCE2899E8E00C09C31EAF3077B
          3AE1A8D2298A49FEFC553C7EFF56703560E91ED0FFDD65F43F7BF726002500D6
          796B8598A2B071C3BA80EC54F260BABEA37D3D030931EADEEDED6D00433BAB00
          4563E7EBDB428D83C2F5E50A9CA52A7800B410010058498081093D0CD8390470
          B9237907C74930B00BCF609A042E96264093BFBEF007FE2A78B6CCC831D24767
          F2DC7B7AA8101A1CCF0522CAFAC8300367724C46E6D8649E5A854002F6D87D1D
          800BD7FCB0DFD1BBB73B3424808CE7D1BB6F7B524EB5A403E530783A87E7F7ED
          0014A5135F2C56F0FEB7BF206DD20E45CEED94762919739AC154E83FCF6170BE
          C7E6ACFC0872E900796D070444C4265AE071484971A0E7B856F42182714C68B5
          0E80172A05CE7C99122B9A91950A9D61B141E8B318258A37D000F0E5B9592C95
          AB61229CACB71371501A07C6FA30336260AC858D348C89A0A308BBFC78D09D14
          F55B26F65F44F8E4AE4E6927C022CCE3B0171B20EB09EB70E52B838EEE6E5863
          62375AC37ACF5FBCE4459811ED38E0FA8D2ADE1B9B04599D6DE856688195CD52
          F64306A7A8608D4D804BE518D830091D5543FB45B8E15AD52190DE056C0C2EF7
          789CB45D1B18A3610D8DF95A6B992A1E08D55B0211966CE29A2571FCC7E82806
          B69AC1E3B181ADB286D26704C7DA6D1892D687CFCFCEA05C31B2DACC61603C17
          8F135E367EF00391C6F4A5C95878C6BBD6558AF1520C8D67539D23B7CE35EEC0
          D3BBBB642B922379DDF6EEDF91DA19D6F93C3EC061169BDC03864E6771687F26
          E488EF62A98263A393F535400C0544A8A75F3CAEF62524D70C2AE26593A558F5
          45C44C9D30E0C0A0BC8F0580356343891CE150AC13AE11667545E8BCF9565561
          2DA49F3C5C5CAEC2050DC86FA17A0727DF02DC393A7C12AA0A2BF02D56EE7DA5
          1475A2EDC8173F9D6A696DDB6DA9D83A3E42918E9C772C2AA90113E13A59AED8
          09BE522E4E8CBEFEE023000A008C7C1125E4F4BB4FDDF33077850829714062C3
          5CED7DF9E515FE1C0B3D160280E1A208695358DDD41AF346C051AB0176BB46C0
          7523994C253E90BC537C6666E65600FFAC42C2D588700D9FE6A1706CE7CE78DE
          C16CB68540F73EDA0313599CFAE61C00DC7272CB16A77DFE85B939D4B316DC9C
          A5BEF14898465B547E9B0281D2733577A391B5E2264C79A3B9ECB7196B9283C9
          3B836E7A717E9E6AAA2F2955F1646D930848E786B76D7B7B3DF08A7116868F65
          1DE9B803FD9B375F25228B5A9F786769E95522D2EC25B087A6A7FB16A2E8C3ED
          994E3C74E05ED8884E41833D5D1B91E9BA137351F4B1077F0B8069BA069C3752
          F9CBB3B36F4C5CCC0D4CFD3C85D2E5C9F824CC2E9470F6D7E94F8F170A470014
          7C693309887DB2F52E0BE0C69BF3F3477FC8FF399C5B86072FE3FCDFC5CF4E14
          0AAF0158EA6B6F17F06613D0D6C06F3522513C76EDDAD11FAFCC0F5D58280E33
          F82281DBC6DB1B4DF9F79CCF920D7CD697A5ED8DED5F4215E0F38EDB54F50000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000019744558745469746C650044656C6574655461626C65436F6C756D6E
          733BBAF2A0D10000045549444154785EC557CF8B5C4510FE7AB21B89668362D0
          98046322E61FF0E045BD78088A372F1E3C092AF110C483D1E0411783107FC428
          2C89E8412FF112837F8007595150413066359004DD84ECAEBA7132B35967DE7B
          5DE5D6AB2ABA7566F7B13260414F3745CF7C5F7FF555B11B9819FF678CC91656
          0240EBC8E973D533FB76A38A4ACAA99D9CBE8CC7EFDF010FE77C75FF93D8BEEB
          2E50BF57E7583E8830373F879B8F7F040DC905F9C41B9FCEE0D8D3F76E01B00C
          809899C790223018139BC61D191C583E2071CBE61BC0109444EC0F8A602601B6
          5DD9518C2BF7371A590623E0CF6EDF898FCB63019029901390304C4E078FFCA8
          8FA57A71BDB3129473AC0003E6EC374819B460314880728D4536DD3DE5BBB3E1
          280AB0926003972D92F267BBE74A6822C062800DEB4A77ACAE2EAD63DB5B0548
          49909061908050AC1560F6A2E6E479A8091D313093335008538F9183A7D29083
          13A907C815880A484E564D28BB630D2B4102C9CDC683175CDE1823C881399521
          56315333A9C756E3D53DC039B8AE1000CDE765089A17A06846F46EB0B20CFB2D
          CAEA3B5C01474ADA8364D7E5CA3B49AB752200EB0651C02BCBB96CCD04FC3A67
          6E0F0A6AE88CA4468C51C1C9BC00B6AE480AE8DD54B686120C7841804D1951C0
          C0490D4555A592DBCBD5C4ACF9F488543E93776D024EC20F0333299DC914A098
          4F436D4F0FF6D5D086123ECD52CB30EBB22D758097800032F0B49B37DC2BC907
          9C3C105699030EA0EEA72498269D186C52C64A15A83D0033A22BF22FD5B8D103
          2E51D009C6790B29234EE600B10E221D40B9029A4730E502A781C48D1E60573C
          A3AF8904CE7E5602310D22101B8998CCAB61A5685220374ADE42724E44BC3B94
          80B52118AA047B09F2EF3AF1350838767BB90011F2395C83B5BB05BC423E2F28
          3288BD051930131311DA4B7D7B44480A5A130F1030A45896FDCFDF3E7DEE21B2
          3AC8EE653972EA27902641A6C4A314F1F3B7DF795BD8B0522F1CFEE44C9DA7E4
          5F14BDEBD3008459CCEBEE7F926D00306EA45A66165FF0BD313778F620035F16
          2EF627D93F15B04B253C1C64F508EBCC3B060FF5802D5A27E0F8C77BEEEED75E
          B0E1F4D4A5D91B01F4303C78C003C34664D3974FEEDD5B033E71FE7C4BC01F79
          EC41C4B2C267A7BE8094F3BD3BB63111E3C0FC3CD68A16FE6310A9DB01844884
          AA2CB13CF3A3E75A313224DF1463587FB869C76CDD24A0B1A850F64B54C400B0
          E5B9DF16E44EF17C087D66A6911170E5A676DDF9DA468417585E2FAB5FA1EA15
          208A786BEBD64BC48C76ACDE39DCBE7650888CBA04F4ECAFB3AF2E96E5BB7BEE
          D98987F7DD875894A88A020FDC3A86DD3B6FC34259BEBF023E09208EDC03ACAE
          ED1DBC72E5E5E9B317A7CE7E3F83A5333FA0EA55B8D029307DF1F2076F763A2F
          01E830F36809784CEDD84E00AEBFB2B070E8CBD9DF4FFC526CC0856E81AFBBFD
          0F8F763A2F02B836393191838FBE0B8EDDBE8D002CBDBEB878E8ABB9ABC7BFE9
          16278E76BA02DE9EDC3C11E54E538CE4DFF3108228B9C906D55F49F6E6F81BCB
          4422AFB665B3EE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000016744558745469746C650044656C6574655461626C65526F77733B63
          3D397D0000041449444154785EED574F689C4514FFCD26A5288A059BDA34DD98
          4D022D55F05405A978D393E045D4A307452D826D402424C146D083E829685110
          8C07C593E841106F6ACFF650D0185DC9B634EE4A139A6CB2FDF69BF7D3F9C7CC
          970F895F28F4E2B7BC7D6FDE9B99DFEF7BF366765691C4AD7C6AB8C5CFE06E00
          4AA99B8DA90090A423507D70D4653BFA766913405E9540CDCB8001D8B344F0B5
          2A0494017FF7CB9FBF53B5814709804208095A51DE169070B60002ABAD5F081F
          1388B839AB6660C080BFFAC46439C2E4DD40EF2A869184BBBDDCB6AB6640112C
          63FB28033815983062824C1B03B6338DBB6EDF971228573CC912899D2E06CDA4
          A59800FA782456CA4EED8BE3C761E4F363C72CC8E2C4C4BCD11F8F8DE1A3D151
          7C303282404084113980125020C23719C34C49AA9801302110DEF6D9A525037E
          8E22B3C66F8B858416894B10F055C00F6936BA383153AE917020186B80249EF9
          07FC9389F1F9B1C6E199E55FAF00C0BEE7575AB564FF6A633FBEF0127EFBAA8E
          8D66132202ADC59287B145AC8FC626AD86D6CE0F827E1B90B4FD8E2C2F3B0216
          7C7C7CBED13832531F3D845F965A387F7464DB0CCC8510AD71A6D319743926EA
          271F846E340013B322A0D6568BE4A01648AE21165CBB98D68EAC69E702A18E19
          F87472F2DCBD63872D78BFBD8A870E0D62FFF87DD0B91BFCCD8F3FC59D40B106
          B77B108A0313A7B58E60223A92883EDFDFB42512C8B5565AE7C8FE5C45B67AD5
          0EDCBC7411D2D7D0B9400B0B4548C2A5D3DA5E441B2748291233120EA8902D37
          2E1278AED97CE37D9D0FDE3878E7EBF7E41A3FB433E4C99A4A528442A2F01123
          06342C052390F5B9FA08FD402F290100F2F24A6BEEBD6CB8D6BFFB8ED7B4F470
          A6DD1E02D0F3BB44E212107F5CB880EBCDDFC3DBB8945AED332171F7D0A5CB62
          8AD108FD881381C087F53A5F68B5F2B3AB57E7DECA8706F6835300B6DF3E70A0
          6B27A260EEFA862DC2AF4F9FC7ECD3274096B75968D1FB20B49C05040A7D89F5
          CD7E3C070CD385E16102C8A6FFEACC76B5BC03201746B63B4F4246B808CE14DC
          6865EC12B8E3932CC18B972F5BE33440A5546F6EEDDA3400995E5F4F8F6765C4
          92214A93C433A968936E2803391FE0BFDD8848FA8B42F9894508309C7E64FAE6
          C525A1EBC3424481D5AE646502DF5EEC60A5DD85C42CB86204214C7FFF534DD0
          C7C48F9979EAFEFF4C40054D128F3D3004CD8321C5693A639B84240182490C58
          EB667BBB0F480065BAE88C3F4C1EBC58AC09CB30967BB896972720187DFE2D19
          EDD0478A5B95CA462B6780464488CD1B7DF432D971FD52F1CDAD4930F841F711
          05F83B0158AD08E925EB6D75BF7FF3B34B8F84A2120FEA4EEBE003C852362229
          CF7D71EAE14A1910005B0BAF9C7A12C06D7E5C2DBD6E97DB655F3AD7E2142B13
          E803D800D08D00F149DBBBC4E848543F07C48BC24D7CFEFF77FC3773E8BE96EB
          44BA840000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C650044656C6574655461626C653B426BBD8A00
          0005C249444154785EC5576B6C544514FEE6EEB65BBADBEEA3A505636279187F
          F0C3164D44B0587E501E02F2F01184C480B1F84824064230680A023F3444A091
          428D8946256010A3D106100405C12026366D4024680B54A03CDA5DF6D1BD7BF7
          CEB8B3333B73371B0804132639393367CEDEEF3B8F3BB39730C6702F07B98D39
          EED85E686352A8D4C805EE76381B5288160D5A60BB83B5044E034802B0240949
          40822FD870E200401A2863822E0318B5B9D66B46C1289373A16D6A0B84ACBFDC
          87F441762DD04DF3D891CD33A73BC8E465C0E0E0AFCF1A9505E2246C2A3407B4
          339A5229726D739D5BDBDAC7A654FB49B1D214DF1CEE1E0FA01840027AE81270
          B034057E393D003009CE58BECE92A260325A9AB5039452E1A3EC9A3C832008C6
          74C6F5D035E7DBB64DA59969D1533921802E93AC0D0144598486D020FAB7948A
          400B08484D38C134A7AE1ECC3551EEA2EE50E0F9C2143F2640F56F54482CBFA1
          F34B205277EE62147F9CBEA24AA0352F834C3F15CDE84C31E5B6EC5ADA73FE54
          5294CF2F1C9A001975BF0F8B1B6BB068728D642F39CBC8DAF6F7A029B3A7A325
          809A33B4EE398B57A68DE676510AA2B3168E9968DEDE89A32AF2C21228D62A5D
          DA5512D1C072A2D39E05850057195541086137EB01DD885031A97AEB1A6A7232
          32494443487B9EC5D1337CF3261960E23554E0FA01443D40E85C1804D0D044F6
          8784A50E220C851928EC019DE8BD1D5770FEEA20A8409465D1D1B7EDEBE6362D
          80D0D2694BFB19B116E06A2ECF855B3721DF9F525B9507C8E000FFE11F344D19
          91B509860454D7280BFEEAF40701460A5ECD81780AEF7CD671AB0CC83CEAE7C9
          28A4BF8E58A41839BB53A94348464BD49E884A95DC75B383483196504A98E344
          D39C146F251CD84A99E83F731A69CB0475BC0506E13378E6070275007C841063
          D3B06A450054274E36968E5CD71379732AA8AADF99A689931FB7E1C4A285F86B
          F72EA40693A0E294425911C58BC1E00B93428143CB4215CD00FC6FF65D31DCEA
          DD64C0EE5F2FE1DA0D535DA50A8C09B06D7BCE8AF40ABB1210861237C39F19F0
          9EAD5B306DF15338B069032C2B8DD173E62199B0F040CF610402FEB7264EA873
          C5F71D5BB634103436870756E7DD8673C7DDA71A4BE0E8B13503BE64EAE8EC06
          D51BF22866D8B9E34774B7B56246D36C945CED45C3AC0938D0F20192838348A6
          2D84BEFF04F54F8C75A1F73C1A9F7C14ED878E2F7DC6EBDBAD08002AC5BAE8AA
          939D25296C3C420812C1E118B37215BE5DBF0E8DE347C2EB4BA261F263D8DFDA
          02C66CD43F5E0BF45E40F87A0447BACED153A6F9F657F15897EA0179A1141EB3
          5CC444CD59CE8742911EB45C18397B1E6A56ACC0C1133D18E8EB87BBAF17931A
          1EC1C4096381DEDE0C7818BFF5DDA05DC964F3A7D1E8360031B7F3A48D242CA4
          6D45426CA8FB9F211C4FE96604D14D4B091861306D37864F9D83682C819FB7B6
          60DC88A12809C701338D1BFD111CEF8BB063F1C47B5FC6626D1C6EBDDF4FDD12
          299D4A267E5ABBE3640385B3C100EA780B566FEF5411534A7373E5DBFC7907CA
          8B2DD4FC1B41D070C106908AC6914E5AA020806130EAB813C4A5298413F1C8FF
          6CEE3BF8C7EBB4B900F8160602F3EB43C1E593EAEB5CECFC05440622B0533686
          785CA095211CECFCDBFE3D165FBB339EF810C08013C4E0729BDF08A4700DDF92
          50C5CB633CC56BA6368E7733DE70D73269BF1C669451D4951513AFC70D16F463
          4FD739BBCB4AADDB3538D84270FBE356BEC64BC1D0E4873D9EEFA6CD98E866DD
          3D18B89E01BFD44F8F666A4E1923E33CC52B6ABD2EC35BE48251598EF65397ED
          0E2B3597D7EFAE45920BADACA8FC7A6355153B5EFB107BBFB2D25E5056D60C60
          2880AAE74A4BDF5D5BEEB7F75507D89AB232D6545ADA0EA0FA7FFB362484B839
          D0F260A8B5CA65CCEC34CD355F44A35B789D25C1E0B32543DE1853E45E75D1B6
          F77E9448BC06E0A28CE2EE656375356403573EEFF3CDE080008CF58100D695FB
          219BB46296C7F3348061008A9ABD5E1466E0EE33916B68CA32A3604F10B1737B
          F7FCF3FC3F67ADC44826DAC37A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500496E736572745461626C65526F77734162
          6F76653B5461626C653BD57466D80000044C49444154785EC5955D8856551486
          9F7DE63832460C16DA045D44543AFE05526492E45D8150A18198085241681A81
          4120641015FDDC686981366479D18550365A12789741041A928953861046684D
          CE8C333473BEEF5B6F03EEB3D887830E3350F3C261FFAD9F77ADB5D73E4112D3
          899C29228C23D16F4932A6808C49E0FECD47B86FD3E1D279C7E2F5FBDF5AB0EE
          A3B7815921846CD1C6CF59B8F133FE33DCFB6C2F4000662D58D7B3EBA99DDF6B
          CDEBDFEAEE351FEC013A816CFE86834C06219D4F24EBCED7EE7D63D9B27BB62C
          E9EEE2F7FE31FACE5DE4A71327F6FEDAFBC2766008684D6053E51712C1CC9DD4
          94FDBC63FE13EFBFF6C0F2A59B1677DF4AB329FE1818A369C6B97397C6497CF7
          F16F5FBDF4323000D835825324D8002C94C6777C7AE618215B29811012483ED2
          6A35680C0D71ECE45F715F3CB97A2997060B8E7EFD2320CCC4434B3A99716327
          6D793B260160126E0BD1288A6F3ED9B6E26160ACEC822C8C3B7F65ED3C4A48C2
          2168C9F8E5C200CFAF36FEEEEF67FD3BA769B48C66D3908C9EAD773267EE1C46
          1A6D74DF3E87B6BC0D843B0590E0CA6883EDFB4FAD881D54940482C5A8A1AAE0
          63C818B39CAECE1B288A0299F8F37241CB840966DF349BB9B77471FEE230848C
          6653082102E8EA2889D1C290BC0383D75D06011072E60844847098192D893C87
          96099930339711A99E509251798084C8C2E570E7E0228901379AE73992C80864
          B1C63366B40354D2AED416E59E6F84F476B79FDD96FFC3F5E0E5F0B48202C2DC
          A897CC521950DC838062B44BF77133702527C11D9B0F0216D365A5266060C213
          280333807856EA084C208BCE535B42F1ACAFE745CF400EF842D6A071FE103558
          292594EE79CA45752F462B55BB4AF1428ACA1DF005D66022040B6038C475A010
          65E2DC9DC579EDF5B32635B854597301A961B971DF0C011004815533E3D9F012
          2438FFE1D3D4A0C4910F60060121E11FF11342D1A95C3F2E708201087E07F62D
          3EC99B1B16D18A1AAE9890DF73F467363F7217261C421527EFF59E61CBA3DDBE
          270305B7C9E048C18E03A78007AB77208D440AA979275E69B5784AF50C8BFA49
          BF435C4FF0100925A1A8F6A808594A48C8AA9955F0F3A8AB48522EA76B758124
          0854045DCEA3F390900284B404699BF97FC0A3C763F31EF03B10CA121C3C7E81
          4B436328FD7DCADCB910BB8FF461B1562625B59697E4DDDED3D5204C49A654EF
          02209860CDF2DB3C9A288B1161B0FBCBB33CB76A1E262A6D688210D7BB0E9D66
          EB630B2B35F7B9C4C070C12B077EA8132096C0FCFD8E0725A1E011B965258286
          D7D74B272A91A777B246C09553E74A9C2872F42F54898270A749D849282061C9
          564A40120C0E17B4BC5EB5B6C1242E8F144E8E94A013B8DAEBF5DFBB3F8E252C
          D2A20DE87866E7F1C3F9CC8E9552D95E42B2EA254BD3AC640DE03A690BCBA323
          045F3746878F7FF1EAAAC781A11049E4C04CA0BDF67FA88F4CEAAC3E6F01A3C0
          0850A4C259FA2E3011A62E23C022110B3585FF07227D01A71319D38C7F0163E8
          88E73E429AC60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500496E736572745461626C65526F77734265
          6C6F773B5461626C653B5E1BD8D40000045B49444154785EE5975D88555514C7
          7F7BEEA4851FA4044A4A94850E941261F681431284823DF4108804154505F568
          41A92415214DF4120941055166C4F4205450262694F9628942EA8469594DE18C
          CD87A3DE39F79CF54FD867CFE270B88CCD8B0F2DD8AC7DF7D96BFFFF777DED73
          82242EA77400FF6F02A1CDDC6592E753B4511AC1C1E928759884DC24BF27B517
          50002DC042027FF1E323BB091DAB24104202C9B550D406465C43602AD7AB7390
          3009A8AE0BD1CAB26F3FD8D0BD1A18EF4CB9102E826F59B7C4694A15CE0AB0BF
          EF1FEE5A3C17E1123184145010BB7EFC9BFB6E9D0F01100934EDE56CB3C5C6F7
          0F75039D4096080443244C37A0A20FFD3AC28A9BE6FA737090203038F6E728F7
          2E9B9780110114B5249A9921410AF944DC6589B412F3A82925858212500194C8
          565D2FC0ED928D938E2B844A194A3838F8163F20820221804307E4682539CF23
          27E36BC813732204427CDF37C44FBF9F75B606C230FFF7BCFDD52F48F2513EB3
          042AB1EDF33E84304F3CB0F2376012C9F3890092B87BC91CEE5C3CC763EFF107
          7411FC044FAE5E04262060082A7BC55B5FF4F1CCDA2E843C475C333C36CE96ED
          876B21086DDC558FA3956E871A3802CC6D1D5C982AA7D70924969E582E4A2565
          DEBA9217254FCA88EFB6F201E0A1F42D74A6584486D5D2416A9344718F131524
          AF181E77F91E00A95E05016800571EDBD039467B7177CB0946007377A73DE67B
          48A0E62491B8ED1DE601C3135500B0E8E95EC0900458B28C7373874A06664489
          732516966215B59F25543EEB7BEFD97A1946E62D5A27775213C38BD5D72A0DAA
          BA2620F83AC4B902780E78123A508BC92458702040B49794B1F279891CEA5500
          80E5ED5F5B822715F8C129171C34B54A451BAB7A26AA6A230AE5E0E4BB8F5313
          39902B308380F032AC96B1CC3155ED6A89603507B6751DA0E791A5DEC701E4E4
          D34D77C3BC995C685EE0814D7B796AFD724E0D36F9ECCBC3EC7CA59B19336771
          E2AFB3DC78EDAC7A370524313C96B1E5C383C03DD510204100AB5C281052DD07
          A5FB803CCF29245A85284C98892CF3FC513AD209445B4F8D5A152055DB67FD86
          F4385B2164465E141485611607D566E574129E8401543AA1E33332965198AA6E
          C36FB9F16C9CA121637464182B44D612B98942E2F4C000ADBCE0FCB982A1D12B
          081D8DFAF52E080E6E8980807CBC797EEF4B9F1C5925095902B5140A8A3C6776
          C8F9E6D09974159315164350C0136FFE8C99E8BE651663613A8DC634E4590FC1
          FB42AB39F61DD0F497D248643A30ADFDDB310D60C6A2FB7B36DFB172E5C33777
          CDA7551803C3D16B7F9C1AE0E0BE3D9FF6EF79F9556008B0366FC545097E0EC8
          1C24027B52B6EF08B3AF5FFBC6D6652B6E7F6CE1826B284C1C3F719AA33FECFB
          A8FFEBCD2F00672248DB730458B9C7C2143E3E1AC0D50BD7BCF6FAD2E52B1ECD
          7271F4C0FEEDFDBB373D070C3AF8A55C6DF09F3E4E173FD48B10C777AC6B0073
          17ACE9D92AB38EFE5DCF6F0406AF7B70470EF05BEF7A2E55A6FC751C42680057
          0101B82029670A72D93FCFFF05E4C6A5F8004FC0C00000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000022744558745469746C6500496E736572745461626C65436F6C756D6E
          73546F5468654C6566743BC414B4BB000004F849444154785EC5575D6C145514
          FEEE745A040C89A9515AA30FD0A885D66889FA2446C1108D8A09093584A44613
          A3427DC20423F407C3B3026A7CB00F4A692948E4CF072286C883468CA660292D
          A51A021A13302EB0DB766767CEB17B7FF6F43A0E491F8C2799DCD9337BEFF7DD
          F39D39E78E6266FC9F163A87520A6250B3005098BDB1BE8480007B9758F6BD3F
          66FBC51200310002C0A1BF7BA8773F1F3B0EE009663634B97C11D69E6A414091
          81624B9F19899A83DE877E0031690062808961E697479891582326717CF2E337
          1E59052032047CD641197CCB9A0689951D47BF8FB068C37E200801260DCE4911
          E31FADC3F6F58DEE8F161038F6D31F58D5B2D0B82D89FC448CADFD43CBADF4A5
          7F95C0EE3C4580821A2008108DF619AE4C60EB2732006005377BE4F7EB58F1E0
          9D95559814A64A86B8DDA8B237BEB1DC40E8DBA154F4FF4B8937871583350987
          03898A32248924373222E01603C072A3FD9CC033E1E73167491E3014D8ACE19E
          6612504E8293C37F62E8E275836F119ED43C62085505C7F1C32FC72C9E017724
          761E395F8195E79904245ECB97D4E2B1C65AFBD3701EFD9AB5EEBE50C6B5E199
          06AB969540313E9806DFF8ECBD1ACA8003B97C11DBF69ED504B2724091612BE1
          5282C914236DEC24B0E0463662475036C1402A02C1C3AF1FC1B2570F57088C5C
          B862B563BBE84C9D29B3AE59085F062F35EC6FF60B55A80B847536B7F5778C8C
          5F45AE10410555107313B393905DAC95719221221BC98840981063F0931754F3
          4BFBBA5B9AEFD9FCE399DF70E94A1EC51283ED420A0AF31900253E30C326DBA8
          0511F950F61F3E0749C04A14BC1C08CBE04D6DFBB7B534DDFDCE038D753875FA
          325ABB4E000C0D0E5B42BFB883C19C206D30C9C60044E769F011B43FD708961C
          C15F8508DD7BCEF811686A3BD0BDACF9AE2D65F0DC448CA7563461E1821A0D4E
          09EB312106BE53400601F8E0120D2FA18D8E690938510911AE4DC65AFB24665C
          BC3A094A0C704C0C92944E61DBF524D3A570093FB9C4EF089CFB6C6D57DCDA1B
          16A692CD75F5B53876FCE7CA4E6437C05BF52E07D204082C505010B0748F60F8
          BD2004406303EB3BE2353D61295EBC8998F1E9DB8F825535984993088200DCC3
          99AFE1AE43238604B3573D771E3A0B72119156E94BD0B06E802FF4B5C6BF1E78
          A5332EEEBAA56ADEED1B17D5DD86B9F3E779DA5E667849C8106B7FFE7EE9FDF6
          E18E69F037572FB13EC33D375144D7EE7F2421116351EB5EFE65E0C5D2A5A3ED
          DB576E3ABA71C1AD73505D53258DC8E940945D84D87B3DA5327AC9A0D2CD68BC
          BFD59D88184069E97DF508C3D06DC5EB74596F01136CCD97B64C338988044228
          A317B00A02A3B993CCE99A41C0ED472460891C6BAFAD924A24BA793B067ABE1A
          C78DC958928A194F6B09D87BA76143FCFEC161C0FAC8107049E8E471A39C88B2
          0E24C4C0CB2B175BB622C1F9139912E864D3E05C39B362C7C121B4AF5EEA15A2
          5C3E4267EFE0CD4F446E065598CB029C752292D8826CC4C4A513CF93D4EB05F0
          3491C91EB8134EE78698744C21EA1523AFF4F98BA63E4C04DF848AFCFE8D2089
          C071943A94061421972FF95ADBD67CAD10A55BB2D7D78500DBE845C5A9C237DB
          F60D3FAE23412EBB09AFA11A637DEF5942525A4955A373CFE94A2F40650EA363
          F7A04864C1A3C91BDF0298746A29F7509962500D602E803900AA666A95F9B9E6
          8F695FFAB36C02401EC014000AFD74420CA06018A6174881CFF699443AB62352
          9FE7B62A2AFC77E601FE0D7F06CAADC4E3767A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000023744558745469746C6500496E736572745461626C65436F6C756D6E
          73546F54686552696768743B19339848000004E649444154785EC5975F885645
          18C67FF3EDEA76E3854A985D58585AFE212F2CA58B3585282945A282AC8B2208
          C93F4B5014D2666037D54DB59A446541C61A1A89DA3F2A4257B0A45003955DD7
          5D1531166B6D77DDF5DB3D7BCE3CC1C7705E86F31DA1207A6198F9DEEFCC9967
          9EF779DF99D32889FFD31A9D73C486A3DCFEFDB3660214364E23662E6A66E5E3
          B82FF79B65400A78400500AF7DDEFD03B04C528009924702FBADD0E0896377D2
          E0137040780689CC35B17DFEE1304FC80B0F6469DAF1DEDA45F70389734E9268
          34B4548065AD0FDF1A7105F073D76516CF9E123C2EEF4F1F4D98B96E37541A41
          1E24948DD1B3ED71DE7CF20E0410400C5F4D7965E7892581F571A01882B0F302
          80A3BD032C9A3D39F74A00C2572642A542D2D50E38904750F3A75EF6BC778C8E
          7B90081B75F500A078004E2017FC0E2150FC9CC6C73003F92CFE2D900321BC37
          6D94301026394036906D267EB10065653A473894BF0C844A01B810023A4EF573
          E2FC1002DBB1C4BB5FF7A080C40B40DCE700A5E4E65CAE90B6FDA76D59136F19
          00E36BC9DCA934CF990A8449C0B66F7A59BB7C2672262A01670E08E40BF4C8C3
          FA15B3C1195303C3636CFEECA4A57BBD1078A31B214B2F41140543827C4AD194
          03114238BC84F71940A55C031E1CE04D6C790800B0CE40C997973B639634CBB8
          707100E03A600870F39EFA4271168848E9029CB3C5C8D3D4E57EA82FC2D1C480
          29ECAEEF8F2AB31EDAD2DABD67C34B40E6BDCF621122F6FFD2C7B94B5763F53B
          CFD62FBBF3D813A85D2EC0D2CEC225E8EDBBC2F87882CF3C5E62B45A455E2CBE
          7BE11AB1353BB367FDC6CE1D8F0E170AD18ABB6E4002639DDAE2EB1E9C05C8A8
          F5E2CC412165D4B3356F1CC24B48568A25317FCE7486AB0BD6A6599B3BB7AF65
          63B10E4482135228401272180341CC94007866F5427C06BE167FE1556B64A998
          76E314E6A50B9ECD7C9B620060C243856A165C362E11A10417FBC7C8BC486B21
          80D47BB254359FCF4435C990BC8B44E825A3D992B81012C904691A8801ECF9EA
          78389F94372F58B6741E3D672F71FAB7A31F5CFCF685D688013CECECB8C0A5C1
          31632150B2A556D9846459F280549A861FBFBC946AB54A9A8E2389E1A1219E7F
          BF8BFEBECB741DFBF5A3DFBF7B712330186581C7F358F30CAB032294D52E5A56
          DE16A5A317F47610895098CD9C3E093429F7FDD97F19A9939F3A0EB4F7FDB8A9
          15189CF1487B56106160D7029D83317E6D0C784FC1040D950A92F2906434306D
          728523BB36BD0E0C0259FDFB806D3312A41D4C961D40691648F1B9D134B1899B
          6FBA9E2330047880F3BB571701502F1384B1E030802500042817B4038173155C
          E30400517E1CC3F6EF7BB8524D41B21709DED9DB19760E847EA5F2B31959BE22
          89B6BD278D352CB6D73C8CBCE0E97B6F319A03DEB7F775D2B2EA76F0C68A179C
          3D541E820DABE646A93B309CF0EAA7C7AF7D230A33E2D31090AC12C6371CEA97
          62115DE3EC46ADBAF701872D44A11CCB942F5C7C1D035CA58230739586685E2C
          2283588F014935AAF079FC6DFA5F230940E4AF64094A93C2A5B4E213064792E2
          F11E9DDF0640800792B1D191839B779DBA4792DD66E49160F3CE13C80B1953B4
          3081EEF6B708CC9A3EDC0436ED380E463B9248AA570E03D5C29751708C7EF85C
          F32AA00968886255F2B9F649F4BF6C4C02343B62CB80ABC03090DAB7A1B19C02
          2340B5FCDBCEFCFFF83F633A0D7D41033E34C77F67921439FE063454E5DFA597
          C7BF0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000017744558745469746C65004D657267653B4D6572676543
          656C6C733BDFCE3B440000044D49444154785EC557CF6F9545143DD3F7822D52
          408D500956A356511712AB0D0B3106DDB8F0C702E2DFC1828531C19DEE8C3171
          A10B17124D34A8544C4A6220316C6A83228995F8830AB5512A54284D3152E61E
          CDCDDC9CCCBCB8139CE4CB37F3EECCBD67CE3DF7B65F173E90F4BEE6837A03DD
          12B44F0F708DC118A0A70BA0EFF5B70FED58B366EDAB7D9DCE2828883E2F2BD2
          11F99AF1031248D941B781C509B527CE205BFE6AF1C2F9975EDEB3EB30007601
          74AEE455FB9E7A7CCBC6E14DEBD18EA91373187B6873CBA183F9F29B5F30B6F5
          7668684C7E7D06DB1EBE4307CA383DF7C7E8BE8F8EBD0B6018C100000FBEB87C
          D577275D103F9F398FFBEED9581CA5CADBCC3FB62D2343001B5302666617F0C0
          BD9BDAF8B873F3CD48E0068F1B1AA049174A417214461DA72C3DFB53933A90A0
          E7AD574A34869BD48DFD6CA0B25EE872D020510D6D222A1375D0E88FEF120324
          268FCFE2F4EC8276831EE0E49F7BF0DDC14A9095E8A60F448C109C56DF7E22E4
          BA24815B84CD1920896D5B8771FFC86D25BE204F8F1B9EDFFE44EF35E530B225
          7B6303EBDFF71FF9A265408789E4F199E83BB21B89C5CB672BA1B99D0AC44271
          28B24E028319AC5B3D041A5B064CE903C194908A5366C268F01D244257F465B0
          A59A8F5E53F713864A3D56CEAC19300B87C501C59A9105A055F927832F080028
          5084F40716DFE53266BD1A383A750AB3BF5E500494034658538ED0DC6DD10752
          08D5A4A3E89CD1311D40CB00416C7FF46E5C5A5EF115C30EE2F807E5F634C56D
          8B95413C816086115440DC62E62000407DA0E9E1922E90ADD046E53A55AA17BD
          8186C5AE0A51A333F432009A1B211989565A3924D4DA1F3843A052BC14C85AA4
          CE405305299C873FF9852B964601E8ED90A23BE93CA9BD2157AF009AB3DAC3C0
          E7477FC06FF317C3B5AAC07396FD70DB5AA95B432F6990F099588992CFE14B22
          C4938F8D6069F96AF1AD744CBD433F6421ACB099A74814D70D1946F50459E197
          C9EC61A0F9A723152B92D365E60C9458020107D1A424BA030D54BA040C19D9AC
          D5006B1699CAEDD40549D537150C8A414D497158662152CB06CB68180061E1B5
          86EC9B691937AEBAA95446045548753F25304A214CBA106156F5013F818923D3
          38B7B0A4262811E2BDF149E5BAD47D05C1549265E94EDB5E211F2D03249EDEF1
          20962EAF045A01F8EC4DEC7CE6112162426CDA7FF018763E3BEACE7504DEA83E
          3C30855DCF8D21A5F80BEB6FACEEEFE2C5573E06F042AD01066529F29694EF8A
          16D578083341C59F4243DA1BC0D4385833E0B1E3494165D266F5C7E0CE03C044
          B08C4C3AABF6565709597D9898E57CF6C799DF8746EEDA10778F3C63FDDA010C
          F477C2995002583738E0942AD39A0C0EF663E0864E594AD4DF9F9A87E53C0F20
          C777C195999F4EEE7EEDAD4B6F24F4DD2ACA81984F1C3EA1F26ADAF0A162A30C
          B10E5B75C068E72E2ECCED06F0170073009FBEBF771CC0446802FF3ED27FF05D
          984BF09560C0F4C375FB38356940A9CBB89E23004891FFCFF81B4BB1A4A8AD75
          241C0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001C744558745469746C650053706C69745461626C6543656C6C733B54
          61626C653B190824FF0000045449444154785EC5574F88556514FF9DC918AA9D
          D0A25AB4092CDA146D0A0DDD545444F4078722C245AD225AB5D0062C15546C31
          418B169A81D33819460EFDB1296861D62A2A32CA5D0949A038CE739EE3BC79F7
          9CF80EE70FDF7D8F0722D4E59D77BE7BCEF9F8FDEE39E73BF73D1211FC9F1755
          EBAB8BC735C48B0B6520C64C87ED2AC8D28875EA046F00AC026072F01D1F9FFE
          86686C938868844811569DF76282D02CAC085C6C6C7E580C446DDCDADFEFAD9C
          D8FFDAFA4700ACAC315663057CF2993B2A9AB116B5E0E41F17B0FECEB5C65920
          191844BFFCF12C1EBDEF56F3599450F9E87AE9F22A26A77F7D1040C1EE390112
          911AD475A2E0973F2FE281758580983D017CF7E9BF3B78E8DE5B105E565F6465
          A5C79A052F79D45D121949BF3805FE2DA23AC56148D22755E6E2C9FDE2244FCA
          22834D93E37B9A2989B5638B24E1048F3E210BA849884810A84AF0DDEF1770EA
          CCA2FAB219A58822CDFF3381E3EF4B341B171FB36909FDD9BBE6E722AC5AA468
          84DD33EF041460C35D6BADC90CD87D96CAF983C08EE75E361B83C146B09060D5
          DB3E38805D5BB64089A1014BA32454D0C7C2A52EF61D3E3698016E3596BAE33E
          53A75EC9E3A6C0E024614FDBA029DAC08D48C4624809582DC50DFDE49357050F
          1250A010B64C0030405650B1B589FAFC72025444CB9CE02A44060A52CD6A67AB
          3F072156699C80AF551A27A2E0AA8736A1827FF5F3399C39BFEC01500C14E688
          467C73F6E0C8262CD75BD3B3239B304B00AA4EC1C3F7DCACCEFA9825C52F0E08
          B66F7ED1D3692422DD0AB673FA30DE78FE59B0F4C1EC768B61C662B78BA9235F
          0FCC01B2D266C3B5CFB52A64AD33ED5A6795726F3D90E05EFF3C1576B54B806A
          7EFB9533C9D3974D25FEE4501B1A058EAC048986D9C83551DEC16318DD0D6FBA
          7CF2A412C0AA2DED8D7064000546EDE637E0D8872A0314A7000C1CFDE12CCE77
          7AE0F66B17BE0676CD7E08166FAC6C3E2EDAD67B668EE9DA628C0C22767806C0
          78FAFEDB720EC8E02BF9F87E60EBE6094FAB6AC92653FBEE9939BC3EF118D486
          28896543D0B9BC8CF73E393948C00145BCE859929C4688DA4A7BC8E83A670483
          ABF9C01C1373F824CC970E12D86F73E163557513C3466D4120BB3F094A3DC2AB
          4998737EE849202087071A4F278ACE719B63D91B356CB5A09A84548DE243DFFE
          854B57FAADDF7EECE75F65EF91A3D9601070E3A06613E0ED99F99C84258AEBA6
          26197A0C811736DD6ECD9725E0283E209F7F84571E5F07CE496903295F9EEF7C
          7A0AAF3E79F7B069AAE017977AD87EE827FC868D35018BCA53E00E2744437E23
          642018E60F13A93F09E45EA176067273055EBF2195630AB93D182568A202AD5E
          6233651326BEA68745EAB42577F52D747B410E154127002C767B2DF2D9DC94E0
          8DA7E13A0037BD3475626ECDF88D1B3513ACA0F51F135688D6844C0DDB13F716
          0398268AFBDE72E7FBB99D4F3C0560818CC4F5006E00305E08990D23F468DBE8
          7D7D00CB0096005C71C7584A028D10BAC63FA66C44983C2D4414C0FF8188E3FE
          0B84328A0CC1353E4F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000017744558745469746C650053706C69745461626C653B5461626C653B
          689BBBA10000040449444154785EC5164B685449B0FA65668CD7DCF4120FC10F
          78110FE22724A0510311458FE24596451004BD78302288DE0D281E2422444176
          2FEEFA43770F8A66973DB8441230118528E831C924934CE6936A5FD155AF2AEF
          45C210310D3555DDF5EDAA7A5DE3BCF7B09A2B82555ECED2829791CD40837A9E
          01090B3332E00C4063384BA7313BAEC550219C634674F9B7B1BF5D147578EF43
          889E00099BBD678004A3C76095F8C87C083CC2748629FDDA7CF99FFEB3EDDDA4
          96930C90F3DE636D364F4AFB7032383A01BB37B770CC645E0525D0A76FBE42F7
          F6F5CC6329EFC0BB4097E66AD07B77781700AC89A12C19707CF34C00DE78793B
          3E053B3751009ECFD581688F7D9986AE6DEB20E122F1342B952A027F794DE437
          92FA78EB59C30752975FEF190B888AF3CA9343A6E5E6B2508377E63314455660
          22A83A0D2C2D4BA001ABF3A44F9C08DB2024038E20479494E0F5BB0918F95CA4
          2D3793360EF0FEC6938F7CA66945248E36E7B587A3E011842FB2897334974902
          20C93D5B5AB8C9448917A7F2D65FE3F0CBBE569B21A6B904CEC3CD271FE0D4C1
          36B2C8CEF5FE444FCE56E1F2BDE16C0930DD586EA986F4B64682D879080A25E5
          A897907248B996EE01D48F4B84986481AC41DAF049E031531BD4EC2530D30FE9
          2614E76AC019039C665A2E46EADAC98D4C1F68FD35183ED38305A21C07913F7F
          67E871942FEC95D7CC360F7AED6C24CC80926AB03A697DC8F0AAE5D957F72F74
          1D0180190A20092286A6E5E741F6AC41FE02CF81B918AADF1F46BC7E242DC9E7
          615427C8198744E74D5FB895DF3C7B6E32304BB4A4BF70EEF6FFCFA328DFEEBD
          7D3002563A149D308276BDEEED44145DA589203BB5F9D27FBF5F3CD0030045C9
          40BE292AB45F3DB10548CE39F33D9B077EE0E5381CEFD860860F3B049738E97F
          F61E4EEEDF08DE91B72067E74CB15485DE81A11D00B0969A3019C7082886F916
          A08AFCA94D956A9400098E406FCA9B99729D6D8062A76FCB02678C4BEEA4E952
          7F3C9C8E533B7AD1D0CCD59168BFFF10B0F25C468FFDEA38D6A1238EAD51E903
          1310DF4E2B243765BE1D428B5ED0C5E3D84E43B8FBE2134C97EBA9C7040927CE
          AF3F1A030C0CC29A391467007D7F0CDB87889435501DF02600661EEF6C358ACE
          CE78C2B1F35138DDB3590C896CE811DEF73D18813387B7720EB999CD935C2C55
          E0D2C050761CA348D896CD0E234DB111452FB7B2255309B5A1416732205631E5
          D8894199EF36202388A035E7120B2DC1D89ECC64C093327D660B882AC84E6CE5
          264BD570EEECA8D3EEA73515CBD873BEB00C30E1D525161A406B7FED1B7C982B
          347786570DCD943318D9806D52B09D1DB0D226034CD3AACE4DFFFBE795434701
          60C2CE81E6180A1C50A3534FE9E575EB3C096762A8588188C12A427ABFC27329
          00F250C2ACA39FB2B4EFBE01F76EF9A46DC73E440000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C65005461626C654175746F466974436F6E7465
          6E74733B5461626C653BA79AF4F3000003B249444154785EED974F8B1D5510C5
          CF7D996574E94AC848D0B55F200C0899A89004170151FCF3848022B811C5C564
          1E330A82CC423791642186C14540025928930406A20141C488AB10C18C2E5C84
          C088890A33D3E7A78F2E6EBDD734C804C48579D07DFB569FBA75EEA9AADBBC02
          E8BFFC0D24FDBF09CCEC06FCFC6B2B580823C43230B259125A3416A04F4F2F94
          7F8D80856C2438831959C830C2EC035E00DFBD024F0D17412A12614110335ADB
          DEFBEE17B06A73583067B8CC78B40F8357B19E7BF299B77A7D2524101217CEAE
          941E05A8F7D20205690764B3DCEEDC8FC99C335E8A341C03D60D3720F011B0FE
          EA9AF42B0012A5F5B3DA89447500C976018459377E0778DFF0BA60DDB66C4644
          2489DCB850B5F5124864A9BE3838A436D88B8DBD2C98B3BC80F5866101FB5BD0
          65E445916914918A2932A25F812A433AE0E99D346E9640B3B68F4A1CB359C77C
          6338079C470C05CB12824E6A834CB74576D53247872330B2F818184647C8F011
          6608D6A5B3EFDD751B967F22645B808C5FB4D958FBE4DDB7E79F7EF384548664
          BD0CFA37283ACF544038ED8971372A955DDA91D448DA916449CC0478CFB32B5F
          5F920673265B103702E51C0B23C89C366E5A759070BC5760D4CE1DF50456B3B3
          F5E5950F8ECC4BDA9A22300EFEEA91FD02C9A0C6ED885103B2E38A79331E1DF3
          26318D9DB8B8768C608CB3CE7FB1712052BF3D59030333064A57AE6D4A410298
          1E2D19873A9641266BC3D51EFEA94610408022DD4599730D90C60C3B35C2E463
          DC4A9E6AE4092624B28D039ABEA06C6DA9743FC705A41DB728AA53A950C88048
          9D8BCA8F085A7D3A3508CE8ECB14A860EBA75F6EEBEAB59B35053912B5E15A4C
          9312DB1250D30281774BCF51B88341A53AC87320D8EC7F70AF5E9A9FD5F0E06C
          B00F68EE4CA72F6EE8F8C17D42AA5B25E481A20FD77ED0CB8F3F2C402A55B58A
          DBBCB3A5D1EAF7FAAA3F05649E444252D1645217CD5451A625C7B90902132AF6
          D740DC84C8A2C905AB8D5C30DE33FDD5AC96FECF70C6EB7481C9E0794E761688
          20A5A402A88439EAC54150C49864FA8EEB996484D6BEBBA99F6FFD19C5172E20
          32B64E5DF8316C4CD58ADD463EF9F9F56935088C909120C4EE1200E9D0A30F64
          30A5DC31D3A98B3774FCD043C1AEC84222B1273FBBAE579E78A4DB9A75DCFC7D
          4B27CE5CED4B41E84857AE9E3C3A648FA84934C3866F060739DF4F2A50064A4C
          32EE1E1F93275A1E4CC93BABBCE79B9BB65437CD3331D9B6D06F7F6C6BBBB1A8
          4DDC5D006DDEDE92205448D6A8C8A05FFF96995AD0818990249BED78D2BDFF86
          F708FC0563081DFE90941D2D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C65005461626C654175746F466974436F6E7465
          6E74733B5461626C653BA79AF4F3000003B249444154785EED974F8B1D5510C5
          CF7D996574E94AC848D0B55F200C0899A89004170151FCF3848022B811C5C564
          1E330A82CC423791642186C14540025928930406A20141C488AB10C18C2E5C84
          C088890A33D3E7A78F2E6EBDD734C804C48579D07DFB569FBA75EEA9AADBBC02
          E8BFFC0D24FDBF09CCEC06FCFC6B2B580823C43230B259125A3416A04F4F2F94
          7F8D80856C2438831959C830C2EC035E00DFBD024F0D17412A12614110335ADB
          DEFBEE17B06A73583067B8CC78B40F8357B19E7BF299B77A7D2524101217CEAE
          941E05A8F7D20205690764B3DCEEDC8FC99C335E8A341C03D60D3720F011B0FE
          EA9AF42B0012A5F5B3DA89447500C976018459377E0778DFF0BA60DDB66C4644
          2489DCB850B5F5124864A9BE3838A436D88B8DBD2C98B3BC80F5866101FB5BD0
          65E445916914918A2932A25F812A433AE0E99D346E9640B3B68F4A1CB359C77C
          6338079C470C05CB12824E6A834CB74576D53247872330B2F818184647C8F011
          6608D6A5B3EFDD751B967F22645B808C5FB4D958FBE4DDB7E79F7EF384548664
          BD0CFA37283ACF544038ED8971372A955DDA91D448DA916449CC0478CFB32B5F
          5F920673265B103702E51C0B23C89C366E5A759070BC5760D4CE1DF50456B3B3
          F5E5950F8ECC4BDA9A22300EFEEA91FD02C9A0C6ED885103B2E38A79331E1DF3
          26318D9DB8B8768C608CB3CE7FB1712052BF3D59030333064A57AE6D4A410298
          1E2D19873A9641266BC3D51EFEA94610408022DD4599730D90C60C3B35C2E463
          DC4A9E6AE4092624B28D039ABEA06C6DA9743FC705A41DB728AA53A950C88048
          9D8BCA8F085A7D3A3508CE8ECB14A860EBA75F6EEBEAB59B35053912B5E15A4C
          9312DB1250D30281774BCF51B88341A53AC87320D8EC7F70AF5E9A9FD5F0E06C
          B00F68EE4CA72F6EE8F8C17D42AA5B25E481A20FD77ED0CB8F3F2C402A55B58A
          DBBCB3A5D1EAF7FAAA3F05649E444252D1645217CD5451A625C7B90902132AF6
          D740DC84C8A2C905AB8D5C30DE33FDD5AC96FECF70C6EB7481C9E0794E761688
          20A5A402A88439EAC54150C49864FA8EEB996484D6BEBBA99F6FFD19C5172E20
          32B64E5DF8316C4CD58ADD463EF9F9F56935088C909120C4EE1200E9D0A30F64
          30A5DC31D3A98B3774FCD043C1AEC84222B1273FBBAE579E78A4DB9A75DCFC7D
          4B27CE5CED4B41E84857AE9E3C3A648FA84934C3866F060739DF4F2A50064A4C
          32EE1E1F93275A1E4CC93BABBCE79B9BB65437CD3331D9B6D06F7F6C6BBBB1A8
          4DDC5D006DDEDE92205448D6A8C8A05FFF96995AD0818990249BED78D2BDFF86
          F708FC0563081DFE90941D2D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C65005461626C654175746F46697457696E646F
          773B5461626C653B22E00E000000039B49444154785EED973F885D4514C6BF79
          59ACAC8540C048D0FA6165232145B2A609DAD8A47A2141C5C24208A408F66293
          2692206AB0D94E2C342F11827F02FE294CB00A11348AB8108415F30FDEDB7B7E
          B2F33E66EE5C5EE113C4C2DC6576CE9CFDCEF9BE7BCEB9039B00FD97CF48D2FF
          5BC0DA2AE0032FBCB63F8237118A889382CF0349840224D0D7D3F3FF5E050836
          10A7223805DA000421602CD824FE7905F4FCE4348294738084847F14F9A8800E
          E21132263ABFF458E8223041D2FA8BAF0B240FB7E311525E02AE7C78260D04D4
          0041B109A42481318AE348EF2950C04450C9D154D092836311244921CCB74C80
          E522A3E4989A2C48C0EE203BC64021074C1860D5F8C7E29D77B900072855F52A
          5AF0218A3FC6A08B5A903F10FAC6453E89949CABB4B2792960B9001319EF186C
          DB11083196C923979D4DC451977F03B4BBB43135DCC2FEFE93B4C2F3CCE19744
          C426688298BA2DBF4A3AEE2ABDF3DD95F7F7AC92330DECA4159FA70F4CD695F4
          2E92883876FDB30B9796E717031B03CA7DB0CBBB7D7FAB4A69453F923A49DB1E
          6FD60CDE75F4AD6F3F9546FB034ADB894EA07A2644607BB177D16582C878FF5D
          C6289F3313B188EFB6675F5E3D73E490A459236087FCD523FB045280BA58EC04
          EA40115E3E77B1B37CEE2AA68BA838AFED40B0830B7DF4C5AD673DFCF3FE5730
          0A7680D2D51B5B12268776CFA2C2D589EC0BA48830C67EC7F7AA6101E4DDED4E
          EAF57C849415B63342DFB491A4D226FF22650CE0100CADB1E0CCD1CEC8C87B02
          693B069710A940C17E93B78BA20F939698C10C42345FDC5A1110A19F7FBBA36B
          376E9716D41DCF46C8C3D49438B28FD216303E7C837A7047A32275546F42ABD9
          B7E7511D3BB45793837BDB5BB1F766E72FDFD289838F67BF5FD53682A4B7A73F
          E8E5E79E2CB7A0B517DCD6DD99DEF8E07B7DB5BC05186CB821E66F9594A4B555
          A4B6E4447D098C711597CF80BD6580A0BDC7ED6B120AE355EF788AC70F3E437B
          510DBF82A090D7046990C0242949953AD9ED79090B14DE8B18FB06335015A1E9
          F5DBFAE5F7071E3E87807ADC3A77E947FB68662562C17CF6939B6D353046BE27
          70B18702405A1F3FD69021DB3E9DBBFC934EAC3F61754921A41EF6ECC737F5CA
          E1A7869F66D9B7EECD74FAC2B5652D701D19966B491FC365971A7230AD17F4C9
          51D0C84AA64923558C0D19541F9251D836DEBABD6CF7E3CA6A2FB3BE7BCDC63C
          84FEBC3FD7BC0BA164F43001DABA3393C05528AAF339407FDC9B391409634C49
          4D36B7A587FF1B3E14F017DA6C0255AD68421D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000022744558745469746C65005461626C654669786564436F6C756D6E57
          696474683B5461626C653B0691275B000003FB49444154785EED574D685D4514
          FEE6E6F1DEA6EB2E8C606BD5B50B29B828516293D46810C58214C58A155351A4
          5A37120B2EB55002124911548AB8922212491BC84203FE6C2AAE4A05AD825D54
          31A535A6BE7BE7FB4CE71E66E65EDEA2114A37BD8F7973E6DCF3F3CD77CECCE3
          3949B8994F819BFC7436EBF0ECA16320354C728EE4842717451EF4D4EF9F1D7F
          F3C6334012A4FFF0E107EF9B9A7D7BBAFBC8E8CE29929F48BCF12570CEE1C4EC
          EBCE7BDE7FD7F6611C3EF21EEEDC98AFAD4F7EF056E1369EFF5D82C7F6CF0892
          2300488000D9070464189E79F5E832E0B67CB1F42D2AD7C1C2D277E8F67ADD89
          A7DE585EFCF49D87C6F7BE56498035B7F90B82C590B47C72D6B519080E6660B2
          201A90E88D02720F1C9E7E124F4CEEC22BCF3F8E3DA33BF1C2D39310350260C8
          92A79801BC2C06833C800173122CA3E91C0066EF81AE9750798F0B7FFC85778F
          7D84970FEE435912DE1335004A7080941804A044E34000E60097D0236251A2A0
          2712FDD2A3AA88E1DBB686E455E5211900C02163D384B429498301E46588C9CD
          31012848E2DF7E19923E3A398ACA571B8320030027A532C2357243A6CF9FCD76
          6D6F6CEFA153CE0D8D9021690C5AF6AFAEAC2CCC4F0058DBD4C96AC9EE3A8E6D
          0F40D7E4DCBE0F601D801F1C1F6AC9328318782805BD6E96DC26F5328095B5B7
          3A663CB4EFE8F74B40314229965DF4618E6B11A24CAE67CF7AC30CF6F61E6683
          B0AE33B1F6F755FFEB95D9A931632C01B896FCA5A91DC191123CEB5914BC04D2
          86AD3DC3A8D73ED97832D9D9A8026885A3FAF957E77759F397F9292828A122B0
          7276153010929A73004563874147213623A3DEFC131B064061B6723B64352F04
          0484CD1E512E9AE0805826FB92032C49E3F8BA2C8C2C32B31E3100F1FC566C5D
          4272D1544A0905B486223E59D2E8D3EA41898D13D7890048FC7AE10ACE9CBD18
          4B9066596F3036534E31694D49D39B3D59C3A3356E5144A845BA090DCD8EDBB7
          E0B9B16DD8BF7B5BF356CC7676FCF4791CD87D47D0DB564D5660EBFDC59FF0E2
          C4DDF11634ECD16EF5EF3E8E9CF811DF0C2C81A18EE62E27AE8524064DA5926B
          522EA64DC86C8CC5C13D605A088D9FE0260B421E30351CD4F8FD570E3A8250F3
          A26A9F02A6EE4D015C2B8005710E48A99DA9AD5F6800219B2318D3B57A202112
          167FB888DFFE5CB7E643DC59961BF3A77E369D1ABD42D699E7BE3CD764436603
          814136B2DB002460FCDEAD8D6482C9B69A3FFD0B0E8C6F37740E8480CC766EE1
          1CA6F7DCD33E9A715E5DEB63E6E333834A603CAA4DD7803AD2684FDD99DE41E9
          A33CB9C0F43E67C01548360971FBFAC86FB4EC6232DC364CCEFDE2685E66B9BA
          6342490897FF29517A42F110B70308AB57FAC6888312BF614D0997D6FAB5ABA1
          55469352B0D224DCFA6F780BC07FB406E48ED48F95AF0000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002E744558745469746C6500416C69676E546F704C6566743B416C6967
          6E6D656E743B546F703B4C6566743B546F704C6566743B5140997B0000033249
          444154785ED5574D6A1461107D5F9C9B780C49884626A2C93D5CB8101151576E
          22223171E11504B7EE423B03460F20B8F312A21830F3E37B625154E5F3939E8C
          4182DD145DDD5D4555BD7A55D3339084F33C0600CE3F81520AFC30A595F6DD19
          EC141208A4E38A5F4B1374B15E7ADF65F01F00667ED5E064F0BDD79F4665E5C2
          BA2448802413C1745042BC23ED4A0984200A341F7F4E990DCD26DFCF6793F72F
          6EAD6E026024E0527E05BFBD7511FFEAF8FC6D82472F3FAC3AF2D3A6053E1138
          9E11A62B9BE595B73A09A054E81066E4A81508A6E3EBD1D490C856D70940A962
          F3E13B88086751106881E0F7A4B24D2248A2DBBD06C01341093D135770A24580
          82278F839D35F322E457041FE057565CC9000C8E9B1E7E32A47AF680A0B80E1F
          1C3AD16A0242B24AB36AA1DB1D424208A02A612991A4D820108794BD3878BC66
          6A5496BA4B81FC64B40A6107D7414128E94BFD11811224F4CC87F7DF66A52639
          56221395D42DF29BBD1B902390ADCBE4A88CD722200519BB27EB0E3B820B525D
          A5E808E82452CC76A47FA0E531B0B0051BF7C650F4DBAA8E9EDB49F93D30DEBF
          9E2D4009AE241F4ADC8B3D53E004B16ABBA7572022584F346C7756CB93AA47CD
          B1747BC642E1E91028D8B8DB79020499BD161C150AA808481807F6B7B34516D0
          5181BC8DF56F449D00730C47BB573D81AAF224528CA65715A356C29E4A7F8FDC
          CB81C234C2E53B9D552506DBBD62D5DB51C2E8F9B6F9318357840B2252A0B8B8
          0502307E366CF6BF579AAC070D25867FF65F6A270BBE0F16913082A222560691
          B3DA7B6B7AC08D9289C093E1D263189957909288E0043248DA276249C45A6F17
          51BB098936B83B46B5C8D5DBCC7F12AF59E5FD08904C24C22902E5D683EA9FEA
          5262C7D2FDEB0DE8BAD0CB01AF2C20CC2450112B82DB7BE58C2771DA641467DF
          144484647B42ACACA05812A6F8F3A89015774CAB51157A5A20D977DB97A389B9
          91AA09940B2782E924195900C433179834E06402F9B93C9F4EC63BAF3E6E1850
          CC2F598A9100C908CE5846AE9BB49BD36CBC45F3C9F743FF20E5EF09CCF76F5E
          DAF2672BA7F9CE5FC6C6851EFCD8755508B8C12C9D5A69022E6F4397E69F914C
          FEEE284BDA2B3990EC3F8BE8BFFD77FC13EDA18B69AF29C8300000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000034744558745469746C6500416C69676E546F7043656E7465723B416C
          69676E6D656E743B546F703B43656E7465723B546F7043656E7465723B29AE98
          500000033149444154785ED557CD6A546B10AC2FE64D7C0C8D442404933C880B
          17AE047F16826611BCC4CD7D850B6EC5C4185142D4BDE0CE9790808A4E325325
          7E749F9ACF9939830912EE21A1FB9C6E4E1755D5275F1625E13CAF4500E70FA0
          949285D2D3DBD4CED0A7FC35031EB010B14C0C9D9F97DE9A878F009C44D4E2F8
          F0ED679F5E97850BCB922001354A105023257435B2464A200451A000299E53B5
          87B5C7F5E1C9E0DDBF37975601300018EDAFE1B7362EE26F5D9FBF0CF0E0BF0F
          4BC1FCF18404B911DF8F47200A2001F547501048243335F13D0A404148F60042
          EE1570F46D0051B0D42D00683C4A712FACDF7F0F9418C488DDCB093229664441
          2476B75620954E1684AC397C9201CA009C61E7E165B0A64A52EC857886D41A11
          A3D16F2BB597EAF90E289BF3E515A8CCC4BDB7DD509290D268668323E1C5D60A
          A0123224B8342D6732002993A85BC37A3D7FB4D4C943157B80B92996470D7474
          80444D65A08C9B9008F34569FDDEA12917BD8E0CFD3BEDAD3F45BC7CBC66AFB4
          1294E9264C0AAC738D3B8FAE8051CB28C272D81F1D5046ADF58A67F44AA01644
          A50F02AEDF3D80427B526623F3887BFFAC593E1503A9C07BB680A24D28B7A5A6
          BB9BCBA9B599A8BDF604858829A36C6A33389F01D95C58BB73002A9C1F7A2BEE
          C9FCFC2A63C7CAFEF67A658F75808198011403303DDEF528EC6C5EF5BE7BCFAD
          39D0E8AF648D96552A733D50C66945490FD840ABB75FD55A323022013BBF5BC1
          FDED0D03B1494302F64B900491DE8C34C4DED68A8D24819D548DE39B0D410E77
          9C6FC2449C58BD0D61504C5F57091E547C6F5DCBBC357422FBA6D19A1E9CBB9E
          F466D60056B1B7D43250667C09ADBDF5F7339B744A6DBCAEE2C64CA57E06487A
          C0AC418C13901BCC96045A3328A4000DACCF03A0321344EB6B406A8D85D2AEA7
          E583F1652F22EBDD022590F60596C260C250CAA125FB4A826EFF1216B3305B02
          A99EDB8EBE0E0C2490D06B34716035683546F62A9A9DA8D3000C74343C1EBCD9
          7CFAF19A201FB37C98C8CF6FCDE94FEEE489D9317C63E98683EF877120E5EF00
          864F6E5CDA88670B3DE7FC9E38B7C618FE2372350C44C3C9BCFF6E5C3F550F73
          B8193008E17457F9C37ED90376FF592EFD6FFF3BFE09566B448A1D3C67C80000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000031744558745469746C6500416C69676E546F7052696768743B416C69
          676E6D656E743B546F703B52696768743B546F7052696768743BE9A9D1FA0000
          032149444154785ED5574D6B144110AD8EF927FE8B951535E0070443FE85070F
          9E3D980D1A821EF4E25F10BC9864CDD51C54E255F0E69F10C5A04E76F73DB1A8
          DAE7F490614390E040A8EE9AAEBCAA57AF3A936592769ECFB29BF34EA09492FB
          D213D07A778673CC1F31A0C0A5B0A5025D645D7ADF097C666693B05CFE1BFCE9
          F8F39BB274E10A4923CDDC924633B7F07DBC03DC8234188DA0C163C20FFA19F8
          19BD9F4E9AF7CFEF0E6F9819220165FB07FCDEEA45FB57CF97EF8D8D5E7C1C06
          F3C79D16E444FC68665E058D6E83BBA8BE5E87A5892DAF1A1E0778AC3BBF1D35
          CE845A5D4D01D3FAAA4829D42F5EDB38340D6E508EB0E6AD51AB0003E8C9EC3E
          BC6A64717F82771980CA856559C568257A5B6C6F34F0E631328258100388F896
          8FEE037BEE011AC584C7CBEB49E489A07F7D746824826638085370CE04E6FBDD
          AD158F06712203D1EFAA9FDACB7A3CEDD5C620FC628DACCE1B83C160A4A24063
          2811AAF78CFA2986D6471FDC127037004704A05105C2E61A36DEBEEEE741E175
          19205B167196A62A7736069A02AA62A757CCB5FCD5BDD2A301D6EB7AC4022802
          D61EBC9B4F013833541AA08999FDED9B21C69E29088154BDD79E642BB19DCDCB
          6DA55313810884B410FB5E0664A98DC0A3EAA4523D56A564F61F397ACED0FEE3
          60401A70DB4E0035685A8DE5DEE6D0C0EECD48D4319A793167BD1A28498F0275
          3764736002BF7DFF20FAAE09001885041351C1EB27B7E20C1611A104675442A9
          F214C5F8D13543048A95AADFB1A7B4B3800859125C375F874ABD832AF0D8BA3D
          4AA22C32869A5D151B81099EA0B4B0F22959DFC43DA2A2D8BD88E490F233009D
          7BA02BA8A05A22CE3CC59E1CFD0C00906A3380A29BDA0B54ECCDFF460828AC30
          7B3420F557A34701C44E3ECA1FE091BC6218FE14B1F54E81C0D44BEF7F571306
          81BA4694B41216932CF29FDC02D2BFDBBE1E3506EBD0587F7C888D141804C84A
          902C2DFD400988F5D9F4B839D87AF96985A60B050E8C3928F435AC3FB9F517B3
          AC6EC9C86ADAFC7C1B1FA4A813983EBB7369357C4B8B7CE72F7C460F02FC57AC
          D962209C130FEA7F0478FA3348F05A0392D0E99F72CA004A0312DB591EFEB7FF
          1DFF0618874A2A1530DE500000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000037744558745469746C6500416C69676E4D6964646C654C6566743B41
          6C69676E6D656E743B4D6964646C653B4C6566743B4D6964646C654C6566743B
          46EC25F70000032049444154785EED57CD6A544D103D3DE64D7C0AA301F18720
          04893E850B173E8199854174A11B5F417093C0E0F7ED74E14FDC0AEE7C090944
          8993CC9C23E656DF736F91B98C01C9C61E2ED5B7BBBAABEAD4A9BE3D4512CEB3
          8D70CE6D05004A2988560674D3DC99F5E40758490B47214B32BA4CBF0CCED9F8
          1CC07148AD748D3F9B7C7D534617AE4A82043452109A3E25B473E489A4044210
          050A90629C82483074EAFCEC78FAE1C5FDB575000C07ECED6FE30F362EE26FB5
          6F07538C5F7E5E0BE48F720ADA8A38389C4168FA12A0560A90FB62778E900AD0
          452C36A87BEC7F3F8228D4546707A0C412A84052356C87243BD17732743CDE1D
          031412E5B4322CA25D408D381C6118B1862094AADA48118C556C3DB223628CBB
          6504941000686CA0089555C764AD2C02A8582BA478C2311A81E480E1622359AD
          950CABF3E1CD95538002812A91C2D04A1074CBB0772CDFDEDA835B941F6B3912
          A21AC843CED9603CD9BE613EC88E1901DB4B08383241988C571BA8E98CD3C8F4
          08AA6E659891217A9C327A832950C1E6782F20F342322287FB14317974CD86A1
          14ADFAA54C2DE440A1D842BEFBF052F41CA18997A00D5C591ACBF16AE37EC065
          1020853BE34F6DE422C12425B57927CD8BFF9EACBB2C4D50A0D8861140E93B60
          D7B1335E0572B47269A29EF9E64E4F47F1F37BC801040ABD11EE8E3F8235EF52
          CDB7E59C984759BD7E7C13403E336AA07D32525C82841076B6AE4022842EDB63
          C39ACB2E2FC2AA0374BE13424324740C9B5BEFC136C7AE77B63C88CA90E724E0
          FFA7B7CCF88488B4641982C2EE78AD771780862AA2CE054AAE67E71ECA242C0B
          4F42BA000195FCB54B9F59A7228CF77421F3219C5E7C2925D9CB95547CAC54D1
          7D3560ED8460EB74DC466821077C4E3B02C3EAB2EA11AF00CA6B65A9929D8530
          58053D0F626118978D1B051A6AE474780FB5BE14EB9F8E804EEE6DFB3FA6413C
          1B8F03C8327D84E2DD79AFA374F4700A68071CF37C76347DBBFDEACB7541207D
          93A5D896117D1B4EE568942CAB13BED6CDA687EFE242CAECC0ECF9BDCB1B3136
          5AE69EBFB48E1BC3F8CFE8AB87400C1E7B516AC9C81975188F320714CF595AF9
          3375DBF9F7EFF8173EC109E2402597460000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003D744558745469746C6500416C69676E4D6964646C6543656E746572
          3B416C69676E6D656E743B4D6964646C653B43656E7465723B4D6964646C6543
          656E7465723B8CE012DB0000031D49444154785EED57CB6A5441103D35E64FFC
          0A95011FA02011A25FE1C2857BD18404C185E8C65F10DC18888F9D0A12C85670
          E74F8862C44C3239C7982EFA5061669C04241B1B26DDF7F6ED5B751ED5B71392
          709A6D80536E0B001011C81698DEEADCC99F937F99801762907D94A0F38D63E6
          9C83EF03D8CB5E0B80833FD9F8F22E06672E4A8204B45E10DA9812FA1C79D853
          022188020548799F82485000E5F9F1DE68F3D99DE13500CC048CE44FF0BB8B67
          F1AFDAD71F23AC3CFF344CE6778F4AD02B627B670C218044AB401F3319811AA2
          1C9A19642F243340AEC0F7ED1144C152D70420F7807C053908724E13836760C9
          8A474BA2BEC33EA90C504E0646831CB3042FA8ABB57B32657D2607B79A80A982
          726C947EB16936EA822E3A833290FE4E8A66A06E44669D5ED0D165A4F4430BE2
          404E8650F6807C13CC18A2263210DD8485C228DA2FAD6EA5046A6526667909CA
          EB7D111B6B97FB1A4106640962B2096B024989C7EBF7CF4390D15219225A2236
          A525CB3222BC9F1406A64B605A6FAD6C8160BB4736F4104816E4A2EF91C2EB47
          5721457A20E5E48C2AA008CB6D5BBE5C3ED791596FA644EA73F4BC3D544D0CCE
          C180DD5F5C1FB8B9BC09AAA164439C1E6061E3D5017227A2FA2ED56F444D80FD
          613311DECDD657864629753DA9528A49777406FC67B60782766EA17CE9C16643
          2C23CE8F0D9463CFBB32DE3EBE5E2BCAFBC06C09A42834ACAF0E3B3B4C416D54
          81AE1A5061C3D160E08DECEF2684D8CAAC3808B871EF0344DA0714A0769DA801
          126F0E90E7B22E058E5386B262D612C2C6DA25EB2F9431658D8DB467E1AFAB19
          88A93BA1DD6F1F88FDDAEC189B8BA7330710B51C73FDF443294927808AD26A74
          74AE7727ED39076FF83C3FFD63444B509270D2B53A64539A0BC86B23DD5F12E3
          54064C4F91C2DA3261242B0E5A5888BED6E00545FA69D67980D2E1B9EDDBCFDD
          D45D465B0D06C289B11CB6AB2FCC585836804EC0ACEF8F7747EF1FBEF87C4510
          489F64297ABFF769D89FE1A32766F7069266198F7E7DCC03298F26307E7AFBC2
          62DE1BCC73CE9FFB193766F09D1CAB309037F7BC6872F3FC899E61FE543C6015
          4FD402C76A8EF3FFBFE3DFDD6F30CB159D9E800000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003A744558745469746C6500416C69676E4D6964646C6552696768743B
          416C69676E6D656E743B4D6964646C653B52696768743B4D6964646C65526967
          68743B7025257E0000031549444154785EED57CD6A944110EC59F326BE84A20B
          8AA208B945DFC183071F40494858C48B5E7C05410D8AF1AC07CD618F82375F42
          5089667F52259929523B3BBBCB674072F15B9AE96FA667BBABAB7B7636918CB3
          7C7A71C6CFDAF190520A3D521A69D74E6F478B029024652449ECB49B9E56AED9
          F951444C34726DD6F993BDAFEF53EFDC15924146902C1245477ED71A90479081
          60100CE43D9A07B30DB28DD7A793D1FEB37BFD9B1101056024C7CEEFAF9FFF67
          7C7FFB398AADE79FFBA27EDC504075C4C1E151A05054D01EEB3071145246C181
          6C9122EF5786A0CDD07E22E2C7AF71CE84A9AE03086A2C36DA288761DD348485
          A24731CD52671B9477398F26038ACECEFC9A110A5D115B6A4ED204AE797DC0F0
          D366801A0D8D6916A1A3A253259476E61767259439104B3310B66D531EF4BA29
          11FF9A87215419A9E802176620A9081D398DCCC2D8D81E869F50AB65A5204441
          49300004893CF77AE76A0998F6D752405669A417F4CED87D78A1E80ED0A32BDE
          B5203016815C4D81B940558CB5CD9D9D61414B2A131E010A3DF2DC9BC1F5B20B
          2BBA00840027B9B077B8F44F50BD7C70B14519D24DA5401441A70CE440527514
          07857A7BA839712CB414E7E02C729E54FEDBC10DB7A63390EA00C0AA2521DD7C
          27A17667609E7FBAE5A0C8DD495C5903095AB483E4D42A23743A6363EB53414E
          88738D80906B0462EFD12D51892E1448AFDA905A33A2DDCDBE3B0751FD7E3858
          670102D3A108250BBEECF6D67E5BEDAA74445D0BA17506E3DDE39C81CE6D98C5
          B6E6FCD5E66573EF5FC085C1666D1E48731035276165188053E820A9914EAF16
          E9EEC92E9C4953B8F4520AA03A092127FE72A1439AA7CA48A5A88DB547CFCA1A
          F0393DBFC1E8A1B994B96ED0C9B769D45C4887E14856FC16485765A7B2AD3EE9
          244EFBAC33D227AA0333954B32C07C6FFB7E302E08C30111420EA32B7B4C4F30
          2D3A8A550B1505A803D075793A1E7D18BCF872AD1CB3BEC9821022067C1BCE42
          B0B931576384C130623AFAFD511752CC07307D7AF7D2BAE67ADDEEF9DD6D2490
          F343E9AC32A0C989372D11AD9FD20692E69F1125A779D2DF99DBCFFF7FC77F00
          32C729AD82BE502A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002C744558745469746C6500416C69676E426F74746F6D4C6566743B41
          6C69676E6D656E743B426F74746F6D3B4C6566743B989DC2EF00000328494441
          54785EED57CD6A145D103D35E64D7C8A1802DF47165918D0BC850B173E411C21
          2E44D08DAF20B88989A83B5D48202E0577BE848846CC2433A724B7ABFAF4BD42
          33B3906CECD0D4EDFB935375EA5471C7DC1D57F94C70C5CF1A0098597EDB08C0
          C8DA4AFB3C5F77C75A0330096B15E872631B5D13F802C0C5A535335F1B823F79
          F5E59D4DAEFDE7EE70073AEBE92EE88E7E8D2C96EE201C4E07CB9998A7973D2C
          7BB43EBF981D3FBBBBB90D8000BC62E012FCDECE75FCADE7EB8F19A6CF3F6D46
          EACF51067AFA8AF879B6809BC3DD8098A37B0E41C438A20320A6389C033CF612
          8EEFA7E78509A5BA76009ED63C6512468B8E5CEB40110009EEAD43FD3E8DA589
          9601F628FAA7828D396BB461D24BEECBD7E3153812A27540300A56949781059D
          720E80404D291249430623154E31A046540156F48A3EA1E6BC52E3001344AA87
          9B8248871A0A8665686DFEE0C94A2D38C61177660A948EF291A734CED4D385D7
          3290D1E601013102B5B0A981048F3F8D4D9513A943BFC7473450AFD50A97906A
          71211C699D50A5D4E7395205211001A904557E082330B12226058A5A3B5C8A01
          076E4D4F6009D6474DB5E468B50B14DBBD4E1CEE6F154600D6A59C6369A0D8DA
          01A6C81C47D3F5E8ED2A23F6548A625615E14376247F1353631A306A11BBD38F
          1D5DC3C8D9114EE6378BD347FBFFF711B24F99556954EBE6580A640FF6D67558
          0D485DB007F45EF9D28BF6495362662911EE3E38E9F2EC0419A06447F9822512
          BAD86068E2F5A36D396B80022EE3E5CAD0E138D8BB11AAAD85C862557A6A500E
          C2A066DF44FDA7086DA41302B7EF1FC3E901C81833F24E5D3248BC89A843822A
          35E9213FC61920893CF972BA9142EAFB402E333866ACAB75D7DD34B521D730AA
          01D02106F68E411264CD40465DC6C1426A0020DE3EBE29EA6525468C5681BC3F
          9C6EE6AD28552F0BCD57ED976DDEA529A8A78CA4C0BDDCDBBE9DCE9ADEDF342A
          AFDB2F93DA612A2A0642034A01E580E4B2989FCFDE3F7CF179ABCBB76EB274EA
          46A3DB700AB1BD31D7361C4F16E6B35F1FE242CAD681F9D33B1B3B313759E69E
          BFF41E3D0CF0B324AE6220262F0260ECD1FAEA7B98E0AD06249BD51F5B6DBB70
          FEFD3AFE0DACD833C6FE6E5FE50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000043744558745469746C6500416C69676E426F74746F6D43656E746572
          3B416C69676E3B416C69676E6D656E743B426F74746F6D43656E7465723B426F
          74746F6D3B43656E7465723BD6942C1B0000031A49444154785EED57CB6A1451
          10AD3BE64FFC09A38E0811039295C947B870E10738C1687CAC74E32F0832F191
          EC7521415D0AEEFC095154745E759CB973A8BA8FA65B07241B9B29AABAEB763D
          4ED5ADDB1300C8495E3D39E16B6DC14208C28B4245B56EF575306200A9831E79
          A88C75CBA14B47A7B3394DC8B1963A7F78F4E955E89DBA08400011004B92A5AC
          80984E35720544050285687C87CF15718DC635AE9F4E46C78FAFF73745442D00
          525838BFB1755AFED5F5F9DB486E3DF9D027F2E3B204B6237E8C662258E20225
          020201027954163A3144C4EE73DDD7EFE368CF4A5D042030818651740D608144
          996BA34DEA25FEA8773BE40C9ECE6B04680981CE3D036F5BD01121E21BD4170E
          EBF72DD82A0037933A27B7E81D25A587C21189722C611EB8421B1170C7A553DE
          B3FE66085478790A2A13618050342210BC09EB8C2168EE8D121DEA9979B4A482
          AC9C0AF7D780008C97257123A953B0E1A4B1F6146825B7DD5682486A4E4D2BDB
          B7DF273A15F1E1C441A371003DDFBBE06808F2E0B5651728940EE0CD269EC5C1
          E08C67AF34D8D888E55625FCB4DD8D00F2FBAB8BCC03E1D3742C6B2455470000
          EF67F262FF922502EE6D203F23F200D821EC1FCBE0D9607D999DDA5E77194D28
          2093DD797B0F04C2C3C5ACB5388C3B77DEDA41A48065AFAA02902BE4E5FE4612
          5C489C46943A4B90470AAFE1707036C91CC57E872865359D67EBE593EE268424
          F33C66FE8E8DC74C29EB82EC68569911016089D0E1BD4D413230F44FB7A146EE
          590C6FAEE719B35F20150A3E6C6C168424294780D43C09DD39399D6FEF1D5BAD
          CBBA33EB281FDEBFECCD2A6963A31D0155B57A01F5643BD83DEFCF725809753D
          78E89048B4F700A1AF0F959D79E6CA2C8D03A233B57E80181AD6A4470FAE445F
          C482BBAA651730DA6AC20D77FB4539501ECB8E4CB68DEB33808C542180F8DDF6
          654E7EA088C9DE7C412C17F878F56EB748BC84D473A9660170F96C3A1EBDBEFB
          F4E30604C978158E58F1A6A353365DFDC5ECDC836632D3D1CF37FC20D53280E9
          A36BE7B6F8ACD7F19DDFCCBB754AE7BF282343800F279DFF6EA85F718D9250F6
          0048AB5CE1EF96BB9FFFFF8E7F034A394DF88E965C560000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002E744558745469746C6500416C69676E426F74746F6D52696768743B
          416C69676E6D656E743B426F74746F6D3B52696768743BAE07219A0000032F49
          444154785EED57CF6AD341109E8D7D131F42A40415D15E7A37BE81070F5E9582
          5A8C47BDF80AD52A55F0AE0729623D09DE7C09510CD834F11BD99D19BECD26FD
          350D482F2E6C667FBB3B3B33DF7CFB274955E52C4B4FCEB8AC6591528AEFD4A1
          D08CAD3C4F59CD815AB1E732D546976CA7CE311AFF23221397BA561B7FF2F6DB
          BBD43B775955455524CB52C5DAC8ED1803B22C7D1015850A8A8EF743CB1C9439
          1C9F4EC6FBCF6EF7374404E6004BCAC6EF6C9E977F55BEFF1ACB839D2F7D47FE
          682E05B1234687538B52CA0F9306EB232AFE0D4FA87F438573600359FC1C8D0B
          1291EAD601D190BEBA16726A406D63B5718DEC71CC1CA443A11F912895641E01
          F04C409E1339CF6DAED738E01C705568AAB863EDD0835596790494328CE405AD
          A75ECC645201089FBA129D05C7BC01C56204A8CBE868B8E8460967B8A873808E
          174904EAB5A00B11482421BDE5564C0D2A4CB271C3C65D3D0C85F3944C419A27
          213DA75185D42EC10D4394B08673DA38DD1296C8757040EB7C82108A396444A2
          4B83E1010F2964A5AC636D8DC34751BE5FDEBFE47D1DBBC008D26C2FA577DAEC
          84E7F72E448EAD2642DFE65E60DA580681C827A1638E6F0E3FCF40CC1A91C38F
          E040C11078F5F08A394E0E144907C8D07AEB3586226A46852AAF885D47721211
          D11339904C69FEB8951A0D90B083E12733A016393CE711795C6000646FFBAA73
          084BA4C0DB3CCD38A00936A170E0A2398B703B52CD030BE44F04723209C56C04
          A9B8052573E0C0D91DF966EE9BBC9B8E23B3F7E89A20AF771A124681F2A6DBB9
          6B51F3409AB99C786081D11BFB7D2E1148C79F84849104AB721378DED8DE2FDF
          C0620E102995D7C3EB271F44000837A36AF635F3BDBBD56FEE0B65CEABCB8926
          3B39505F95DA1C9FEC1F6C7F9CC9BF3ACBE1DF902CE3C916A982BC79BC510CA8
          74EE029E038602230FD5175BEB738F0E88FAE2759F48723D0D9918CC31086879
          B7FD188D1790890B112D6DB891E20E6130EDD3CED5E940F55C9E1E8DDF0F77BF
          5E2DD1822F59239604DC7C0DABCD695FCC947C038413D3F1EF0FFE2045EBC0F4
          E9ADF54DEFEB2DF3CE5F7A0E0BDCF8A1B7750601EF9C50A9FBDFCF8A73E0555B
          0EA8D5954A3A9D02EDFCFF77FC17B45A31E8221E26210000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000013744558745469746C65005461626C653B466F726D6174
          3BEEACCAE3000006D349444154785EB5970D6C955719C77FE7BD6F8B7C9442BF
          2883C256A04029D851568D6C4310269239323744B3294171E2A28B6E8EC93231
          2A660CC42C5B98CE459C891B4E1499043F866C82D88FD1B550A08CB66B9950DA
          D242BBD25B7AEF7DDFF3D8E69E9C1CD75450E33FF7E4E4DCFB9EF3FF3FCFF37F
          4EDEABB040D9F9FF0371671101C00794199E1943455D1BEA3AC835109A5930F0
          CD1CB967F3EB07941759C4FF805B733D940D11949125023A0C0E3FFCC0E26586
          DC1160A21F24FFEA678B190EE72FF43069E2588643594D0B0FAC2860383CFF52
          D9ED862FC481EFA61081BAB6284301F5A72FD2A33C10F3A81267ABD07EB98F58
          C264D7852846A47A8888E519568036E6408112E51C25682D88D8B5F9384B2D20
          26EF4852A81240CCFE6B0810117308882844B90CA0451B01820BB381506B2479
          1002B80AB5D9EF0A504A81DB05A2E1ECB92EEACE746061091520D49D386FD726
          A5F66711D877E0B811E942B8714A3612FEFB0C20087993C611F553DF97CAA4DA
          BADA7F307B6E9EABCD0575C7CF71E7B279468D3515028C48F1283BDA84D3EE7A
          4809B416B46023438B8D0C11B4061BB40DDB4A416BB7EECA3E635C4018866C2C
          9A37656176CECE88520B42CDCF4FBED7F5A015A045181C68B351013AE97625A0
          B546BBF9752D6A4D6644187A2B4E1491DE6E164DC8796DDAFCFCDCC95F58CB6F
          3EF7B5B58569E97818884E46A905B431A48880895C878208CE103B230AADAD49
          116B7E2135451174B633E7C8CB142E2BC99DBC660D7BD73F46E9EC1C44CB679C
          0C681A1A3B38313070CDE5447DA2FAACD3850E4410147BFE506DAB9292A29871
          53365E4F17579EDB4AC9923964DCF1715E7FFC494AF246D2DDD347535B5BA5ED
          02ADE1A6FC2CF498910EB95167C88BE6DF6805381A41416D553377AFB8C5F6FD
          A0F1FADADA39FED436E67C681AE33FB694BF7FFF69666641CFA53E2A4FB5379D
          8F5EFDBC07B60626F5E6088D3599160843734798928821D2B67C623221A44614
          D1D6366A1EFD26B36F9EC2F8C58B29FBC133E48F83AED64EDE3876BEE964D77B
          4BB6B79EBBF0AF26D462386D6C20C99ED7A2D1C8100F5A292EF9C576AA1F7984
          A2E2C903912FA6E2C91D4CCB49A5BDB199436F5F6C6E88F62DF959F7A51640BB
          6D684C284E0F3B424C8422666D9B4D2553EE7BA444A0B7AD8DEA6F3CCCDC0FE6
          92B97490FC39A64F1E434B6D1D071B3A9AAB7AA3CBF745AF5C00F4E3E373C477
          BBA0A2B289F64B5137380B016A2A9B186210E003A9116E9B3B816365B5746EDF
          CCFC7939642E5B4AF9961F33636A3AEF561DE760A7C781AEEE5515F1FEF380AE
          B96D8EDE75FC02D684C56931BE7D5F31B1B8060538061405BB7F5FC5AABB160C
          2D81D28369E768E5292E6DDB4CF1CC74B296DF41F940E405F9193497BF45B5A4
          D17DD77A2A9E5EDF0A848084B1388920C4734B60FBD8B25B1F8276FBDB4C12E2
          7BD0D1D9C59F8ED43073F54AB2EF5C4EC5969F5030752C4D478E529918C5BDBF
          FE2D323A1DE70A96A03F4E180656005A8C991C5611CB87C6B227D73A49DE3940
          FEFC8B7B59BD6A39455F5CC7CE67F7307DD228EA8F5451168E66F5EE3DA4E74E
          04E561E503613C41A035BEBD4AB4069237177880DB09909335969488872078A6
          2E411067C70BBB58B97205A545797C6BCBABDCB2712B7BB76EA057C670FFEFF6
          0E90DF40606E45F77D3088C5D146800612B178ECAF9BB6BEFA515B5AAC06DB9A
          7FAB3C3320248D79B37289BFFB26A7CADEE274176CFDDE4383E4149614F0DAA1
          A35C1C9DC73D9B1EA4BCAE93AA5F1D231E0404B1D821206E339008094530E1E2
          032380542032CC1BAF7DF68945192B3F529CF94CC1DC5CD26FFF34DF79319382
          E2E954D7D4D0F8E6C1A68693E5F775B49F6B0502E76D3806F40389BF4C48D300
          BB2E46F18DA2C03CD46F0987C203521E2A4D2F2D9A95F9C3856B6E25925542CB
          2B3BB9B9BA97170ECF9030111C6E6B6DFECA00790B9070530E6833240C42500A
          91EBFF0FA000BF302B25FD4B25632B566D589A3F2EBF94AEB23F72FAC0494E37
          5EA1AC67DACE576A6B1F05FA0CB99861B13F63A4789646D87DB91F5F64C8B5E3
          BEB3B9A94F2D2CF9C48639F3CFE68FCD9DCDE501F2F6FA369A1ABBE888F941EF
          9533CF62C8EF7EECA590F761DD4FD78180465C163CAE0593FA59CB372E8C16DD
          FFF5FC555FA6FDC07EDE39524FCD1BEFD0D2AB688D864FED6F8E35DA9A5F273C
          A5F0191E36FA79F7FEE85319B9B93B3EB9F2C3FE776B3AC938B68F8975B503C4
          D09D90EDBFA88F6F330E0F37CDF2E5865FAE25AF2FC2B590396A1C3ED78178FF
          D5ABADCD2D75DB37BF3C3D4804D941FF82FAA9D1DEB7D3BA2B76FCB925A830E6
          0D001AFB85063FC4D709543FF8317BA1BB36C3F722CCC81C87723CC0100F3825
          302DEA3BA785C66CAEDB85FF0CD755023124A11382B8C37EF75FE09F0C8BDFE6
          08A3DC930000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200802000000FC18ED
          A30000001C744558745469746C6500426F72646572734F7574736964653B426F
          726465723BD66787E30000000674524E5300FF00FF00FF37581B7D0000025449
          444154785EB596BB8A53511486FF2DD682BE804C33BE80A0282A8E5A692536DE
          40108599560C2A12348418A6B0D3116FA8E38C2F6065BCC55BB4D072500BC517
          98C2DEF5CB62ADC362DBACA0E60FD9E7ACB0F93FD6659F1C70C25A0BE0E8D58F
          00A85FD2EF22208A2EA008C1D8E65B4941D1C57F2E100A357A7C792700059098
          DEB80E3463B56381799115DA0022162894EA1E5800167DF9BE0AC001A510E0D7
          1F3F511AC770A7057A21E95828221CA9641681D8CEE9A9F5468B0CAC2CCB6736
          E39F75A03D04235C6317A210B9E61F7D40A6262B068060B1CC33B50E6FC90184
          1015A0293152F597DF2397F7A901446239E1DC91ADB97DD3F40610835290A9F7
          F05D0E40514A954130135D38B60DA984FCB307C5D1A9BA8B6FC7EA0059F5200E
          54A68BC7B7E7001BFA5203C042E680CEBDD74845EA22AC7AF04B21B9DA2776E4
          FEA4987B75D048C659457F6904A0B7A833D37DA075EFDC7F03E0D2DD578AB9FD
          52CB75EB85B6FDE6731DDF1BCF00B4AE0D9440FF04F0D095D1F9A59583BD11FF
          87F6B406B30B9F66CE3EB15033F007BD485EA23B436412AA9D440FA22F48D539
          B90B896286EA934CE6FE5EF71CE07E01007DCDD43DB53BF787D955635A349204
          E033932AEA1D25126B4DAADEE9196412AB0F2B4021C67B5C2F3C452AF76200A2
          3A99FAB37B737FF7AE33D08548D5BA3EF8AB7F340A3816617E6E5F6E4F778CD7
          16415124B9BF3DF41C69B86605291A58AC11008FFC59A62BFD45102C400980ED
          DD34B5C19842C23E288D63F5F6E6F706F75DEE1C134A0600C4E76FAB7490EE8C
          148C640023074063C747F183EDE2843571C06FFBD26465F835BA250000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000013744558745469746C6500426F72646572426F74746F6D3B5F0C70B7
          000002F949444154785EC597B1AD5D371044CF0A0E9CB903872EC3C5B81297E1
          3EDC890001B643650A14A881394E080E78891BFF072C968FFCC3E10E7797EF8F
          CA477E46E5AFBF3FAB8E20320CAA03CB8BEA045C1893AEABF5CE881A475CF851
          1CD5E818FDF38FDF07E02780450ECB13066081004604668C88B371BA3C28FDAE
          00FBEF428E75801E00DCE4820308007BCE414444611159F235BF80CE9A8B0828
          18370EA802C8940D50D435A684742C826CF21E00346BB09C9E065B814F000CCA
          94A464CFA86B91A8C500B34144906084ADC4A100470EB036700F240AC81643A1
          72F7EE11A6CAA46A20BD8604803B0700854170130A3CE5BFE65C9B91EB1A2CF9
          C283247BF3BB0A40BCEEAE8435D05689C30695B4164BCE8079E480A2910894AC
          9150E29AA83280622088DEE40BBBC8AB7115A0552067B6D7A8956800B231A7E4
          D2C46C30770E80AA4C4CEB9E27797D6B1D8DC39AE724B9F11C0ACCA140EBFE05
          AC441986261DD3712DECA8973D1578E44054115FC9DBA362C88E76238B01D0B3
          F3458CE04B1F20CE9B6C1D9FBD398232479D97BC58A875BE0A54755197EF7765
          79B752E9BAA638D4280B8E208AF1DC1F3D0E70BF6A4E7447C8ACABC789808E71
          E3EA19165E3A2F74FFBB0AB85FB51E1FA4AD954B5E8539E4ED95DC4D8CE5E5EE
          8477A311A6E0FB496D441B5BF29B58EABD3AA16A41AEE5447C7F529B3B7D5090
          41BDCDA0BCBD864C01340A005A3EE6AEE767B58077F4B10713B8154085A3D238
          1B90E958585E370920EDFD29EE50F0B50A2829687DC911BA0618475E5AB50222
          73F61106F5CE81184444028DA2D7D196DB04D0DCE4EDFBE033180370FF22621E
          1BE5F99EB7CBF5AE8F127CCDFAC5582C9C0A00969C9B9C67943973E0AEF3A752
          4D685E7E0F4430DDA42088E9461ED1CC45CE839C05E0C09E9DF09FEF3F5781AB
          1C25115D9EBE6E21246240B33129069787EE1FE1E88420BFFDFA4B896547C402
          4837379C77AD24806B5D30A9525506942FFF7EE3D988F8EFEB0F14D28C6DD442
          0C0A44A224E9BA6EAC0906444C8820EE399456217CF87FC79FF8E0CFFFCE8330
          1D617139560000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000010744558745469746C6500426F72646572546F703B5C067DB5000003
          0249444154785EC55731AE15310C1C3F41CD0D6890B80447E00ADC098943D151
          52404947C9056690123BF3ECD5D66FA5289BEC1B8F3DB19DFF43125EF92C07BE
          7CFD2149908035D73B054120F71E732DEE4170EF119078303406CA19B07D0AF8
          FEED7300C01BAC47F8F8FE5D11EF81042640B071311D7D364A2C206B8F840007
          051C7B3F7FFDDDB4E58004FCFEF36FCD4C52C951AFFD8C1014B8F6E9EF526137
          313300329D57EE95EDE80E7CFAF0364A22C0D19773338A8A1E4CD21AA5940824
          8E90312CAC9FC79A0212A29314399AD4CD18251903200E2823E7224591DB198D
          2350200DE8BC6CA99B3269DCB9A2282711CE0B5A0D272D0012387C76E0281D10
          4EB41B3EE5BFECA98CB11D4361A6EC02798C47534080A3B5919E03D2AC9458EB
          C00199D4A338C9548A8896038B87F94393B5484CDC1C529DBBE8841BE4854D72
          6B6C05B61C8E0037518F1E71E43F982EB9E0C4ECC93D73403B168A901D19E49E
          CF8906242A4A3574922B1E4D81680A9401E8069C55110838E9107EF7201CF51E
          5381910354C67525F79C008AE089F6208D2972C1C7C13DA09B3E002AEE64F3BB
          15022AB910ADCE4D6E2CE0E1FD5105801290F3F31AB57F94E2F3771A87B54C3D
          AA2AB702DD3EA451868AF22C0983D289105147AFE00E2544755CE544E205EF0B
          B0FD6B1564842687DDDFB35BEB94772DD3E8E87EFD229BFDC455D015E8204423
          6B89D5224AEC24377606303BE17A0C2A81C8D6DBFB70EE5485244998B80DDAFE
          F53644180047E1C6E0721AF53CAB05E398AC4AF8375381C4A3551A7A0312FD2E
          00CE76B9D1C0BD9FC635056FAB00266D1E8DFEEE6F00448570D3AA552E45EF23
          6BAD6B0E5044C542380A5604ADE53A01C4496E67FDCDC12C80457615208621CE
          FBDC5DCE67DD4AF036EB8BD15858012B6FE357F219257B0E5CEB7C2AE584C6CD
          DF032C6298DC17106D482D9AB8906390230168D8AE00B91133E1C83A33CB0CB4
          FA165BF936998F53446F54D71C80429AB2CBC45663B46505205FCFB6DB5A7A31
          5A8C5905F4AD56B43C6BDF621CB7A311B37A6B3F8E66483C7AABC1CBFF3B7EE0
          C5CF7FB7F93A90C9588B5B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C6500426F726465724C6566743B8839F7F80000
          02FE49444154785EC597CDAD153B1084CB5777FF3260F3249240221176444204
          64C6920D21104415524F693E797CF67750CBE6B8BBAB7FCA6DDD95441FF94D00
          DF7EFE8A14494B5FFE7F5F5A4A922575CDB5BA4A4962739E84356B8DBA33EB65
          BF125DE74E569CFCF8FE7549D29B3430FAFCE93F25D1FCF380AA4E35C68A06DC
          5183E37CD67173E93BB32ABAF51CCB415FFDDE476194BA8B34C7ED4CAAD0425C
          12A9C001BCBFD730AB3ACEED7FF6B593B408201E4317549752F70250EC072802
          7C44D571375D925D0A7EB7C055960B02D8336BC49193A0DB9C1A8567F1E8A9FA
          1115D85AA03AF7A8D45306402AB81A982837BD9F9CA88CA98622DA600FDAC901
          C70AA5860F7A96FFF82D75261F6D08E0B597227B760F0E584A37397A0720A202
          95D50B02038A38804FA5BC730045D38E1132D981D149FB3E49F8D6434C550B1E
          9ACA2D68DF020B0039C109A8E517C152728D3440CE4F0E402E8F50CA1D9C95BB
          AE30B422ED20A7BDA8C0C6019BE895D39872464B4B904E8B3D6291F525CF0A1C
          1CF0E1E4C8BC06AE6EED02472A05DF269F2F1118AF39E0139C7DF6D95C7F6BBB
          E780632B21F8DC2B60375ADF8061D6AB6BD47C65CE73D9A0E8D148A0D2F8453F
          2F6F817B0DAD022E275233BC1B3FBF5F6B81790DDBDBA2F6FF59E5027A2F27A1
          CF815347B3325A8FF2669C0B5B5AA2C3275C794E42FABF1969617C3CA964841D
          E02730099CB7A0E0488FED6DB623902BDDF34668A1B38909EAB8059E200A4816
          E1A9ECEFE77D7EDE161D6DAA9D163AC71C68746E606414DA63F69104DBC3A011
          B3DFD89D151C3402A0E7EE9AB002CE90A97D9C15BD1ED54DB5994B547DBD9A03
          262B4516599876C0150890F8094EB09C91CC18483B0760B771E4E77BCE94A3D7
          FB157CCD7A0628B60F0ED41972803FB3341C3880D1A3525108E39C84C6588E71
          C80384A36CD9AC039C60196654EC7C0D8B70667FCF016B236A812AD90698B732
          9394B6417572C0946A041D80A906CE2E3687EB8B5FC8070744317272E0F79FBF
          B8506273CB790D791D398974DCDE2A6ADD3553ED453CFC71FA91DF9B3EF8FB07
          4EE7347079981E180000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000012744558745469746C6500426F7264657252696768743BF6AAA52100
          00030449444154785EC557DDCD543B0C1CAFEEC37DA3031E6980CEA88606A880
          4E90101225206A98414A4619CBD179DEFD14F9C4C7DE89C73FD9AF24E19D9F92
          84AFDF7F48520910844261ED014B6D4940F61199F7929AAC5AE6D492DBBF24A8
          7EFDFD5FFE0A7CFBF2B900E0050006079614441564BD0461EB1738B5F4C74FB2
          0424EC3DB71EC2B1A3B80C3E7DFC80CEFA7FCB00D006F7A6B65C5BEB4CC45E02
          0CAC805B6F479575DC1A094702E3003E69F4524E290410FD79A13570351027CB
          FBBCE7F2A3714E0A508BBD80046C469D458192BA2D2AA172092E3B1C7B07C999
          02A95C1BD079580080C16D07846EE7DE3E1566D8D940D2605F70A6C001141C71
          F234E99FBAD32DE0950605DCFE14ED8B9B01C34157EE30E98F0EEE82C2710A68
          161D90E8B0C4D48023527214B04432806323E71D2240DB4D70FB46C7C900D205
          1BEE296A2F031DFA91C376CA8514A6DF3B559C6DB863A19862C1008FECBDAE0C
          2DEB0276FBA7436E06D2F7CFCED49ED3293A549EB3881635C22A19967A0D8072
          5C8FE0995114C113EDF18C8FC125241DF4B2EF358A41D5336D79EEB3999EFDBD
          CF19F07EA02CB3480D0604C80E967D0F4B1DA6D8DFD3D2865C16DEBAAF45FBD3
          ACCC4978DF6A2A4A80233C895FFA2D0D1C3F6C468CEABDCAB5603BBA0D4717CC
          5B2DC7DF32A375D2BBB6061BD3CFBA6E4FEA7912DE8346408D5CF6C2EA91DB77
          82C737079F45F80A03CDA95CF11CB3BDAF5E3B8EC659B3CD5C04B39F0CA06288
          4491C1307E5C58DEBF0780443B525210013A15F75D90DCB48814DAD89E014B65
          0E6C68B051CD7968DF86BC1950A181A20F9480379DB9A14A7818D5F29150F73C
          21EE1AA008F98F7D68241DC9612B00F1024F8A1816E1F6139E18A81105E77D9E
          29975C8F169C556F09607411C380A5028E1B1C334AA6060670ECC2543AE5690E
          0045030B01EF17105A9E1335EA02C70087727FC46EDC86EBCD5D700C5D292003
          79A9D785881EE101A323071F19504993767560EFE6585639B20388D1C26835C0
          A4647401DBAD66779EBDA5048EDB311EE9DEFE1E2873969CFCFCFD0768077DFB
          7FC72FBCF9F30F4D112781550C22880000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000011744558745469746C6500426F726465724E6F6E653BC08E36540000
          02D849444154785ECD96C1AD54310C458FBFA88B0228830EE880354B56744001
          34C19A827C588C65CB89DEFAFF91226792DCDCF826B65FA8BCE72F547EFDF9A7
          1A824810A80694F565132C8C9933AF8E3542D434C4C287E20BA761EAF7AF9F03
          E0134091435992002810408840842962344ECB8252FF1BD7EB925CF3007300B0
          C90503102883504220A250440E798D17D0A8B1140105D3C601A30012C306286A
          F51942A62F8234F91C0034AB5346778356E00D804089265964B7D7ED59AA8301
          A241A4208929B4124B01D61BA036B03B920A488BA13072CFDD23C42893A30632
          D79009C0FD06008540B009054EF9CFB18E16F2BA0687BCF02099BDF91D05205E
          77C72DBFA01325060D1AD269E99013601E6F40D1AC8543B63C59C4B34602504C
          48446FF2C216B9889E6118C078C0B3D74A1FA8E56FCC96BC33C172E67E03A02A
          91E6C43D8B7CDB89754D831A6793DC789602B11498B87F002BA904C13C3A62FA
          D392F6BADAA9C0F1065215F1911C84224EB2BD6DE460007467BE7C357CC803A4
          F124DBF4776EAEFD62C539C089856933BE15102C40D9F9AF94B595CA99D71C1C
          6A2A054710C574EF8FAE03DC55CD486D0F89BA7A8C14D030DDB85A4FE165C685
          5977470177559BE3834C6AE592572196BCEC0AB8D7977532E1C7F822FAF1FBAF
          CA2810404A2A7864B82CCB28276CA5CCB2DEAA288A3FBF7D993CA04413C82C06
          4068F23B9ECF68011FC863D678D7021556A4B11390397DA1AC36092092D298F4
          F45C1EA380219D13DDB2CF1C601AF290AA1510899D47883B0FA8A6898848C278
          D1D7B16B3E82AA79934FDE074F674C80FB8B883836CAB39E4F969BBB5E21388D
          1DB6C53858D80A000E393739A797B9DFC01DE7A752F3A079F81E48393F1C5701
          EA8D5CDEC445CE418E308A3D54C354EE3827B3EFACBD02D16EE60ADF25733B93
          4D2EA6F71B1063D5F3878F5238D3B20176799E553BA537A365AF28C8A96A163C
          FBBFBB1A0ABA668EE89D7988D68CC233E7E143D48237DEF9F71F58CFE748AB2D
          E2160000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000018744558745469746C6500426F7264657273416C6C3B426F72646572
          3BE90A127D0000033A49444154785EC597416E15410C44CB11EB44096C218950
          064EC145380D17E0345C837D7E4480EC9328628F0B986EEBC9C3ECD3527EBAA7
          3DE572D9EDFE3F6CEB39C70B49FAF8F9AB25697C582CC6C4B6AC90ECB9C656CC
          6595492A15B27320D892424A2B27F8974F1F62255038CBF9B1546A4C678E41A4
          5E024CCD71B22E1B19960316BE3AFC78EC0A448CC86EEE7E4DDF20BA006B0D19
          5DBD39D1E1EE4972114521CFB91C4A65BDABE5F294205000C997D7C7934ED186
          39D158879F4FC320A5AB8B93103672A2864C0087EF8F050B01EC560C65480121
          314546298812B114C6DEEE84C1F18E02E55E56D8729541428F77CCE756A98134
          64C192FCCF7AEA049099BFC28861DCE49DCCA8FA921812D41F730C600F010CCA
          2B4537D7B1020736E55C1099149937E210350C7484E108DD9375AC8EA57096B4
          1D88F0D586A326FC73100C0421D019BAB1CFAA0EA712156932A922C3F9979595
          16D0E5CC819B3BC7103183E682376C60A7B494C2A91DAD1E9817056A6C4B00F9
          E12DB9A9DCF298EDA120D68B8F54B0DF15A88D0274E90C76CD3B135246C48883
          439E9122067DA0EAFBE6EEC9B45E4925F3361586D4F5DAE120E3C4916A1D30DB
          3D862969393F913264552F0DA53C15D26E6A96CBB37A04396353EA384C9FD14E
          1186D7FE4E23018CE8D50BEBDDE54B1D6E1F461F3509CB742B46098CE5ED2BF9
          7F05005F2E4EC39BDC95BC1089BFB23FCC54AD375CE02864B9EC5043D6F5B77B
          58750528229C2377B667C1EB2DAD9E7B06A376C352CE34C8BB0A74B92650E7BA
          69D5B69242AD28590B64C352E1601305C82D120258D22772A18053DE16A1B6F2
          634FE3A215737C28BA9D5B90CEC0D53A729E4EF628D2BAB214A498FED014C815
          4DF9BB1CA1643F4EBCEB4C0535A34C31B0A7C3484A27A70A02253B1E0C49A86C
          5A32310FFB08C94980E081C2DCDB224C22C78EE80C964B521B4FEC35C7B8E94A
          32508066D1591235F9646F1AB00E7A4AF43CC262AF153BF7AE4FDC7A43C6B15B
          ACE11C242C85C0438131C96D0AF8D2E1B5C395339C2070DD9636925FDFDE9B63
          8A928E7E8C15254DEC34A2B5B79FA94672862773C0CD5CEFE9EDEDB9B87C3807
          E06C53A07F572A00FC164405197079FB050662CE7679F5D49773C6B3FF3A3ED2
          338F3FBC70850938E77D2D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200802000000FC18ED
          A30000001C744558745469746C6500426F72646572734F7574736964653B426F
          726465723BD66787E30000000674524E5300FF00FF00FF37581B7D0000025449
          444154785EB596BB8A53511486FF2DD682BE804C33BE80A0282A8E5A692536DE
          40108599560C2A12348418A6B0D3116FA8E38C2F6065BCC55BB4D072500BC517
          98C2DEF5CB62ADC362DBACA0E60FD9E7ACB0F93FD6659F1C70C25A0BE0E8D58F
          00A85FD2EF22208A2EA008C1D8E65B4941D1C57F2E100A357A7C792700059098
          DEB80E3463B56381799115DA0022162894EA1E5800167DF9BE0AC001A510E0D7
          1F3F511AC770A7057A21E95828221CA9641681D8CEE9A9F5468B0CAC2CCB6736
          E39F75A03D04235C6317A210B9E61F7D40A6262B068060B1CC33B50E6FC90184
          1015A0293152F597DF2397F7A901446239E1DC91ADB97DD3F40610835290A9F7
          F05D0E40514A954130135D38B60DA984FCB307C5D1A9BA8B6FC7EA0059F5200E
          54A68BC7B7E7001BFA5203C042E680CEBDD74845EA22AC7AF04B21B9DA2776E4
          FEA4987B75D048C659457F6904A0B7A833D37DA075EFDC7F03E0D2DD578AB9FD
          52CB75EB85B6FDE6731DDF1BCF00B4AE0D9440FF04F0D095D1F9A59583BD11FF
          87F6B406B30B9F66CE3EB15033F007BD485EA23B436412AA9D440FA22F48D539
          B90B896286EA934CE6FE5EF71CE07E01007DCDD43DB53BF787D955635A349204
          E033932AEA1D25126B4DAADEE9196412AB0F2B4021C67B5C2F3C452AF76200A2
          3A99FAB37B737FF7AE33D08548D5BA3EF8AB7F340A3816617E6E5F6E4F778CD7
          16415124B9BF3DF41C69B86605291A58AC11008FFC59A62BFD45102C400980ED
          DD34B5C19842C23E288D63F5F6E6F706F75DEE1C134A0600C4E76FAB7490EE8C
          148C640023074063C747F183EDE2843571C06FFBD26465F835BA250000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200802000000FC18ED
          A30000001B744558745469746C6500426F7264657273496E736964653B426F72
          6465723BAB2BED400000000674524E5300FF00FF00FF37581B7D000002394944
          4154785EB5564D4F135114BD63DC9BE81F900DFC051377583416412DBA70E35A
          89983429B5452C4DED175F6A008B042550A8AE042CE2425AC0425B5858C01423
          46E31FD0C45F308FFB72C3BC7477EF62CE2467329DFB7ADE9973E7BD01E53200
          69327F80FCF2C3BEC313CB7BC8E38B35E417EFBF52E9ADD44E57B2DA95ACD0E5
          E0DB2A722AA739315F468ECF698ECD6E210FBCF962041820816A38F7DD870212
          9C02804CFE0018D07E1136701079BD698631E14B54420B87BEB87B0E88F160A0
          7F7A43ECE066BCFC68E1F0C6D3B2D801760EF0A014D741DFD4BAD801CE3D98AD
          5F8F6D891D8C2FEDF13250648283D0ABA2D801CEBD375BEF8CCA1D8C2DD68069
          4181CDCB209859133BE888960273F56B0325A10309687101094E23DD4EEF52FB
          D1783C906C27528520AB40E7F64889AE94A37912BDB295B2683014063D5A806A
          9ACF9F01FBE40E58FAA4A8DE7410FD6573D359BA49AAE640A2424BCB1DFDFA6B
          1C60E5CF3FFF55E3ACA81A54838796A67347BFFF29B0E86700B0F5D9D49B01A0
          C4217B9F6CFA67BE5DEDDF7031640A48042D30F46E87D942365BE1E1F34F4620
          78E702B0A1551818F37B8D403AC774402FB3050CF43C5B15877CA56FBD677AFF
          72B8280E39395F613E1D8BBD9A3E18FD2876D0162EA2034FA8207690C896D9FB
          19B78BBA47564CC88FEF5E0416043B4E26D0610462B3DB3C03086496C0FDE115
          710697826BDD53B5D6DECFE20CA23325FA16A3EF19E79B203459A0BDC971F083
          D648F3AE52BF63CF68A6E77E6F284F6C1CB80AD7058E01F44F0C5F1996207200
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002E744558745469746C6500426F72646572496E73696465486F72697A
          6F6E74616C3B426F72646572486F72697A6F6E74616C3B80FCD9F90000031249
          444154785EC597C18DD6400C859FD1DE290109891E38510C9550067DD0030570
          5AB442E2CE853B928DE2713E8D1D8238B1F91539E38CF3EC677BE69F8788D073
          5E0F87F8F8E94B448485140A994C39964AC6922E85243B06EEBCCF3132CC72BA
          47CA656F118A6577E078C487F7EF0C070A5C3AA52B5F96911274611FC6A9C72E
          A2E431568DB1639ECBDBFBC640468E135258CABCD02511F5CB71C50778E9CB30
          AC749E9A65E3819D2418902207806A4DC20300B43F271AE03890E6952CC6D16F
          A933B0726E968666802D8C0D58FD43298A3962F285EA95CBF04AA607F6E557AF
          8153153C843C125A90915E4037B9AF9860C677360097DCF94E67A002301125F9
          18F44F1DDD22BFA42100875185DCF9F8A50B88B6E70E406E74AA2E30F2B58372
          7B00BE98F25E032D97509C3F9E8733E8CF552373EDA999E03057E0D71AA02A89
          407751F762847E6C3AE5AC04A410D919580D2DF3F056FD1D1CB9F77AAE78224A
          40A6F3E8AB1BAE0C40D33572C65E8C8BA25B039FB48BA8EB9E0C8C1AA0DD6EC1
          59A3044BE782A3C11645353B410DA339F0F9E95775217DCEF3219CEEE81F12C0
          967644EC3B88ADB185E4560E9A4881EA7AF3EAA5A473925341192FAD4481B485
          06709CEA73F2D968713D7EFBA1D986FAFAFDA78C96D38870567219C196A52C38
          F9BEF8EC8CF17DEB0EBC7DFDC28ACA3DFFD0E5E73BB998E3DADAD547CE6F5A99
          803419F8F34223E3DDDC529B1EDB0E3E8085BC3A90970C23AB72F0F8DB96CA5E
          B0EDE2950E9F0E4C67E75E206B2C38000553A07EEDE706D45B6DA4C498A3B8EE
          0530D0FF9754072C701619D60E182887004F1BEC3B8337BBA100C5A8473E74F9
          E8057E5DAA2BD144DED785F0C9C0BEA95694444E3A722CA8A67670E2926F1763
          98B865C046143EF77301BEE5DAEEDB4DC842DC6C470D90CB9A7005C7B901500C
          DC57BBD85971E3E6FF8053FD80B70D48444934FA5770C1986E76C3955CEB34A6
          7EFE37EC6CD449472DE7D0DC9C82090FC96C300038B437E0CE06F457F764B102
          5817818C034EC9793272CE762CC09CFD847EC928A9EDEC27959EB363E98D790A
          9973221A35701E1425FD3F0903CF7CFD06D360828E0E129DF60000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002A744558745469746C6500426F72646572496E736964655665727469
          63616C3B426F72646572566572746963616C3BC5B500F80000030A4944415478
          5EC557C18D55310C1C8BBD530212076AE04431544219F4410D34C0090417EE1C
          2860358314FB7994789FD8DB7EE9C92FC973261E8FECFC074978C9DF03007CFE
          F24D9242802004026B0C94555A02021092F0F5E7A3F2F0C2FBB7AFD69CD62F62
          BD51CBA67F4850684D2B44E9D3C70FD1072870E0B2C45A2C272CD0C40E51C877
          E1DD9BD7F8F1FB2F121C905007B1DFB53FC16D7D63408012BC06911697115044
          E423A05347F478D97254D41CD74CAE513997CE660042942D5419400610FCEE43
          A4ADB902AB64F558FB03EC0C64CE239663443A981A03A337F1594B361D131395
          954BB1BEA2EC9FA1EE1AB8A6D42F024B644D4686987667A45C1284660382D340
          F63E66C0A4233A62391F3BFD3DE7B5120D471AD4E0664C60523319283868E4CE
          516EB976F820EC64503F548327533C3420417D08994A47B2035BED3E88081006
          35B8994BF0A901ABD2A21B510F700B15748A36CABB12783DEDD0802409417157
          BFC1777BD1AD8C1A0CEBC320D31F17039A0C344D9ACEA65388228BFE1E3C6987
          A3CEE764E0D00017BA42B7E0AE51CD12A6565C3FEC6B515AE4B312527143DBA8
          7AF0460663BEF304370BD6D55D2FA80652D663099EAF4EC1DEAD8C2317BB8B22
          BAC724C5DE676820C1CAE698091082D08997C10557A32DB7891AADF65CF3FEC0
          64C0919BBADAC82273959CCA0666CE8159C45C4F6E18488759DF355B2A302AE6
          00B7EF19009E62006620727352F72D5500E175F78680C4A72307EE184018008E
          C285E1B85CB47F82D1BE709A8E9484BF990CA0194003BBED526A10F69A6F4A6E
          4706676B6956C6D90DADCACD698BFC9C2B710277A5BAD61006EEDB0F4F063AF3
          10324A47EE74F08AC8F574823BDF55A00613370CC4B111CF7E8E064F0162D07E
          A77AB8125EE37923721DC093E093E27035BC57BB3B6B1FE3E63EC0567F836F0D
          08A33195FD3FF8E81FB31BF2EA863B38A97137840166D3A1A92EC879C3A68088
          8381039CF3526A361ADCD4B210FDD55ED2CD56D9D10BA8D2800B30A912B9E75D
          319381EFBFFE34A085EEAE0744FAE74AD0156C67E0FAA308E05976BE7BEEB9D6
          0CBCF0EF1F8ED0858556B622B30000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002D744558745469746C6500466C6F6174696E674F626A65637446696C
          6C436F6C6F723B466C6F6174696E674F626A6563743BBF70600F000007204944
          4154785EBD977D7054D519C67F77EFEE26D964138809664184D084AF90103E6D
          8AD8410C56A445CB5481827C3894E96881D28E14853F2CAD505A5BB1C24081B1
          D65AA5A53A2025840F050123201F09F9E02B10169240C86EF67BEFBDBB7B4FF9
          E30EBB635813CB4C9F9977CEDC73DE33CFF39EF3BE67DF95E83EEEE62BE82684
          B8BBABA9BBE486AF19B018A36CCC49DC03CC18A8D9FA1402818494181825CFEF
          3001A63D6BCBC7E665A7FD43424A8FE9E24C47405D3F7169650510037440D46C
          9D2A122597CCDFD1FD63ADDEFC03EA8E5E2E40884DBAA0181D2D2644ED6DB25A
          73BAF5D2A8EF0E5B3370DA5B59E6D42CA2AA9FF6DA8F693EF9C1D1BA26CFC239
          6B8E5CC410228CB3AED93295E10B7676FF0A745D47D362159A1AFBADA6468BDC
          7EB5CC178ABC256429306C54BF55031E5D90A5454DCC2BC967D3A2F9DCF4F5A4
          74DE07E3BE5336FE44C5EAC766005640966E0340E8826F84931B9E64D3B4C2D6
          7553BFE5308459FFB2E4DBA5D55B9E6E0B5EDE2E34E59A104217BF9854265E2C
          CA164B8AEF131BE73E2EDCD71AC58D331F8ACAD5E5BF026CC6B54A5D25A461F1
          13103181AA443FD235FD69C0B269D143256306DFBFB760C2CC5C73DE08042044
          84D92B56A1EB909666A6BDB196F7977C9FB06263F4B415AB77AF9AB018480164
          40FAA6A525BDFCB0A3B7DD22EF4D7BA0E7CF1F291BF0DEA0C767E5981D23C164
          0593094980D99CCDC625F370551FC69E9142568F14AC569931B396939E9DC1D1
          ED7F78E199D70EFF0D508CBC105F5792A6C4327BED48AB4B4FB3AE37F9D55DF9
          8FFC28911C110BA1872E100B37306BE52BDCCCCBE0504E8C1DB91A150375DE3E
          FF3A7B5AFE49C6E8FE6F2C5F5032164805E4DD752FB0A76111C9604AA871EBDA
          B9C34BCB270D7975C2DCE72CEFFFE95D82DEE01D7294EBE8A133849A3763166E
          9E99F353DC26812ACB64DBB3E9573890AC5E69A40CE96B193AB370CFEFDE7BE2
          59206572D17AF97B43DE94BA1260D9B070D4F8F1257D2A874E999B3370D20C26
          2EFC19EBE6CDE1CB5D1FDE21D77CD5A8AD97F07EF926C3FAF761EB732F33D994
          8372BE95AA5327F1E8971956584C79D95CCBC811C3B76CAE98BEB28B9C880B18
          9497F1F6B0297332CD79A560B2D2BF74042F6EDDC4E9BD7BD8B07819CEDAC368
          379B89DC0A126EBDC2CD03BFC7A2B43175CA7466178CA5B8C5CAE7079A3877E3
          1382A28EE2C252FA3F98BFEC8D7FFD707AF2CA882F988510B9164729AA124110
          C16205BB2DC8FC958F716CF77F58BFE2203D332DE4F74AA5D919A630DFCAE0F0
          3672474E66E88449643B1EA0C7A9A3BCF3F74F58F87C2A01AB9B077BF7C3D972
          6575F9B48195FBFE7DA10D1086754A42BDA5E9D66957532329197622612F4D55
          9534ECDFC68523FBE96553F8C9BC01940CCEE05CBD9F01E39FA2E69C4276C120
          E4E84D245703BD72339938EE61723C763EDABF8FA6F68BB8D45A7A6665F71A5B
          EE980D5800E96E57A003D1C61BC18D0D15DB4028D83314FA1709721C1E34573B
          17AADA39FEE92D9CE7C244A27064FB36868EC927BDF710CC588975B4A05EAF42
          711E233F1CA1A94EE55C733DF52DC751A416A26853920930030288BEBAD7B96B
          83EDB3EAC18F1E1A9EEDF013F1D7901275D127572677848DB01B94808C6CCB24
          BB6028197D8A4009130B2944421DA87E2FAD4E2FDE56C9EB0EAB591E8F40D665
          14531B21451904581202165FBD8228103E74C9BBF8E0863F2BA1F65377124EF3
          2984DD219480866CB392E97060B565A077B41275DD30C83DB4347B39EF3475EC
          AC712E8BA8025F8786CFABE2F27670FBBB47B2443401C250A56EAB759F3D5DDF
          BAE2F3774E2625B7E5F6C58C15FD4EE41EAE5FF3527BD1E4DE79E2CA9C06BF52
          1F8B82CF13C3EF8BE1F329A84A544E568A66E28801A1D7BF687B578E89BE42D1
          1617E69BBB455EDD20BC15679B665534FACF0029C14024AC05E534BF1CC36A95
          50543DDA5543228C5103026B4FDC5AB338128DB86EA4FFB27474FAD7929FAC89
          7A2B6BAFCFA8B81A3801A880EE6E556A3CAD690F698A4A2464C27DB5E32CA001
          22693FF0EB31F709C34105BCEBCE74FCF1709DF7A5CF0E06B4806AEF447ECDE9
          E18B539A7757B5F3C7B7C98F037E4001C2AEABEAD2B39F06AA2E1D8B72F9945A
          D578DAB3C8588B910C2B4B7BA046A289FD5F1A903BB177DA132F1567D5FF75FA
          6071FC37E3C4857565E2C0D22162CDC482E00447EA93402E90029812FA463B70
          3FD0D718ED894998D80F4818585E9479A71B5C5DE74B6C42D380CC67FBD9A6E5
          A5CA336DB2541411A2EDBC2FBAFCE3E6F03E23F248FC95330288279D48EC1BBF
          DA9E49248794F84B09A41A6636CA36048413C9BBDBC22717D0B590C4363C312A
          F1BFFE2F9000E24796D8EB1BD6D9572410131766EC8D5B5C7CE7474FC5383DC3
          01D94824926CEE2426898FA9F35AE76FC37C40C0C84C2C407AB7371B73F7381F
          03428902ECDDDD7C4F7E710B00929938B200E9FF684D80482C339B31CA49EF3F
          79D45D5F5D1CBA51C21D4030EE90500149EAB9FB735DBF073A100162FF058DF3
          807891F8DA230000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000030744558745469746C6500466C6F6174696E674F626A6563744F7574
          6C696E65436F6C6F723B466C6F6174696E674F626A6563743B7AD16B1E000006
          8249444154785EC5960D5054D719869FB32C200A81462B3545F00708086855C4
          A4266D9AC4B4A3B53F499D6A324DD37626E998B1B16333B1312CB8743AA9915A
          878426CD34A3462B8D3F4D2799C48618624C6349AC3F802C3F2A62AD22059465
          596077EFF9CA8CF7EE9C617626C5E9B4DFCC99B9F3CD39F779BFBF7BAE5B44F8
          7F9A9BD886528AA61D4B19AF0DEB24BADAE6327BE02228C8AFDAAE006500C4B7
          F6114184FCE777E0E6BF689656BCD7B594A94357B92538CC82576A14E0AA7F64
          A5275EB93C6111EFE2EDAF558C8AD28000F21F0B2858B620865723001A9486B6
          6B77513C580828161467BA00D7A1FB977B3E3323A374D68F1FA7BD72B3A7F6FE
          65AEA507DEF202D6B80488D680A034880B544410348E091AD17EEE2ECE7252EE
          FEC5CA359EF4D96AE3ACC7D6E03FF8273296DF47CF6F773EB3FF9E2FAB070E1D
          2E1F9700C2211B0458420421CE024B1CAF455EC16A071EBFE2A14A8FFB8E794F
          4FFEEE17E9FFF30B049A7D24B85248995B44E3EE7D1B810A409B029877FB7211
          011414DDB68CD5D502088882EA5644B04D200A5688ED2B285ECAE963B549658F
          3FEC91ECBC9F3FB8FA4B9C68F927A9C3A96466E470644B15FEA110DDC1E0E698
          3DA04550A0D08260C20411500E1C838F8C42DF51800B48A8AD585C9633DFB561
          DA3D0B3878AC93BE6B015C73BF42CD2F4B99E80F72C6EFDFB2B5AFD70BE8B163
          6883EC14A011944942103BE6E8769AFF5EAB803820F1EDF245A5B38B729FCABC
          D7C3C8B92AA604A7E2BAE96BECF8C37B7425E4630D9FAEFCA0AF6313108ADD84
          A2114708124D2E02664EB4EDF31D7FD7814F7863E3424F4E51CE9359F79531EC
          AB26D4DF427E7A31957BB6D3D9A1683DDDB0B5B7ABD1EBC01F4B98282F858298
          02100724669A8DA43B9B941A851F7239F0D79F9AEFB9B568F6CF667EB58C918E
          FD8CF43462A515737AFF6BDC11D27CDC15FF9BDECEC64DC030102949CBD53A78
          1160AC00CB4EBBA070C4000AA334D0721DEE0692F6AF9F579A573873FDAC65E5
          0C9CDA46B8B7053565114DFBF6120808ADE702DB6A8F5FF63A70409AE2B38824
          6A089D192B00100D66D501B4D3ED9AD693EF3BF089353F29F2CC299CF1D3EC15
          9B1838F66B22BD3E247D31A7F6EE63605068ED18ACDA507BC50B0C016140BEBF
          7EBBECDDF92AA9D313A1796C06B40645B4E34504A5041145EBA9BAE88C039376
          AF29282D2CCC5A97FDCD72FAEB2B89F43423D36EE3D41F0F1008424B47E0F98D
          EFF76C028276DDE5C3A7F3E403F705164DBEC48ACFFE8B3A4C0166CAC59E017B
          FC5A1B0E9BF0E4571FCD2F2D2A98FE44EEB7CBB8F6D1738C5CF11137BD84137B
          5E676058F09D0FBE507EA4D76BC20F3F992356D862496827F193FB8884048891
          0185428C02B4351C31E129AFFC20CF533427636DEE0365F41E798ED09566E233
          4BF8A4E64D0283300AAFAEA8BFEA05020EBC6EDD2CD1A148B4CCE1B0762A1D6B
          0AB42307C3E2804955AB6EF764CFFBC2DABC95ABE9ABFB15A16E1FF1334AA8AF
          39C8605068EA0CBEF8ECB1FE0A03AE0FADC91A855B088212484D062B1CA59802
          8C06B49BE04CD35F9D2F5CE2BABB73977C6ECACD6BEF7CA29A4BBBBE41E85233
          EEEC851CDDF31702438AA60B432F6D39E1F7027E6004D0EF3C9A2156C48A8E72
          5A32A44C8088A5110162F68013B936A327293B3DFD7B190BEFA2BBED04C1CE46
          1273E67374771D811168FCC7D0EFB6360C98707DF087B7880E47AF6BD252849B
          122112026D0902B17BC034A7F693D3B3A65E8CFBFCD71FBAF75B0C741CE5F2CD
          AB38FF613B7EC9A0FD7CFBCBDB4E07BC40BF3DEBFAAD87A78DC2255AD6B46421
          2551638541697BAA6397C03EA4E05CF3DFA2E9CFCC5EF09DC094394943971B38
          7BB281B64F8ED3DFDDC3B9EEDE975FBC0EBFE6C0DF7C305D7444830D499BA449
          4D100883E5BCDFE6C42E012A2AC4B9E1121227AD8A4BCEE447CFEC812EDF705E
          42E0DD33570777BD71B6E73030E0A47D466EB188BE1085A78EC253E23591B013
          DC588B9D01111166E69500D0D1F2F1D4AB3D57F276FD7E737B7824702018E8D9
          F77628781918B4A30E3B70808F4E0EDEF85FF1595FBD32FE8A9D124C686BA84D
          B7F7868011E33AD5806CB875A240B311C37805C43601B411A502B4B38C3D3CDB
          1AE446CD7D3D509CAB35CE7E56E6C2304380D87B5CC67997B130CF1BBE0830E2
          5C506EE3250900B10F9BCFC4C5F43B62CC33B1DF91084CB0FD01B779C37DCAE1
          D8BE1BF75B40D01490328EC337BACF5C0140994D980AA8FFE13AEFFC940A10B2
          1D09409C01601CA5F8B4D2994D1C04FC40C414608D6922CCE771FB4C7FECF10E
          03FADF16414BA65039F2000000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000036744558745469746C650054696768743B577261703B546578743B4C
          61796F75743B53686170653B496D6167653B506963747572653B416C69676EF0
          19BA8E000005D049444154785EB5577D4C955518FF9DCB15B8C19A166066D2AC
          FF4A510141FC5834974D33250441BA42AED241E5A64DD1399D5B366BE5E6A6CD
          35CD803227A0657E8DCD9950D4424D2DDBF2A3423387CDE90608F772EF7B9EAE
          6787E7BCE7BD73AE35DFEDDD73CEB9CF7B7ECFF37B3ECEB9028000E0D352C07E
          04EEFD88FFF83B0190001C00E407E0FBA4E9E4D1049FAF300E9A001280203504
          882020402010AB10949ED6059181D1536268A50DC7715A6B8205CF01882A03EE
          8057154FC07D7AB4F166FEF1EE8E6700240070FCCA114D92D4E64208108FD97A
          3526127A53F654AF1B00E3ADD0D23C89437C20921C1A6580FEDA6C42D2B3174B
          8E8BDB29418356006E38724941662E250759F83DEC60E7DE9FAC8D89754DDC41
          88872161C02D1DB356559CAD9C905E068CE78492194F31207BCE2BDEB981B0B0
          59C993A04CB051560C48BD4010686CF9D50A285979C011600022C42501B1FB76
          052C2AC90191C2BB5B0E104A673CCD1EA6A6240196A70CC63C9065A5150405D4
          7B3BCCBF491A94D2C3808BDB3D47CEF1A4627616E657BD81B4878661C4231998
          336B3AF272C7836C1AD8F8D367CF61DFFEC3E8ECBC82AB7F5DC181AF9BD078F8
          17065B549ACB21F0E400B1A7A533C7B0AF49497EE4E78EC3A1966FF0DBF9DF71
          ECF8F7983639076B6A9722353585A9EDEB0FE1FD4D5BD172B4557D1ABADD83E7
          671422909418DB6FAC3BF63A04F26E3900EC39F43367F0E49C4CCC2B9A894347
          8E416ADADBDA3BD0B56C0D3EDABC1181079211893A585EBB1E6762DE13018E13
          4134F69695CDC3853F6FA0ADE30FCEA5D7CAF2148674E06540B2D2FC59633517
          020942201048C794825C7CDBDEC18976FE5227B66DAFC3B2A5D5D8BA6D670C5C
          25AE0A43241C42417E2EB2C68E417F2866C80B59A67AF44892C30D5F33C01AD8
          7DE02C8F4900D3273F898AF9736306FC08809889BDFB5B3069521E9AF71D0449
          69A55F30588ECB7FDF424BEB05EBD478BD3C5F87C0C38024C921289B9D65D58F
          CFE7C3AD1BD7A05852D8A4C04846B07CC53A3597A46884940E1CC7514CA40D4B
          41F98BE3AC7E22D598EC46C4C9A115BED87FC6D55808C3D35251983F0A99A31E
          45E7E5ABBA0225F77822E273241CEAC3E3A346E289D1A371B4FD22AE75755B05
          BC78C12425C9B1935048632216CC19C7AD55138540F2106CFEE01D94572E417F
          5F0844A463EE6E3A5225E5962D9B90969E8E670B86423A76C3266847896C0694
          A2DEE7B32F4FBB5BB11A55CC198F865D4DE8BBDDCF61E8EBEB4152720A843061
          894AC28E1D7558B1F26D34349FD4D0828D5C122C001171D521BE0A08C1A20920
          0D0221944C494946FB0F1D204D7B34128EB19288BD4DF5A87AB506DDDD3D1C92
          D6B6EFB076ED2A045FCAF164BF6050C76E44BCA0D41AF69D02593D9F50FD7201
          BABAFE8132C071101D08A1B4BC0419C333505C341B9FD6ED5210241DDCBCD983
          50388CCFBF3A0D272AAD365EB3700A9F05EE32142425531E2CCAB64F3C6588C0
          C3C386A2EBFA7544C2FDC8CC7C0CD5D58BD5E6559515686B6BC7C50B9710890E
          2023231D498949A8989B0D123AAE5A48DD2BE273800C59F5CDA74026FE6A2D58
          9C83DA156FE1C34D9BD5E61B36AC477220A076F5FBFDD8F8EE7AAC5ABD16BDBD
          BD5859BB1CDDBD6134349F80F772505D39551BE2AD0229B9A416CECBD6DF9844
          4CF0FB909737118D7B76313B5C8600468C1C81FAFAED9C70A15004952513BDB7
          2A8D11DF8AB95C2401758D275C67B85B907DEB2132764A856D96CDC0DAABE695
          A93A91A5B713126B56954CE49A150C6E8E5CD7A20120CFDD8FC7E456E5AB07C5
          95A1345D6D67638702B741EC9BAE88F750874B70BCE318C11D06A6711FF094A1
          64E53763347969D795AC01C07356D188E69A66734F6E064949A6441BE0B2969D
          607C2E4730A54CB82B2C6485C3BE2FEA652120B9EA4C088834030FA60CB1E24A
          66E25933D775E2B1F14C0B903B71C9751E48DE99FC0022E170FFF1D5EF1D2CE4
          43536AC3992E96DC23601967D34E46DF453D4F301009B70218800E70A2EBF5DD
          F31FF2FFFFCDD1E02100116140958C07B83F8FD42FFD0BE75603F98818FF4000
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000037744558745469746C65005371756172653B577261703B546578743B
          4C61796F75743B53686170653B496D6167653B506963747572653B416C69676E
          E9DAA18B000005B449444154785EB5576B6C554510FEB65C4A6B49233EAA88AD
          41E31F9557B97DF1884D8C35206085BEA8A595A0ADAD4A02095642244DC4A051
          22091862C0DA2215697958E59146445AADC622501413514C2AF2A3F8831FB4B4
          F7F6DEB3E3BD9BC99CB3E786106338CDCDEECECED9F9E69B999DD30000052089
          4705FB51B8F9A3FEE33E01D0001C0014881BFFA8E3A7E3E392920A134C13400A
          5064A60011141408041215B309625D10B966C072316DB4E1384E774355C19300
          A20640DC78CDD259B8450F8377D71FEEED7B1CC038008E09019304CD70A11448
          E682DECC89141F2A9EB2DC6F9540BCE1DD4A1E9F04222DA13100F86DF710D2BE
          B36494B8789D52C4284880C9BE602477ADB50459057CECA0F9C019EB60125D37
          EE20249A216519171D8FAC6669B67142FB19703D2794143D2206C57391F8D7E4
          8FB1BD56BE04158259990140B380A0D0DEF5AB1550B2F2402220068890900424
          EEDB15B0B26436888CBD1BE500A1B4E851F17062DA04C0F6548C3102F6D6E2C4
          023F341C923D4D3C92F631E0E176DFB1F3B2581543BCB8BC1677DD310993EFCD
          C092854F2037381364D320E0CF9E3B8F839D473130700997FFBE84AFBFEA44FB
          D15FC4D8CAD2A084C09703249E962E780CDEF4C90BCEC091AE6FF0DB853F71E2
          E4F7983F67363634AEC6C48969E2E6C86808EF6CD98EAEE3DD0653E8FA109E2A
          2A34204B174CF3C69E43A06F9403C0BE233F4B06AF2A0B6259F1021C3976029A
          69EFE9EDC3E09A0DF860EB66A4DE968248D4C1DAC626F4C7BC27021C278268EC
          575EBECCBCF3D9E173128E17CA738D0DEDC0CF8016A5B285D3980B65503CFCD0
          54CC2D08E2DBDE3E49B40B1707B063670BD6ACAEC7F61DCD31E326714D1822E1
          100AF282983E2DCE2450FEF474B77A78A6C9913EC10C8806F67E69100306718E
          C15959F64C0CC08F00489838D0D985FCFC5CEC3F7818A4B5957E5555159CA784
          B62FFA25095FACC8E310F818D0A42504E58BA6FB9B89A1D9B0C4879A3F1DC1DA
          751BCD5A93A1115A3BF1460362360060F9E21952A11A466E5F44921CACF06967
          BF348FBACA3C63E0C1A999C8CABC0F037F5D66CF34038118D244088746F040E6
          9498FE54E163CFE7FDE24DEDF27C33926327A1D22E442C5F32835D57D24AD3D3
          D3B1F5DD3751515D87D19110372AE27D56823649B96DDB1664DC9321FB954B66
          0AA18639066B31A01D92CCFFE4D05989D94B95F952E9BBDB3A30727D54C23032
          328409296950CA0D4B541376ED6AC1C68DEBE5FADD73E88C80ACAB2A001149D5
          21B10A0855C5B340126B334243A1F7873E10CBA2913052539271A0A31535AB1A
          70EDDA90E877F77CE7B6725278EED96CB78DF1E3D81791088CDAEE83A7E5A6AD
          8F235606210607FF8101E038888E85505A5162A85E5ABC081FB7B4C1D8D30EAE
          5E1D42281CC68464738DA375FF2939BB61C55CE905DE3254A4B574BFAAE26C06
          2391800670E7A4DB3178E50A22E1516465DD8FFAFA5AE3594D75257A7A7AF1C7
          EF1711898E2123E36E639CB859AD581694F06AAE8EC41C70FB710CF169108379
          B9668EBCDCB8EE55BCB765AB397CD3A626A4A4A69A8D402080CD6F35E1F5F56F
          60787818AF35AE85F67CB8B4769CE239505F3D8F81F8AB406BCEAD38E26CA902
          90DBE8727373D0BEAF4DD89132043079CA64B4B6EEE4EEC815C29AD525396075
          B62157B1AF0AB82BB6B49FF2F47019C4231221094E683E4EC432B1CE6A787E1E
          27B2F6DF84249A35253952B39C0256CB15A11723F9BEFD64CE70E5E1BB25A10C
          3549089ADBFB8C71DB88FDA5AB123DE424667494C808106760BEDC03BE32D4A2
          FC4A8C261FEDCC07D800642D2A6CD1FA4CF328909741E2912961001EB4E284D8
          3722EB727209F78485AC70D8DF8B2C560A5AAACE0D011133909E36DE8A2BB90B
          9F8CD70CC0CD3BB268276FE292A71F68814A0100917078F4E4FAB70F174AD3D4
          0C5CE8F28C60CF2C7036EDE4EA5BD4F3026391703780310680B1F79BCA160348
          069074D3FF90FFFF9EC3C643007400409485E11B18B8158FE61FFD0B6BF512B7
          0E7F33B90000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000036744558745469746C650054696768743B577261703B546578743B4C
          61796F75743B53686170653B496D6167653B506963747572653B416C69676EF0
          19BA8E000005D049444154785EB5577D4C955518FF9DCB15B8C19A166066D2AC
          FF4A510141FC5834974D33250441BA42AED241E5A64DD1399D5B366BE5E6A6CD
          35CD803227A0657E8DCD9950D4424D2DDBF2A3423387CDE90608F772EF7B9EAE
          6787E7BCE7BD73AE35DFEDDD73CEB9CF7B7ECFF37B3ECEB9028000E0D352C07E
          04EEFD88FFF83B0190001C00E407E0FBA4E9E4D1049FAF300E9A001280203504
          882020402010AB10949ED6059181D1536268A50DC7715A6B8205CF01882A03EE
          8057154FC07D7AB4F166FEF1EE8E6700240070FCCA114D92D4E64208108FD97A
          3526127A53F654AF1B00E3ADD0D23C89437C20921C1A6580FEDA6C42D2B3174B
          8E8BDB29418356006E38724941662E250759F83DEC60E7DE9FAC8D89754DDC41
          88872161C02D1DB356559CAD9C905E068CE78492194F31207BCE2BDEB981B0B0
          59C993A04CB051560C48BD4010686CF9D50A285979C011600022C42501B1FB76
          052C2AC90191C2BB5B0E104A673CCD1EA6A6240196A70CC63C9065A5150405D4
          7B3BCCBF491A94D2C3808BDB3D47CEF1A4627616E657BD81B4878661C4231998
          336B3AF272C7836C1AD8F8D367CF61DFFEC3E8ECBC82AB7F5DC181AF9BD078F8
          17065B549ACB21F0E400B1A7A533C7B0AF49497EE4E78EC3A1966FF0DBF9DF71
          ECF8F7983639076B6A9722353585A9EDEB0FE1FD4D5BD172B4557D1ABADD83E7
          671422909418DB6FAC3BF63A04F26E3900EC39F43367F0E49C4CCC2B9A894347
          8E416ADADBDA3BD0B56C0D3EDABC1181079211893A585EBB1E6762DE13018E13
          4134F69695CDC3853F6FA0ADE30FCEA5D7CAF2148674E06540B2D2FC59633517
          020942201048C794825C7CDBDEC18976FE5227B66DAFC3B2A5D5D8BA6D670C5C
          25AE0A43241C42417E2EB2C68E417F2866C80B59A67AF44892C30D5F33C01AD8
          7DE02C8F4900D3273F898AF9736306FC08809889BDFB5B3069521E9AF71D0449
          69A55F30588ECB7FDF424BEB05EBD478BD3C5F87C0C38024C921289B9D65D58F
          CFE7C3AD1BD7A05852D8A4C04846B07CC53A3597A46884940E1CC7514CA40D4B
          41F98BE3AC7E22D598EC46C4C9A115BED87FC6D55808C3D35251983F0A99A31E
          45E7E5ABBA0225F77822E273241CEAC3E3A346E289D1A371B4FD22AE75755B05
          BC78C12425C9B1935048632216CC19C7AD55138540F2106CFEE01D94572E417F
          5F0844A463EE6E3A5225E5962D9B90969E8E670B86423A76C3266847896C0694
          A2DEE7B32F4FBB5BB11A55CC198F865D4DE8BBDDCF61E8EBEB4152720A843061
          894AC28E1D7558B1F26D34349FD4D0828D5C122C001171D521BE0A08C1A20920
          0D0221944C494946FB0F1D204D7B34128EB19288BD4DF5A87AB506DDDD3D1C92
          D6B6EFB076ED2A045FCAF164BF6050C76E44BCA0D41AF69D02593D9F50FD7201
          BABAFE8132C071101D08A1B4BC0419C333505C341B9FD6ED5210241DDCBCD983
          50388CCFBF3A0D272AAD365EB3700A9F05EE32142425531E2CCAB64F3C6588C0
          C3C386A2EBFA7544C2FDC8CC7C0CD5D58BD5E6559515686B6BC7C50B9710890E
          2023231D498949A8989B0D123AAE5A48DD2BE273800C59F5CDA74026FE6A2D58
          9C83DA156FE1C34D9BD5E61B36AC477220A076F5FBFDD8F8EE7AAC5ABD16BDBD
          BD5859BB1CDDBD6134349F80F772505D39551BE2AD0229B9A416CECBD6DF9844
          4CF0FB909737118D7B76313B5C8600468C1C81FAFAED9C70A15004952513BDB7
          2A8D11DF8AB95C2401758D275C67B85B907DEB2132764A856D96CDC0DAABE695
          A93A91A5B713126B56954CE49A150C6E8E5CD7A20120CFDD8FC7E456E5AB07C5
          95A1345D6D67638702B741EC9BAE88F750874B70BCE318C11D06A6711FF094A1
          64E53763347969D795AC01C07356D188E69A66734F6E064949A6441BE0B2969D
          607C2E4730A54CB82B2C6485C3BE2FEA652120B9EA4C088834030FA60CB1E24A
          66E25933D775E2B1F14C0B903B71C9751E48DE99FC0022E170FFF1D5EF1D2CE4
          43536AC3992E96DC23601967D34E46DF453D4F301009B70218800E70A2EBF5DD
          F31FF2FFFFCDD1E02100116140958C07B83F8FD42FFD0BE75603F98818FF4000
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000040744558745469746C65005468726F7567683B546578743B41727261
          6E67653B577261703B4C61796F75743B53686170653B496D6167653B50696374
          7572653B416C69676EA058ABAE000005FF49444154785EB557796C55C517FEE6
          75A7C65069C18D2A2E7FA8B42C7D52CA925F0D11C25E4B4B171F2D4485B44112
          305008C11F89184C84A4091A23221404919656912D4D08D24A351614504C64D3
          5291144240DBD2BEEDCE7897B9739CFB428831DC97DB33F7DE3373BEF9CE32A7
          0C8075FBA464D02F86BB5FEC5F7E17003800C31AC75BC63F6E387924CEE7CB8F
          992600C10066497BAA000383B07E4A45387A5217429019C8F7CAB433CF308C96
          EA40DE8B00A23600CB7865E128DCA34B82A7E70F77B7FF0F401C00C302C05C92
          B80B9731083526F46096607251DA29186D1CDA6E9994742526F8200457AEB101
          C8D9B488E09EB59424BF10CB60C24541C0A4266114F4CCB972328BF7B083AD8D
          3F680B0B0A08224420D68C60645CD321CDCAC2D13653DCCB00ED5CA068F2B364
          50679976441A5E1FEBCFCC13A08A60528E772871B132D437FFAC39546871401E
          9006A42AD3E710455A062C28CA7118E0E24E3120503CF9394575EA804469D731
          6470814894231A355C042A3DE37C717680311F036304BEF77648F1C5852BB987
          01E2167B0E9F550F65D3B350327F31D21F48C3430F0EC6AC699330C63F1297AE
          FF85E3273B4D3006E27D0C79A332F1F4E3E93875E62C9AF61D42474727AEFCDE
          89FD5F36A0FED04FCAD882623FB9408F01A1A82B9E3A5C11979C9C805CFF081C
          6CFE0ABF9CBB84A3C7BEC1C47139585DB304E533B3D11F8C20252901A17018FF
          5FB701CD475AECA9C1DB3D983239DFFC9668AE97A5F9DE7101BF530C007B0EFE
          A822785C4E26E6144CC5C1C3479D1A0181D6B676742D5D8DF76BD7E352E79F78
          E6A90C2CAB598BD3E6EE6D37191144CDBBA4640ECEFF7603ADEDBF2A77BC5A32
          C6A9C306BC0C70A534775A96E482218E31A4A464607C9E1F5FB7B5AB403B77B1
          031F7C5487A54BAA50FBDE66D3B813B8169391501079B97E64670DB7192A999E
          4DD923475C18AAE04B06940676EF3F0380A27DD2B827513E77B609E03B004231
          D1B8AF1963C78EC1DEA603109C6B35201028C5E53F6EA1B9E5BC766ABC569A2B
          5DE06180BB0C00289991ADE58FCFE7C3AD1B579DF2291C9AEC1F8F60D9F237ED
          672E0066496E58078DCD447A5A2A4A678ED0EA09B7C7422F442A38A4C2A7FB4E
          532181C090F4FB909F3B1499431F46C7E52B7008E01288255C5A0542C13E3C36
          F4113C316C188EB45DC0D5AE6EAD1A2E2C1BEB3C197A10324E1051366B842AAD
          2E51296636D4BEFB164A2B16A1BF2F280F2A676754743852062463D3A68D48CF
          C8C00B7903C10DAD603BCC49B01A03B6A25CE793CF4F69A5D81A95CF1A891DBB
          1AD077BB5FB9A1AFAF0749C9A9608CDC12E5025BB6D461F98A37B063EF4937CE
          14C845813CC705548ABD592010281805218D80315BA6A626A3EDDB7608497B34
          123259494463C37654BE528DEEEE1EE59296D6E358B36625022FE578A29F0E03
          432B44F4C256DBD1F4BD04401D4ED5CB79E8EABAEE00300C44C341149716216D
          D0201416CCC0B6BA5D0E31DCC0CD9B3D088642D8F9C5291851AE1D58D5F3C6D3
          5940690826385794070A46EB279E0D846150DA40745DBB8648A81F99998FA2AA
          6AA1BD786545395A5BDB70E1FC4544A2610C1E9C81A4C42494CF1E0DE1360152
          70592B6263401059DBF79A0C90FFED7781C21CD42C7F1D1B36D6DA8BAF5BB716
          7D2181C6A676CC9E321CEBDF5E8B95ABD6A0B7B7172B6A96A1BB3764C6C00978
          9B83AA8A091288370B385729356FCE68398702312EDE07BFDF8FCF76EF54EC04
          83619499F1C2184352DA106CDBB659055C381C4545D1F3DEAE4ADA882DC52A5D
          B800EAEA4F40107012107AD72304E1E4B66D7A4D036DADEAF9136420736F25A4
          06A2D244EEE62C75414C65897A491835A0E4766AE9E8620E133169C8A9AA6DAD
          6FB78DEB46F44E97C5EE50BA8B51C4791981C5C044AA037A1AD269B8D8A4C94B
          3BE002A4DE8C40519E539BA6732F8841479F50310980D0823621ED533A42A3D4
          5126B708CD1D7ABF285F3306AEB28E5C208464E0FED404CDAF821E3CEFA85D17
          6A4C3B9342BA9249093A0FB8822A2C009150A8FFD8AA770EE4AB43934BE04417
          49488A35703AED82F4692EA14438126A0110769328916EF8EEFA1FF27FFF6648
          E341001146466D196BE0DE5C5CDEE26F9B3110E5B359A88A0000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003B744558745469746C6500546F703B426F74746F6D3B577261703B54
          6578743B4C61796F75743B53686170653B496D6167653B506963747572653B41
          6C69676E291E67B30000050949444154785EB5576F68965514FFDDD7D7B9351D
          45B430DB6A4A5FA23F9473BA4A322823B01C73B490D552289868D0C0960C6592
          D1DF81A021A18D2D9068CB22B00F23A9CD5CD10A59909050D047E9C3BE38B7F7
          CF73CF69BBCFE19CDD878144F88C977B9FFB9EBFBFF33BE7EE75001C809CAC0E
          F1E370FDC7FDC7EF190001F000380F20F7C9C8AFE796E5725BB26A60801DE038
          D502331C1C180C56114EE54416CCE60672AEAE533DEFFDF89E8EE6A700242180
          05E79DAD0FE1063D12BCBD7FFCD9E4E3009601F0F990888044122E9C03EB5EA3
          0F7B662746355339370796AD93D59E8AE539309396260420DA668429634B57AB
          8B2505C712055B60226931B2BD1369915D3E830E06CE5C8C0CB311C2003163A6
          CDCE9C473276D6D9FA704882B20858E68CB6ADF79AC31865CBC824B2358EDF5D
          86A00AB0090704480E180EC3A397A28272C403AB8038105117EB68FA7107EC6A
          5B0F66F1B7340718BB176002A01D15676ACE448A2D4A93349F4646308865358E
          85010445842D7A1227CFB6BF82DD5D3DE83DDC8FC95FA6C42083593B4583BF38
          F53B0E1E7E1F2FEEDA8B279E7C2E958B53B012C41C5031693313DFD8F820BE19
          FD1E7F5CFE0BDF8DFD88CD8FAC476FCF6B58B9B25AD39C9D2BE0BDFEE3183D37
          1E940AD7AEE2E9AD5B526246E56429411601328710A120C8C08E9667004A6163
          10CE4F4C62DFEBBD98BD36170C969204DD3D7D18FD762C6496242524BE8CF6F6
          1D0145D6C4A025236F233A97224099B1C9CAE47BD635E0D1E6468B8881CB7FFE
          8D132707035AC74F0C60EAB74B1238A15C2CA07963231EB8FF3E607142561010
          7B1DF8D205110784E53609773EBF1D3F4CFC0C80951B67BE1EC5A64D4DF8E2CB
          B360A2887E1D1D2F1801113D5202C41C2026EB32DD984239F1213B308C845446
          F7FE43E19D38C008220FEFBDD4DA98CD36ABC0419EAC04C2CAB436A9B0081927
          D636D4A1BEEE8EA048CC69C6C422C78A4CB1308BBBEAD6CCCB37680ED11827D9
          FB98848E440A04AD94C205A0A6A606473F780B959515009366C8642B40A8BAA9
          12C78EF5A3F6F65A40BFD76AAA6DF1670890679DDDA620C625954F4F8FA4CCA7
          40C6F9FDD5B49D9835A8C4334E9D1A94E005726B3F43D74671B60B58562D8BD6
          78E2A7C954198C52B988AA7934BE1A19C2AA55D560B0126EFCFC0545482147FC
          788A1190038956F72EEC4982B872E59FD47092202915D0B27D5B80BAB5651B98
          841BDE637A7A1A8562110C28DCF2A728180270290244CA56850C9CC62889DC7A
          CBCD209FA0549C457DFD9DE8EA7A35C874BEB413EBD6DE1D022B978AA8ADBD0D
          2B2A56C46524179C122B71A33604655AC61C1B377AF6EFC387FD4783F12347FA
          5059551564F2F93CDE79BB0F6F1E3888999919BCD1D32D778B9240692DB6F432
          B2394064996B2D5C741D37356DC0F0E7A7E3912DFBD56B566368E86410343EC4
          D5B7768C47715EBB406EC58F062FA89A056E19593672EAA4BF9D1DDB0691AD3D
          2F3F2649527612B24A76B66DD09EB57BD15997D8A139E0CCFF7EBACF8E62A71D
          16958089B50403C3930263C689C2EEE096CA70F155CE4B2082050436EB1C884A
          E0895478EF3C4C59D88546E200FAAE22E2315D6C7899AC21080E6B7C1BCA688E
          3AC0882C47D9DB4D9C5A59382A87060267F69C0369D759099805819AEAE5515D
          D95E3267ACDC60DDC79354B48CB88BEF03B25ECB0328178B736307DE3D2BBF0D
          094C12B8C1652B24B328B818763679D3559D30CAC701942005AEB00F72D7FD85
          FCFFBFF3E2BC00A0ECCC29724B1AB9310FC987FF05F6B75960384D04D7000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000024744558745469746C6500546578743B417272616E67653B42656869
          6E643B577261703B4F726465722671EB31000004EC49444154785EB5576F6856
          5518FF9DD76D340645F5454B88FA508232DBAC97595AD6665199926E5ACDEDDD
          9CB6CD3168148105565010950512D4066ED52A73EB4DDE1A19D1C8D587584EA6
          AEFA92FBD297A5485F86EEFDB37B9EEADE87F3E3DC4B488417DEF7FC7BEEF93D
          CFEFF973CE35000C8094B606FE6370F9C7FCC7750160010400A40C40EAD0E8D4
          B74B52A90D096801C40046C22E2002030381409C48B4282A0B11C2E8501C74F4
          5E1004137B77AEDD08603154E01FF0CCD61A5CA14795E7B8FFF04FF702580220
          280B0D5192ACAA0B6320AE4FED610011A39B3A4B759E00B4D668CBA7A23C0511
          EB5C132AA06F7313B1B1BD5C4BBFD02818512D848AE93A75148EAD754E366514
          A4F06076DA6D2C0C08122248C28821B893E17A666BAD33C2C61910F14D6D7A60
          6504E8B14C508E09E163FB6627BC69291C3260754234C247BE9EE166DE9BF480
          02A8920C0230333C37B46F5B0351A3142F1903A26DE383AB68B16729C15403B5
          D6E784CA734D44202A63C5C6182012C408468EFDAC032A9008487FE25F5CC1F5
          F6A63BDCA2C41950CB952283A687563AC0030707F0CDF804602386EAD23578B6
          AF1B5555550EE5523E8F83EFF463FCBB1FC271FEE23CEAEFBF072FEE7F01428D
          2122EA029B88014FE32363331055E8C65BEAD076739D67D5D8F159479051A56F
          5A711F76ADD8E031F0E9D869A740C7F6B473990D1067C07A6C6E7F641584798D
          975F39801F27A7003285471F6E404FD71EBC3B3088A3B9AF00B1B022282C5C44
          6D4D35DE7EEB0D16A4981BAD441AB83AA08C38C0C35F9E89FA1A6FB7ADDE885B
          AB1BE2F5FF6FB9D3B866692DDA3A6B01B0F289013EF9629AB501067B1E4FB30E
          D818031A9510FDEDD854EDA5D199995FF1DCF32FD18F61C7BA28B712D2086B03
          E4F397F0E6EBAF229D4E3387A2F7D420F10B914665E41BB5ECE3DCA94448B7EC
          DEE7E6225C3D17DD1C593C3B07FC969BF6AAE1534FD4D1A840292703BA62A334
          7C72F36A2076E85CB8F0273A3A7BB1B090D7834A2D73281606164387FAB174D9
          32F0645650EE06C5230336D092A92F0D1F3DA5D4A9CFB5D3D8FC0C04F0338067
          4128373E39079139A2AB5467F35DAED869D6219605046ADE723B2274E38ED5CC
          AE2ECCFD712E845B2C165096023E1A1E42574F1FE6E7E7A35880A0B2A21CB95C
          D681D36E3E81578838A14C0A3EFCFC2410BBE1D46FDAAD396DB4058E7DFF3BB6
          ECE853103EC3D993CA14C1BB5BEF0EC73C0B988646ACF54EBF96C76A99724AF7
          CE960E9C3B7F1EA5C202962FBF010303EFE1AACA4A948A8BE8ED7D1AB3676751
          5A2CE2BAEBAF45363B0A61CE0204D52CF019D009A6CCFB9F4D852D093468D8DC
          E58D8F8CFDE24675F519ACADE7DDE183D1130C0195EA6E5DE762C74A3C0BACD5
          008C3669DDB606CABFB32419D1FC6787FDE40D8DAD0D90CC02753F0C0C86464E
          108950AEB27147D5D3F2CE40327D057B32EB68246CBC120AC1449069BC133CBD
          55965982E4919BBCFB8977A5E33E21543C0DB512BAE81E1C994C82F0A60B13B3
          90F1A3DA499291BDEDEBC301EB809786D613EE6D5BEFD10E965F82115747C6BF
          A6518027AB085BA621A0A5D94B1D213ECBAA1058D1D42D6E8DC0BC2F723F6360
          5DD6D10522CAC0D555E59E5F8583D89CD0A7AE4FCBB481307059EA2110AB08FA
          6D582A14168EEF7B6D4CBF0D2DC4AAE2A48B2D0B1695834FBB509EEF524B144B
          85090045A8832BF843EAB25FC8FF7F2D50F03C80922168D82601AECC63F5277F
          012940C8F97DC854FB0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000059744558745469746C6500546578743B417272616E67653B57726170
          3B4265666F72653B496E2066726F6E743B66726F6E743B41626F76653B4F7665
          723B4C61796F75743B53686170653B496D6167653B506963747572653B416C69
          676E92B046580000056D49444154785EB557696C554514FEA63BB4160C984A90
          B8256AC3D28D3695A5120818C222B2B4609552594B5395C444FDE30FFDC30F63
          A2211A4804C52A521443AD659348F10742ABADAD4BD462B43176B56DACB6EFF5
          F5CEF1BDFBCE9D93B9378418C324B7D3B973EE7CE77C679BA700C49E049E15EC
          A170E3A1FEE33E01D0001C009414037FEB44CB678909094B02D004900214C5BF
          0211141408043222F14D625910090C2FC940BBD2701CA769EFE30F2E0730E12A
          1003AF589F879B345879591F3C76F5210089009C2400CA23497BEA2A0532FF8B
          F650B149F1A1C6527E2F0062ADE259464A720288B4718DAB007F2D8790F69D65
          66F18B1805459E16A218EF8B8E246BAD8D935592088AF0E18F5ACDC124012184
          108230A404DCC8C87EC5FA7C6384F63340649BBA69C5EC38A0C5B280CA5A206C
          6CDBEC8037B508BB0C687E411CE175673AE430EB4BCF030240043B0824332C37
          546E2800B1518C178C01E279E3C373C462CB5201630DD85A9B13515EF68808C4
          329AB48F0141022942DDE96F8D138FD51EC0E4C919C8C89882FBB2E761E61DF7
          58968104B2FB8FDFF07D47330607FA3034D0831D4FBD64F62B37CD375F919F01
          B69C2952D8B47236BCD1D5998F73179AD0DFDB8D5F3A7F4071511E9EDD5785F4
          F474A3F4682884D70F1CC485CFBF70D7A17F46B06C69094A57CE6556D91EF25C
          A0AF13036CD1F1860E102B94967917A02F4233ED97AFB46047D57358B5AE0249
          29A9203D81C653B5E8895A4F04384E0413D127336B0E3E68F8C628B0BDB4C8B8
          4C3BF033A02D364B57CD0199BC9E8BDEAEF618B011181CECC7704F1BAAF7ECC4
          9B870E47C1BB0022172C120EA1707E3E9EDEB5560A922F3A3439E0A19801084D
          201CFBA4DD443B1130352B1B403300324CD47F7A1E637A1ACE373682B4B600B2
          EE2AC0FBF5AD521BA0B0737391D401ED63407B0CF053B67A9E9546ED1D49519A
          350B10A79983B30DB5EE5A934B23B476628D064B8AEE465151AEE490E77FE5CE
          7621E2A88CFB8623FFBD536D56750987469199792B8687FFE4D4D2422D11D34A
          AEDC94A9D3D0F6E3DFF8B9BBD5AA86BBB6148B510E532E0CF08E8EA7E1636B73
          005FD359BDF4016CDF5D83B1B110372AB6CCA068A44D4AC3C1375EC5ED336640
          59192A8A102B6B31A01D2E99FCD1BB1FB719EA145B79F5F2598C8E8E19A1D1D1
          11A4A6A5433112717CBCF8F26B28595E2AE85C5D77972FF08A9DC9BA60163062
          F923B9DC7E9569ABE7EA0F8198F689481869A929A83D7A087BAAF7616464C4B8
          A4E7F79F50BE2ECF808BDD321CAB10C90B669270F4E45780EF86D3D3DB1757C0
          7130311EC2FD390B71FA5217EEBC37171D5F37C589D10E86864670E4F897484C
          4AB6DA73D5D685EE5A7A81A4A122ADADEEF7C4A3F9D2F1D835674E4E456F5F1F
          22E131CC9A3513AFEC7F3EEAF349285B93839A9A5F71ADF31A2213E3987EDB74
          6C2B2B86B407000CEAB11C8C01222B65DEFEB0C59D854085ECBC65F8EB523D6E
          C99882C292CD38DEF09DD99D5DB806FD03B5188F3253B0601DDE39D1ECBB2151
          94814526CE34F9B3C02D24303EDEBAA1C0E3DF584254003CB38541FD7F81EA27
          57F82F23D7BD556907C12C60F74341E1485D330443A0A4B2C989A4F892AD6C20
          904FC18A456224B4BF12B2CA2C50B1B110D2BD3D59C992E0ED2778F723EB4A27
          E7B8508134D476553B5C77C506F1DD7455D04276176B474146F6562E360D4B07
          D3D0EE8635DB165BB4733231809DD9926ACABEA68980745622335BDD904BB395
          3A24F852564980198DDD62F60458EE8B729E52D026EBC40544CC40667AB2E557
          9285EF1DAF5901893BB2235E02574A3DC88B01F27E1B46C2E1B18B2FEC6F58E2
          7524D2ACB8D02533D8324B399B761279F956B4C47824DC0460DC4BA214799070
          C35FC8FF7FCF61F010808862506F0E02DC9CA1F9A17F01211D020663D6AECB00
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000040744558745469746C6500416C69676E3B546578743B496D6167653B
          4C61796F75743B53686170653B43656E7465723B577261703B546F703B537175
          6172653B526967687485A17C670000049E49444154785E9D575D6C545510FE4E
          6B29252A54AD66D3229A101F2A0D562A08A8494B84108D5A164245748B218A3C
          9A187DF0D1F8E22BFAE083E06FD46E68D4488C5123680C420B426842D4C46245
          5EB01060CB5DB967C6E4DC932FF7DCDD6E6F3CFB37F79CBB33DFCC7C33E75CA3
          AA30C620358CFF7064AF73AC290071BF0D86AAE2BAACB2BDE5F16F4D93E98702
          6A00A35E8B2A0C0CD4BD9C5527B97772AF13681E7E1EE08502DF3DFFE4CA75E0
          0001D073634C7F69B017FF77683D9F3DE4B73F3E328070D44640BD60AD32B8D0
          4456355E1D3DF5F3B52834596004E6B53441453127006A83D2367F7D5E9C44C4
          1E851218D7895113C18ACC0D40BC45F558E09C775F3462BCE677CA6319EFC98B
          00C88ECD2BA09E74A40F01D426910CDD377A3CBBE8DF06A5C17B202258F3C8FD
          6EA5FDE81E74F614509DBE84B6C2CDF8F7FC39CC6B6FC79B0716D39A0F40132B
          A47E04C0517CB89B615502274ED85871F11AD07AEE14AE9F99C1953353B83C3D
          89BF468EA1B3AF07ED5DB7C3DACE54553804CD5E91D6AD0249E5BCFCF584E719
          D3CFC5D2E0BD2EA7676780BB7F780B85FE1E2CB8ED168CBD318A8E421B7E3D74
          02FDBB3A105B81AA26809536EDEC5540A22836ADEF4E0CD7E4D838A5712CB829
          3E8FE9655BF0DBF7FB716B570B3AEEBA03A70F4E60E9AA25F8FBE733B0B1650C
          D53AA9B91109A1242130F2D5048C7AA3265D6F06A54DBDB056A078115117101D
          BE80854B07105FA960F09575387B780A8B96B421FE87CD0A221274DA861C1005
          8A1BBA59E89AE5A22A6C2CA8C655A7B8A29730B6AFEC34DEB07815A67E9FC4E4
          69C07616895B4000689802F546460E9C623428F8963B5CEC432C16972B17DC74
          657D2B8056CCFFA38AF1F7BFC1F4864588EE9C0F7B50D8BE2546030024A13015
          9B372E03346C4AEC114822104557A1299D51417171786192F3288288B09F88E4
          888008EDE1932F4F92842620A362C796FB9CC23F7F7A95A1714D4AB325ABCE19
          F7CA9902467BEBC61E2842000A0A7869F7000916564AB6A925A258CD4342FE09
          1F7E712299A4AE94AF4EA01D0A75E88267B7AE7433A20440B5190E38940CDBD0
          A3CBDDA4D4367CD066FA5A537B86E12223908B03E93EF0D167BF30E4A0422A05
          38450640B5A66963E7D06A776D057976439BA45814438F2D4F72CF1E44ABA019
          4E05DB71805819851C1CB056F9FF0F468F518551EF238D055F40ADF7E4C5CE6D
          ABDD9AD83C29B0007CDE9F7ABC37CCB5671E334229E81559AE5016D51C8D482C
          5D7C6FFF3895A6B5F1784ABA67D71108CF6D5F03450312F2689E29C3ED832BC2
          928236AA048EBA6744F7417D0E186F3D89809250EF968FB20A78FA3486738496
          3E2B1ADE4F54BB9E5E0B85C9D98A190183678A7D5CC87AAA8183044339C8BDE7
          94E6E180155F3210ECFDF4082D05C7EFFAA908E778903578A1F480332E823C9B
          918F8000BB871F64DB0D0CD1DB54E7CB20A0B30ACA793623A80840867B3EE8EC
          476E88B7136C0E865CF05F3E0289DCA8118927216E5CD082B0FA347C320AF413
          28A3A25C67150009003BDB738100B81655670EBDFCFAE70F197A4F146CA95910
          2C35BF6FAB04674CCA5154F9114015806401A89FBCBAE7B56D4F006805D0CC9A
          9DE3913CC73DEA3D8F0054D251F80F3C4B6764042A0C480000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003F744558745469746C6500416C69676E3B546578743B496D6167653B
          4C61796F75743B53686170653B43656E7465723B577261703B546F703B537175
          6172653B4C6566747FE07BC6000004A449444154785E9D575D6C154514FEA6B5
          941215AA56D3B48826C4046D4DAD0DA08249A98A8698FE214A45DA1809A26FBE
          C8838FC6175FD1076394A426625A508C21C6BF081A83B6A04430444D2C56E405
          0B016ED92B3BE798CCECD9D3D94D978D7373336766EECCF9CE777E66AE616618
          63A00DC67FB565C725D61800B9BEA03133AEC92A7A77FCC897A6C67483013680
          E1E414661818B0FB78AD0CBFC8FEB75E80AA75F3AA0D0C7CB57DF3CA1E681300
          6AB931A67BB8FF1EFCBFA618F28418BCB5E78775085B9E01D96F2D2BB9EC6566
          3FC1504BFD7C1E05270BB2B4A0AE064C8CAB02D0D338D5ADBD70ADD41A16140A
          4CD6A537EC054B747500E435390BDEFE6022B44EFD1E287A6E53572A2B03CA10
          25D098595CCD7900BA398D5022C2FD1B56BB71E3C42EB4B437A33A73010DCD37
          E2DFB367B0A0B1116F1C58EAB68CEEFF29C39CEA79BAB7C3F50901359221F330
          A0031B33CE5F01EACF1CC7B5B3B3B8746A1A1767A6F0D7D851B474B5A3B1F556
          58DBE2ECEB7B6885BA2B4B91CCB34350ABB3B92C50009CF8ECF42C70D7376FA2
          B9BB1D8B6EB90993AF7F88A6E606FC7AE818BA9F6F426CC9C5C5BECF7F817A27
          4CC72DBD1DFE3C4E75DAF9B38028851EC7841BE2B398697B02BF7DBD0F37B7D6
          A1E98EDB70F2E0092C5FB50C7F7F7F0A36B6CE5D7D3D2B8238C9E360B075526D
          511082596DB096C07809512B101D3E87C5CBD721BE5441FFCE1E9C3E3C8D25CB
          1A10FFE3D9DCFBD909682D0A416CEDEF74F3441454DAC21820066C4CA8C655B7
          B1C21730B97BDCEDB86EE92A4CFF3E85A993806D1904C160E0E13B43B7B38E44
          26A40050E80249A1982C2E56CEB971E5917A00F558F847154746BFC0CCFA2588
          6E5F087B901CDAF14F8F0319060C1BB77778B0D3F514A308800421892B1C0351
          7419AC7B103533CE8F2CF62AA20844DEAE81F56D5AA738AD050A4A5D50CC00A5
          19EA37FCF9DD2B525112ABE001E9F14EC3D8819FC1E0A014337BE8231BBBDC1A
          977581F871E78B3D92B05E715009F5AA6406061F6D8334CE15352F92E53241A8
          9BDE199B04670F521684E64CDAB1B82CBD7C9E7D72A59B272DC5D27326060425
          3BFA363ED6EE26297F21A803D2B1DE9A1A0B9A055C3606E6D6813D9F1CCB5CAD
          0C64147286779D5760DB36AF76BD2594B90D2D38A16FD386BB3DDD5EBF6AD140
          0C142B9CF0D2E394851231602DA7FBDFDFFF636089D0A92058E926799C70AE04
          6F1BBACFCD932DE3022B9590F1D4E31D195F4B3A8A7D22E51F300A5265622E51
          88C80A9F78EFA3A381F54E393978C1C19C44BE51DF03D0D8D9FECC03601404A1
          3ECDC3341CEAEDF4B25A5C9809BECDF3466496F97C0C9844BB6740737B74EF64
          FE99A5C528677598252AEC185E0386299786CA80C196817B83C53011B4698618
          9143DF2731C56562C052923220EC1E9F507FB2069BDC744166E49EEA0AEE8591
          B53E0B082518A0E45802766C5D03230AD4E76AAD563E5D53500912885CEA3202
          1309855AEB79BE277990FF7A361BB01154FACA16E38A0A1149105EBFA80EF922
          64144870BE02155678EEBAF8DF03B0F3FD2F200057A2EAECA1975FFBF8411358
          2F0A39CB469825C9BDCD14BE31A54551E55B0055009405C0C9E4E55DAF0EF501
          A80750AB395BFC97BCC46F38B13C025099CBC27F3F78850D32633EE400000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003A744558745469746C6500416C69676E3B546578743B496D6167653B
          4C61796F75743B53686170653B43656E7465723B577261703B546F703B537175
          6172650F5982A3000004D549444154785E9D575D6C155510FE4EA1941215AA56
          D3B48826C4044AD542A5A2A649A9162331FDE3062D366D6D0CA4F1C907F5C147
          E38BAFE8830901534DF8A956898A1A3582C6506D21A025444D2C56E4050B016E
          D92BF79C4F33D97332D9A5978D9B6C767BA673BE6F66BE99B3D790843106EA32
          72AB2BF977061B01387996B84862611268F7E8E457A6CCB482000D6018EF42C2
          C0802018A3CA1BC504CA428CE71F540C287E5F6F7F667D9B065C988CDC18D3DA
          DFD588FF7B91485F31E5B7F7FEB031614867C0FB5B4BC0A85D0D40CA0208EA7D
          D3A024181BBC69517919E8881B1208BB811E5B3D09781281B167A188293B7D54
          04AC733726E062447A2E145682B16BFF4432DAA0030D3C945B07AA0CB9981A49
          5F6A2608A48B48127BC68E07437F67239C737878F34362AFFA71276A1B6A5098
          BD84CA9ADBF0CFF97358545585373F5D2EA51AF9E8B8C7C7B68E07C4274E4099
          EE90740654343D8FAF06C110992D1217AF0115E77EC64D7373B87266069767A7
          F1E78163A86D6A4055DD5DB0B6567C3A1E5B85E018CA280C16A8D574173855F3
          D12F4E0502FF7586D4F0EC1C50FFED5BA8696DC0923B6FC7C41B63A8AEA9C42F
          474EA07547358A564030F6F9A9581A445F47A3EC671930EDFC5D10844274B7AF
          4228318162D1E1D6E279CCAEC9E1D76F3EC01D75E5A8BEF76E9C3E3C8595CD2B
          F0D7F819D8A28523D119FB2A3983969281522204C9E034FAD9542030D8DD086B
          1D881711D501D1D10B58BA72238A57F2E87AA50D678FCE60D98A4A14FF1607F1
          35A0E8A1BF7B2D488886F4A42DA90147A07BD3EAD0E84E34E050281664A33C2F
          6162CFA8EC70F3F266CCFC368DE9D380ADED11C2DDEDF52193F47B221040A912
          84941F383415E6E9C09675283A8BCBF90B62CFB75700A8C0E2DF0B981CF912B3
          9B9621BA6731EC6107D1CFA19F3CB0F812802B224D202D42174AB1E5897A0436
          A064208AAE826A8FA886B838B054EC8C22C90E09F46C5A03EACE5625283D88D4
          19B6EFE3934204C66028F7A06CF0C7F7AF860943303EACF46CA1F8ECFBE424C4
          4883C15C130882594BE063DEFA64436858907869B84D4DBE7054EA532FF8E636
          DFA7869ADC70961944A89CDE3B7802548DA451A8970D619C041BCE0BAA836068
          6BB3AC3B0602FEC98406846548E3D34FDD2F8B9E94466782083D6B1338042309
          30AB06F41C78F7C3630A50D1568498B2D3AF0532CFF76E10BB75C8721A5AF1A5
          237A3B1ABD8E409D73253CB5E4A135D5D8E6B3904103D632F88FBC3FA902516A
          98EF03C4C325B4B27DDB060177364B09AC9F84C4B35D6B13B5163A095226F501
          A3D1A9DE1D99611039EBF389774627B49A011A5F0A056F4055074D8E343006D8
          D1F708881222F49FE6C936ECEB6902A03765894E50A6EB95486E5C5F0346D0FD
          2464886FF7FE7181D6AA3769405D00DD82C1303CF0280893A50D75060C0672EB
          D320E999A4CA62C23B75ED634D318B06AC8B5B060EBBF68E0768C2200C3A3D15
          3C61A342D7182486075B04DC3964398CE20D1DF0C2732D223152D75C45AB275F
          22572158C2BF673A8C40A1C9D07694C7FC9FE0703E112A729A3823BA3D091F5C
          A941E4BC086F59521EFC19A2328A88DE3F100D59A1B6FBFA0B01D8F97E173800
          D7A2C2DC91975F3FD86274F40190A96C50B75A3C2FA866BEEEA028CA7F07A020
          5809028C17AFEE7CADB71340058005AA674BFE24CFF03F8C238F00E47516FE05
          88F471C2A0EAEB8D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000040744558745469746C6500416C69676E3B546578743B496D6167653B
          4C61796F75743B53686170653B43656E7465723B577261703B546F703B537175
          6172653B526967687485A17C670000049E49444154785E9D575D6C545510FE4E
          6B29252A54AD66D3229A101F2A0D562A08A8494B84108D5A164245748B218A3C
          9A187DF0D1F8E22BFAE083E06FD46E68D4488C5123680C420B426842D4C46245
          5EB01060CB5DB967C6E4DC932FF7DCDD6E6F3CFB37F79CBB33DFCC7C33E75CA3
          AA30C620358CFF7064AF73AC290071BF0D86AAE2BAACB2BDE5F16F4D93E98702
          6A00A35E8B2A0C0CD4BD9C5527B97772AF13681E7E1EE08502DF3DFFE4CA75E0
          0001D073634C7F69B017FF77683D9F3DE4B73F3E328070D44640BD60AD32B8D0
          4456355E1D3DF5F3B52834596004E6B53441453127006A83D2367F7D5E9C44C4
          1E851218D7895113C18ACC0D40BC45F558E09C775F3462BCE677CA6319EFC98B
          00C88ECD2BA09E74A40F01D426910CDD377A3CBBE8DF06A5C17B202258F3C8FD
          6EA5FDE81E74F614509DBE84B6C2CDF8F7FC39CC6B6FC79B0716D39A0F40132B
          A47E04C0517CB89B615502274ED85871F11AD07AEE14AE9F99C1953353B83C3D
          89BF468EA1B3AF07ED5DB7C3DACE54553804CD5E91D6AD0249E5BCFCF584E719
          D3CFC5D2E0BD2EA7676780BB7F780B85FE1E2CB8ED168CBD318A8E421B7E3D74
          02FDBB3A105B81AA26809536EDEC5540A22836ADEF4E0CD7E4D838A5712CB829
          3E8FE9655BF0DBF7FB716B570B3AEEBA03A70F4E60E9AA25F8FBE733B0B1650C
          D53AA9B91109A1242130F2D5048C7AA3265D6F06A54DBDB056A078115117101D
          BE80854B07105FA960F09575387B780A8B96B421FE87CD0A221274DA861C1005
          8A1BBA59E89AE5A22A6C2CA8C655A7B8A29730B6AFEC34DEB07815A67E9FC4E4
          69C07616895B4000689802F546460E9C623428F8963B5CEC432C16972B17DC74
          657D2B8056CCFFA38AF1F7BFC1F4864588EE9C0F7B50D8BE2546030024A13015
          9B372E03346C4AEC114822104557A1299D51417171786192F3288288B09F88E4
          888008EDE1932F4F92842620A362C796FB9CC23F7F7A95A1714D4AB325ABCE19
          F7CA9902467BEBC61E2842000A0A7869F7000916564AB6A925A258CD4342FE09
          1F7E712299A4AE94AF4EA01D0A75E88267B7AE7433A20440B5190E38940CDBD0
          A3CBDDA4D4367CD066FA5A537B86E12223908B03E93EF0D167BF30E4A0422A05
          38450640B5A66963E7D06A776D057976439BA45814438F2D4F72CF1E44ABA019
          4E05DB71805819851C1CB056F9FF0F468F518551EF238D055F40ADF7E4C5CE6D
          ABDD9AD83C29B0007CDE9F7ABC37CCB5671E334229E81559AE5016D51C8D482C
          5D7C6FFF3895A6B5F1784ABA67D71108CF6D5F03450312F2689E29C3ED832BC2
          928236AA048EBA6744F7417D0E186F3D89809250EF968FB20A78FA3486738496
          3E2B1ADE4F54BB9E5E0B85C9D98A190183678A7D5CC87AAA8183044339C8BDE7
          94E6E180155F3210ECFDF4082D05C7EFFAA908E778903578A1F480332E823C9B
          918F8000BB871F64DB0D0CD1DB54E7CB20A0B30ACA793623A80840867B3EE8EC
          476E88B7136C0E865CF05F3E0289DCA8118927216E5CD082B0FA347C320AF413
          28A3A25C67150009003BDB738100B81655670EBDFCFAE70F197A4F146CA95910
          2C35BF6FAB04674CCA5154F9114015806401A89FBCBAE7B56D4F006805D0CC9A
          9DE3913CC73DEA3D8F0054D251F80F3C4B6764042A0C480000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003B744558745469746C6500416C69676E3B546578743B496D6167653B
          4C61796F75743B53686170653B577261703B43656E7465723B5371756172653B
          4C656674C7E7FFED000004A549444154785E9D57DF6F544514FEA6584A893FA8
          5A4DD3229AA00F4A0D52A14AD0A425E203C6006D1530B662FC5134BEC883FE01
          C6175FC1071F00234652A8446234314A048DC1DAA24448081A2CA9C80B1653D8
          BADBDE99CF667EDCD3B9B7DDDD384D337776E6EEF9BE73BE39E7AC2209A51464
          40B97F19B975E53D0230762E3348E286ACA17D8747BE5135AA0304A80045FF2D
          2414140882DE2AE136E9CF8214F37E49B10602C75EDDB6663D640400C27C6674
          F46D7E08FF7790C80F0FF98383439D8847DE0301B1D614E7D23D93CA1314A6EE
          F33C0AFA8DB0B5B0B606344445004281A96D9909041029E280220516ED33B022
          A08DA90CC0788B84C2DEC15350A0631E9B4DE993B139D2EF29E5C101CFCF8494
          5E74F2721E8050F587BB9FB81FCCBC216B0A2446D116DA8C85E81D502337644E
          0FC8E2D05767ACCBE95DAF14252439D00A8C90C8F4C29655FE9845B0C0EDE601
          2801E090776F58113115C57983625C7C229804181D70CDD4A69EFF16A4422106
          BEFC555C4EA1E63CAC227022D0F81C09ECE86E736B4DEB81722204298CED8B0C
          21259873BDF862A230351B65602EE7081863A24C5B560386C0878323C25C78E5
          44D7D7D58681CF4F3B804A018CCFBCD8B3DACE062900940B8163E911AFDDF888
          DD68F869379A5B9B501A9F407DD36D98BA72190B1B1AB0E78BA5166DCFC60781
          AC4053AFB9D924C803C88BD0A4A1D009F1CF345077F90C6E9C9CC4F58B63B836
          3E8A3F0F9D42F3C3AD6868B90B5A375B5E9F1CFD45BC9209D14BCFAE09842A7B
          C0480DB399EBD224F0C077EFA3A9A3158BEFBC1DC3EF1D4163533DCE9F388D8E
          FE4624DA58A65B9F5A19094F12932363FFAA0D4160912406B7265730BEA207BF
          7DFB29EE68A945E37D77E3DCF1B358DEBE0C7FFD78113AD1D6C8C79FFD1C4C82
          FE5A2ABAE797B7B63B116A562342A9015A1B106FA2D802144F5EC52DCB3B915C
          2F60F3DBEB71E9E418962CAB47F2B733B9EDE9952099BDB6D13535928AC3CC8C
          06024A7A0D189492928D5D811318DE7FD842BE69693BC67E1FC5E83940377781
          543870640451BD12007865FBA360B51A202921301AD70A57ED7361431D803A2C
          FAA384918FBEC6F8934B50BC6711F471E33CB0695550BEF0C9D40C6D504D35D4
          4E4886989E4A70FED82E49BDA0AB31F72AE002810B56AA76FBC0E0B078206E23
          D0DFBB3688B1B206B4664A60577F279829738C9621B6C0735BDA32B5494A8E31
          2EA4465713021D3221B167FF0F80629C0DA5F110964A3E67BE546267EF3A0784
          AC2211199D22EFED6A03D4DC8A8EECE400E65B0CA28C08A5358FAFE1BE8121E9
          8C331E507189F6530C2C2C5EEF5B9796E4BC067C2B2C9950F277DF33AB45CDD6
          C8DCDD4FDC0485E7582F84AAEE1A8A0714F61E1C8AFAC07C252494945D19995C
          F0DA8EC76CFC598D06B4A18F99C11B332F4A7E576236274805102258C610E1AF
          A031A8A618790F18CB42D22AB34DB792B03052BF0009C69DDDAA8A11688CB064
          603F7F3302137448214705A6CA952E3B902B97884C10E1CD8B6B25B349CF1F01
          11D601A88895B3F743FC1D003DDFEF020360BA589A3CF1D6BB471F5711FB6090
          596FC4DD4FD081E4FC48A0C562E17B0025672B06400FE0DFDDEF6CDF64AB0EB0
          2008B3E24FF2CA67E899170114667BE13F67A36CF1D977496E0000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000036744558745469746C6500416C69676E3B546578743B496D6167653B
          4C61796F75743B53686170653B577261703B43656E7465723B537175617265B6
          37778D000004D949444154785E9D57DB6F55C517FEA6F4421B45AA56D3B48826
          F87BD0B6116829A29214E225A0BF140FBD50420F885AD0F8820FFA07185F7C45
          1F7CA044821E6DC10B4A7C5022E803505A53C484A0C1928ABC6031D053CF69F7
          CC12D79E59D9374E779CD3EE33993933EB5BDFFA66ADD9E54404A514024DD9FF
          E898B4147304C0F077894644288F1A1A1C1EFD5695A90E10400A506477218282
          02F187AD728FFFFCDF7247CCC38E8B355E776C60CBAAF508B4F2A8E7375B4776
          D372FCD746493E5BC8EFE74EAF8B4CC41970EBB5262117E4F78994DD4E3CB5E3
          71146427DC54654519C810E60520BB81C4B67C83000742103B14024CE60523F9
          1D6DCCFC008CB54850183C34669D279072AE4AF4A1C436E421B405B8EAEF5C0E
          B2A2930DE200843E5168E6C987409115610862571A05DDA6B0102D0165724292
          1980B4A1AFCF3113A20E8A6B8B621095032721CB3EBFC23AC5081658E394780A
          4C20E69B9F690A7B2A8A236B08E1B08489943922E2AE26B1A96F7D0A4428848F
          8FFE643D576292FB2A72DE13CE1F670D7B0AB66F5EE903D4C40C941221484408
          746D68B234038B6A2A853769245CC48EDD747ED6ED255A30C684326D490D1802
          725F9E15433BBB5BF1C1613E15114F2926C2FE9B31CF7D352E032F74B571D740
          00A0540844C9DD1B9ADDB078B066E36A1EA91DD98B86E67A14A7AEA3BAFE2ECC
          5EBD82CADA5ABC7B740988D7B63846247D1B0F250088088D842277E4ACD0F852
          6F1BB447F86B0EA8BA720EB7CDCC60FAD2246E4C4DE0F7A13134B436A3B6F13E
          68DDC0003E3A322EBAD8D9B30A60075230600235ACE7D99640BA559CC92ECF00
          0F7FFF1EEA3B9A5173EFDD38F3CEA7A8ABAFC68513E3E8D855074F1B06DDB3B1
          C5F79D7C67F893320412CB839FFFE8CA0006B6B4C3F30CEEF4AE62AAA90BBF7C
          7718F73456A0EE7FF7E3FCF19FB1AC7D29FE387509DAD3BCF6C37FD75A6B2FF6
          B6FB21D49446845203D0F7FF474448860B9401610F0A8D40E1E435DCB16C1DBC
          E93C36BDB91E974F4E62F1D26A787FB2CBE87DCEAE154209860480FBA6880618
          A5A58E58F52EC7EDDABA1ADA33287A458E659EAEE3CCFE6176E1F625ED98FC75
          0213E701DD9061F0073F1B931CF572DFA3A0B41A08E6816D5C4494A8D8331A37
          F2D7B89F7FAA0A401516FE56C4E8816F30F5F462141E58087DDCD7405FE70A20
          5233B4419A6AC831E4DABD7F7854B8D9BD6D0DE6663D5C38F63A42E987007A50
          011709B80800FEFA0387462C785E6BC59842035A9318EDCFAC040502B967A023
          5866E44124C548F4B335D32A25C7183FA446A709817699903038340250523112
          739122CD5E722F087C77F6311F08518A4464B420CF665A63572E8A3C636892AA
          368F9510A15CCD23C770DF27A7A5AFC468522388730935E2D5ECE352921335A0
          AC759F01C9DFD8DEDD16A2162AF9F613BA04499F427A21A894A9581850D8973B
          151558CC9A38255441C6DD35F2951D4F70FC298D06B4211B3383D776AC756432
          1021377E251350446171909DE3536090A61859068C7D330A5CAF284C41202C14
          0A8700810AB294AA188118A6DBD0797FEBCB078CB543247BCBB54D503906FC7E
          A944649C0817D554D8F5B245F8CD28B4BF0015562838EFE2EF03D049EF05CE97
          B94271E6C41B6F7FB15605BD1783146623FAF2E9746062774C6E8542FE070045
          B615014076F0EFBD6FF575729501163861CEF74A9EE237643D2F00C80759F807
          23916EDE34EA16E50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000003C744558745469746C6500416C69676E3B546578743B496D6167653B
          4C61796F75743B53686170653B577261703B43656E7465723B5371756172653B
          526967687429A582A30000049E49444154785E9D57DF6F1545183D535A4A5194
          AAD5342DA209FA20AD3F284843C0A410254A34346D83A02DA051147C30FAA07F
          80F1C557F4C197A2188350C010A2315122E80342292A921034585291172C06B8
          E55EBA3347B277BE999DDDDBDB8DDB2677E747F63BE73B67BF6FB69624945248
          5C0A4030911EE758230013FF56B948A2361D6870E8C477AA4675810015A0689F
          424241812068A312E545DABD207D783BA48F060287B6AC7F7C5532606D9AB952
          AA6B63F763F8BF172B71B6903FDE756C656A219B0141AC35BD102CDF93CA1274
          4CED7C1605ED822CCDACAB010D312D004F810123D2CE09088758503860C13A85
          15016DCCF4008C8D48280CEE1D113096BDA8EFF658AF79B6AA4256066E4A4A6B
          BAE00159009E3249F43CF950183280202042AF33499BA1116D026A2C6A4E9101
          3F18FAE6345282C8733340609C3A6E03EDE64D3D1D96548C6086ECA8F8169884
          E63DAB177AA6B2852EBC659B816283F93592F158D3C5D4537A80CE28C4EEAF4F
          655FADD013320CEA83EC9799CDBD1DE591A664604A1382F48C7B9F6E03289212
          F42131E7967ABF86CC6B27CC3D4002C698A0D256F58021B0FBE029C783296BBF
          D4D7819DFB4F66B2433063CAFEB58BAC4D1C005495409CDCFB4C5BC8269975AA
          98D1B2359DF1B8F1F876B4B437A3347E050DCD77E2C6A58B98D9D8880FBF9AE7
          E43111AA0110131A27C5AE83BF0AEBCC2BF7F2BA25D011F1EF24507FF137DC3A
          31816BE7C770757C147FED1941CBE27634B6DE0BAD5B9C6F8DC99101637C9075
          6B1E4ED51ECA3F682BDB850960E10F1FA1B9AB1DB3EFB90BC31FEC47537303CE
          1EF9055DAF3521D206246D16724A20443F3FF0B34F79D26E245E79BE13516470
          477409E36D7DF8FDFB7DB8BBB50E4D0FDE8733874F63C1D2F9F8FBA7F3D09106
          C5849A794CE87BC0FA671FF12E764DC603D2DA80780BC556A078F4326E5FB012
          D1B502BADF5D850B47C730777E03A27F7C25317400E497290F084A82243EFBF2
          A4BD97CAE68BCB960D9DD09141292AC5DA167805C33B86624A73E62DC5D81FA3
          183D03E8961EC9403E0F24EBC00BCF3D0A4285ED17700023A371B570399E2E3C
          550FA01EB3FE2CE1C4CE6F31BE7A2E8AF7CF823EEC25D50679BAA10601D0109F
          EE1B11F5450627CFEBFDCB307923C2D9436F03813F003EA0807304CE0180066D
          16C91C1ED09A4E9017BB17254903083DF0E6AB5DD9B2EC54B201E37A5196D4E8
          3C1268A984C4277B87833A8FCCE124EC94428C6430BF7560793C30648E4264B4
          6B96FDDD1D99C3055321839B10579011A28A09E5689E7E0D77EC390EA8C45B10
          4671BA33736A610062DBC6E5AE25673D608FC2BE124AF32106FA1687690DA50E
          6501C2C38A0321732A5F29F6195018FCE298900DCF814C46ADDC019100B475F3
          8A587FE6F18036B49A19BCB169856FC714E00CB4A74711C8E5F6DA3592300679
          9A91656ACF7852FC425D996AD10453D485AC4F8ECAD58C40633C4B0AFBA90F1B
          FE544E4F8E0A540C4C421242AE5A213262C2DB66D7A52A20C32FA3E0F902D49B
          95C975D1BF0C4057FA2E102E93C5D2C49177DE3FF0840AD84B4086D9487F7C8A
          0F4C78C694AB582CFC08A0646305006827AF6F7F6FC3DAB8AB0033C498D37D92
          E7D843CBBC08A090CCC27F001B771964228CC10000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000041744558745469746C6500496E204C696E653B4C696E653B416C6967
          6E3B546578743B496D6167653B4C61796F75743B53686170653B577261703B42
          6F74746F6D3B4C656674174339BE0000049E49444154785E9D574D6C554514FE
          A6504A890A55AB695A4413E246AA011BDA20180B893F418D154BD317536A0411
          E2CA8D2E5C1A376ED18589B1A62AF2232A89BA5123680C602BC19F84A889C58A
          6CB010E82BF7C19DF924337332F7CE6D1F37CEE2DD993977CEF9CE37E7E73E45
          124A2964860290DB88D725640460ECB3CE2089F9B1B277F68F7FA51A542F0850
          018A5E0B09050582A0B74A3821FDBB208379BF64B006025F6F1F5CBD0199313F
          F6FCEAE8DDD2B712FF7790280E0FF9AD0F8FAD8F044506E4BCD60CE4D2CD49B7
          4130ABB7689404BD40440B1A1B40435C1340D046D195790AD7815A4541118065
          E514AF086863AE0DC0788B84C2DB7BC7022EBB93554C898FD9AF400971C4F0A6
          7B412BA397801180A20692E87F7805189D086BCA5A84B9B5A02383D813D02019
          32070361B1E78B9F456981572AA15E04111B141CC433FD5D4E4E8B609E931601
          280120446C7EA433781A781517BDED9813391F6424ED54536C42CF9D05122820
          767FF693B81BBC8CEE44BC248A1922809EDDDCE5249A96817A410832783CB0B1
          334725E7A21921EDF209950143C0181355DA3A316008EC3E7802CCBCCD98EEB0
          046541E4E520B60E743B9D100040DD2B90C3038FDE9DF7264E07319BBFA5B8FC
          4AF98649510F8004A1116FF1C155064489122A856EF9B596E3FEE02E45406E1B
          ECB173634A3060323D6CF0B17BB2340B8228168A99C040819D930E36CB5E81D0
          F8DE27C75DF0C5F125588A154818B166E4E0B64A8F0B42CD324118D26D7BA53B
          9F528C733DF83D5DBD0C9281B0181B08134AB13C19C580A0A455F6FEA7C70B9E
          1344EC78E5F195183D301EF62284CF55D680656320D4017760CDC61EBB6EF961
          17DA3BDB509BBA80E6B69B70F9EC192C6869C11B9F2FB5A02A7DAB8ADD28EA19
          DAA04C37D4F6080DA153E2FC15A0E9CC2FB86E6606D3A72671716A027FEFFB11
          ED5D9D68E9B80D5AB75BEDA31F8D87461615AA1D438E01B2440C684D3F73FDFB
          F40C70D7B76FA2ADB7138B6EBD1963AF7F8CD6B666FC76F8047A9F6F45AA0D0C
          81A79F5C355B52F8F473576A74992BD05209893435B8313D8BA915FDF8FD9B03
          B8A5A311AD77DE8E93877EC5F2EE65F8E7E829E8D431F6EEBEB1D933C432709F
          0342962844460B72686D40BC88A403488E9CC3E2E5EB914E57D1F7F2069C3E32
          8925CB9A91FE4B8006434F75E5688FCB04512708E5D33C4E439D1AD4D29A3D58
          E5058C8DECB727AE5FDA8DC93F26307112D0ED9B60A030B2F758A149C9EFCEA1
          B5D292678F01E5AD3B0642FD4E8DC6C5EA39BBAE3ED804A0090BFFAC617CF44B
          4C3DB404C91D0BA10F198B76A87FB57C04E5BA27207BAA5C1A0606946520492E
          819933491B717E78B18398245629098CEC39EA61AB4289DE31BC168604CBC480
          36F47766ACF2BFBE7F05B9AE4F143F4F01ECDCB20E50F6AC8802209F82C6A04C
          33F20C18E085AD0F38B38C838B518BCEF67F042062DC6D966A46A085C95CED27
          E72EC330DE0E197453818A08A89C5C9CAB57888C04E10D8B1AC128A273FF8C72
          FA0350618559B9DCBF03A0E7FA5F60005C496A33875F7AEDE0FD2AE7BD1864C4
          46F4F5434FBFC97F63CA4892EA77006A004C0C807EF3D2AE572B4FD87C03E6C5
          392B23DE2BF10EBDE709806A9685FF00443E7596DC71C1100000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000004A744558745469746C6500496E204C696E653B4C696E653B416C6967
          6E3B546578743B496D6167653B4C61796F75743B53686170653B43656E746572
          3B577261703B426F74746F6D3B537175617265063B93C6000004DE4944415478
          5E9D575D6C145514FEA6584A4185AAD5342DA209F1C152B51428692DA690D410
          FFA8ED86B4DA6E412316820FBEE8838FC6175FD1071F2CDAA82DADA01835316A
          048DA1F627A8901035B15891172C84B26556E6DE4F3373E7CCDCD96577E34D36
          339B73EF39DF39E73BE7DC7148C2711CC496637EB292FF4B901180F69F051649
          DC905436343EFD9553E6B483001DC0A1D142C2810382A0B14A04429ABD2023F3
          E62F236B20F0F59E9E4DDB102D01209EFFB7DAD39D8DF8BF8BF97C3690DF1AF9
          616B42901B81F0BC528C82CBE09D748C3AC6F5E61A25412308454BCBCB404D14
          051069A3D88E9E04421082384421C02C3943AF0828AD8B03D0C622E160687C06
          04207E3BA166793186E3CB782F6089FECE461000691DCE0B405C2689AE8E7B41
          FB844540F19476B6C56DDA44340128930AC91F01C81AFBE274447147589FE016
          851B916D5ADBD24FAE374EF90896986DCC5B053A96F3EE8EFAB8A7C23863C678
          9B8C899C171949FF55516CAAEB5781108518FDFC9424396F9613D1A094850D66
          A0BB2938A5E847A0100941461EA7B6D703B4C34A1B89C482763D8AE7B28F80D6
          DAEAB40539A0098C7EFAB3B039CABF008C5AA5F65FA5FE0D6905D0EED4C64027
          04000AA540ECA4B6AFB3BD49960318115E6439ED57DAB7F650008090504B2A46
          3EF9498C589D4F43C08894B1640480253DCFEC6C06AC14146A44B119B6F3D1FB
          E2852F49B7B9905B098C212661C0102C3105E2ECFB1F9F142539F6C018256456
          9818D8A97AB6A73920A1622924A418E979FC7E51B26245454E799131BFADB003
          0B57B289B940680A80F0C924070C4A8224868FCC4868F7F46EC607474FE64603
          CC69C53D8F3D80F73E9A1168CFF5B680A57220DE079E7EA211944B48A0A0E591
          CDBEBC6AF2006A1B6A909DBF8CCA9A5BF1CF85F3585A5585373E5B0D92E8DDB1
          1E48CC0CA551CA3454019134F1CEE16921DD605F0B94475CBA06549C3F851B17
          1771E5EC1C16E667F1E7D80C6A3734A0AAEE4E28550B0218FE700ADAE469B0BF
          55C85894034A5112D2D7D964F047F3FCDC2250FFED9BA8696FC0F23B6EC3D4EB
          47505D53895F8EFF88F6E7ABE1290D1278AAAB49CA45EB20A55A959202157642
          E2E0D8949976C0DE742B3C4FE316EF02E6D7A5F0EB3787717B5D39AAEFB90B67
          8E9DC6DAE635F86BE22C94A74010EF1E9A044D171D4CB70640C8121A915682BC
          BFABC91A804A69102FC2AD03DC1317B172ED56785732E87C791BCE9D98C3AA35
          95F0FE0E00F7756FB4AA85284042B99A27CA70686C5268B43FDD06E56964BDAC
          AF28C3CB983A38EE6BB8697533E67E9BC5EC1940D57605674727A481ED4B3F28
          23392F071C633D8840D4BFD3A90DB25793F0B4C242E6A22FCF745400A8C0B2DF
          B3981EFE12F30FAF827BF732A863DA970FA436596383708A97A11D01076F8F4C
          C8FDF0855D41045CF72A18D3E1D61097065606905D37304262E8D08474E8BD03
          6DBE032C85034AD3E44C63FFAE2D92026D1AC91FDFBF02EB164080F69834A46D
          8BAE2EA604B54629C3C84440CB5550AE57FB763F2446EC119D7B33166745E694
          348C40330E199FE7BC7EDB853676C848371DD0495C604884CE156A443A24E1CD
          CBCBCD7951617F1959FA05A84485717998FF0080CAFB5D607CB9E666178FBFF4
          DAD12D4EDC7B31C86434ECDB4F784DD7F61D5308EB66BE039035B62C003400AE
          1E78B577875F5FC012A9D9629FE4C5F7D078EE02C8C4A3F02F0D81899331067D
          5A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000042744558745469746C6500496E204C696E653B4C696E653B416C6967
          6E3B546578743B496D6167653B4C61796F75743B53686170653B577261703B42
          6F74746F6D3B5269676874DB17262B000004A249444154785E9D575D6C554510
          FEB6504A1185AAD5DCB48826C407690328B4FE362944893F516AA988C1FE688C
          68D0075FF4C147E38BAFE88389968444010BC69F684CD4081A43B1341025216A
          62B1222F580870CBB972763F9B7367B267CFE9EDBD719366F7644E67BE99F9F6
          9B730D491863905A46FEFCCA3E57B7118093BDE22289F95967C32347BF3175A6
          1B04680043F142C2C08020285189B291F22E481F5E1EE9A381C0B7CF6FEDD880
          D49A9FCD7C66750FF4ACC1FF5D24F24B20BFBBE7C8FA8C215F01456C2D7D7159
          3E9346DC31ED371F9404C5A0A605F575A023AA02F0DEA8BEFC2E7D9193205614
          1E58DA4ECD8A8075AE3A0027110983E1FDE38131F44EE9BB09B8A6784CEAFCF4
          63AB41211DC45401804F99247AEFBF0D0CFF2320A0C792C326EC0D892805A8D3
          1B52A102FE61E4AB1399047D6F0D8C677EC8F44C0980FE9EDBC59C2098271E73
          004C1A0009F46E5C19662AC12545C936AC89C7E26D2493A3A5C684AD7C0B9428
          20F67DF973725241D0CAFAAA50360120400C035660A0F78EB2DD522A50998420
          7DC69B1F6C03A82D2518B6DBDB7C6B8282AA2FE582732E50DA3939E008ECFD5C
          2AE0339560410B7222145C0E12437DEBCA3EA10080395BA04CEE7BA82DC82677
          1D305B5B72F2AB90E162E401E449E8B415D8F3D9712DB057BD000741AD4A0609
          E9BD3EFB440710B4602E214ACDB02D8FAC4220040224CF85501D34B802212955
          A8B1055AC60F3E39264EB2B1144848467F0875E3B9273BCB24B4AC85847E066C
          7D74553A40305C165FD5A0EDF0A4147BA84F1E9CF352AC3B331C50940449EC3E
          300EFA7B1DF061FBB6BB6638722C3709D5AE8B492B5783B57220AD03DB36AD01
          352832924C260EEF7EF8CEC4D4F4D34EB4B417509ABA80C6C275F8F7EC192C68
          6AC2DB5F2C537FB00EB54C430B02A02376ED1FF3AC96D63B49E185FE7B6063E2
          FC15A0E1CC2F583C3D8D4BA72671716A027F7D348E96B5ED686ABD09D6B6809E
          8CD53960AD5793FEC7D782C8DF7B3D59E7707A1A58F9FD3B2874B763D18DD763
          ECAD8FD15C68C4AF878EA37B7B3362EBE09C54CCD6D202AB4A480CEF3B9252B4
          70E0EC18BC1771EC706D7C16536D7DF8EDBB03B8A1B51ECDB7DE8C93074F6045
          E772FC3D7A0A3616874C7CD62044CE4A406060F33A64259E290E58EB40BC82A8
          15880E9FC39215EB115F2AA2E7B50D387D78124B973722FE47CA8F3948289FE6
          B96BF8FEDE5130D05FAF843B86EE838D1D4A7129715CE4058CED1A493C5EBDAC
          1393BF4F60E224605B7A015247F2EC1C3033CB2BA1D7EFC12D1D0A389C05B2C5
          CEE262F15C722E3ED000A0010BFF28E1E8EEAF31B57129A25B16C21E74E2CF84
          15A82E4406EF7D389A0E1854E2A567BA920A44D16530E5332A10E70797945388
          A224A8134EB1160E58A73D7378792688D77793E2BFEFE99F3FBE2E4FC68B5676
          6C12A21BA8651849AE0EA051590D655803BE38D4058DC5AC1E6AB2849E6B1A46
          60029381F6939565569589A4F74D031A45A52D2534B9B984C82909AF59542F20
          82D91F0051BB6F93272BD376ED7F1980ADF4BBC001B81295A60FBDFAE6A75D26
          C85E03325B0DEF89FEA3842EFCC6D41545C51F00942456008002E0F2CE379EDA
          94DC27609E12B3EA4FF2EAEF50328F0014D355F80F659F73A5EFD4947F000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C65004272696E673B466F72776172643B417272
          616E67653B4F72646572702FB2E0000003D549444154785EC556BF8B644510FE
          EACD38BB626CA0D99D8128823F30500C76230D2F36303514FC030E2E56049333
          30163113C140FC05CB8672672082A11818687CBB33F3BABEEFA028FA753BF360
          67121BB6BBF7BDE9AAAFBEAAAFFA9924FC9FC3E6FF3FDE4E0EB5EB5CA0CBDE08
          865C6DCEC9018009C05B10F300D2F983FBE73FDA60E77142794E566D0880A986
          04C5B19CE379BE94C1C58B373FBC7C1BC0886ECC333008387FF9DD7BE958CD0A
          48844190946BF33EF6AC6724E1E1979F9C015800283766404E8023367FFE8C1C
          13808C14AA5365A2FF1D70F2ECEB70276A4A6FC880D105F90890105AC35623AB
          7C779955078665031F596BE4A600E0850140F4C670D641E637E8EFD85183316B
          A46C21D7C1008C01600B91E9300B2F67A98FB4A54152388F9365032F7E008094
          9E17067AB0B4EC42AD937C0653874362C244D8F0922938B406E01B88EC234DFA
          BBF26316E604B082645983E58814F8E85140A4870F4BD17760948E2D95577FD3
          808D14F44568663700E08CFC890E53965BA30605A8DC774C00D6A449C140CA70
          BF14B53F0523A17193324C87FFA55F35E25E864DBFE7B845090058E55F02A811
          79AEDA53846BC0990E04592DBE184C507BF31F5128826021BEFDFEC1DFBFFEF1
          2F8661014B8E48BFB8FBC13BD9A27764A84C41992A9A6A626CEF818685586D62
          C203005E7AF119BCF5C60B583C916E64F8E8B39FBA16DDD7402138A60A82FFB6
          CB1280A573B5C280E533338B731CD770171E5D172C5723962E20DE0174EF5A74
          97021687C635440F8362B280A45D40AF47A1992B5B148201274109CEE95C2103
          C08C0A949DD0779A103364EBA8EF5B721D72D00977A2388181354E7ADFA07653
          B05D035D236A9460801A262C57013BACB008850E5270674D8FEF61C0A64E48A8
          E465A4B6C9A443E6BE72628D24D5A99C24E80ACA533A1108BB4BAA67402A02CB
          A63A00FB6859C36C6BA263A14A53AEF01B0C303BA70077EE2D420218AFB67EF1
          DD170FCFAC352A6BF6D543FA6DDDA787ECA0A7B75EC5B05C42B200116F4DC14C
          CBFAB2E94EEBF7BFF9EB0E8093D0E9CC5773827EEAABAF2F7FBFFDDCD3586F7C
          C293D816C38093D313AC564F469A985489CAFDAE0A949DC9015C57C7F317D8F6
          97DFFEC12BAF3D8F55F19D561D1E6C010CE11CC629493EA302F57D7A7EA49F62
          5860582CB1D0502FAA26113959AA66520EA5BE0825F5C6E707CC2CED432EC2D9
          7F3CCBFA6FD4EC909D61113B0C1C354A094D83ED5DC12C58B5424DC4B20450F9
          D17100B25E36EBAB8B4FEFFF7086BC86DBB5BFA9FB863D6EAF2F016C01F01800
          CA83EBCF3F7EEF0E80D354CC8E5AFA7D7F16C055EE7510808315330FC28F4AC1
          9C628EB291E331E7AD6ED139BD28090000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C65004272696E673B466F72776172643B417272
          616E67653B4F72646572702FB2E0000003D549444154785EC556BF8B644510FE
          EACD38BB626CA0D99D8128823F30500C76230D2F36303514FC030E2E56049333
          30163113C140FC05CB8672672082A11818687CBB33F3BABEEFA028FA753BF360
          67121BB6BBF7BDE9AAAFBEAAAFFA9924FC9FC3E6FF3FDE4E0EB5EB5CA0CBDE08
          865C6DCEC9018009C05B10F300D2F983FBE73FDA60E77142794E566D0880A986
          04C5B19CE379BE94C1C58B373FBC7C1BC0886ECC333008387FF9DD7BE958CD0A
          48844190946BF33EF6AC6724E1E1979F9C015800283766404E8023367FFE8C1C
          13808C14AA5365A2FF1D70F2ECEB70276A4A6FC880D105F90890105AC35623AB
          7C779955078665031F596BE4A600E0850140F4C670D641E637E8EFD85183316B
          A46C21D7C1008C01600B91E9300B2F67A98FB4A54152388F9365032F7E008094
          9E17067AB0B4EC42AD937C0653874362C244D8F0922938B406E01B88EC234DFA
          BBF26316E604B082645983E58814F8E85140A4870F4BD17760948E2D95577FD3
          808D14F44568663700E08CFC890E53965BA30605A8DC774C00D6A449C140CA70
          BF14B53F0523A17193324C87FFA55F35E25E864DBFE7B845090058E55F02A811
          79AEDA53846BC0990E04592DBE184C507BF31F5128826021BEFDFEC1DFBFFEF1
          2F8661014B8E48BFB8FBC13BD9A27764A84C41992A9A6A626CEF818685586D62
          C203005E7AF119BCF5C60B583C916E64F8E8B39FBA16DDD7402138A60A82FFB6
          CB1280A573B5C280E533338B731CD770171E5D172C5723962E20DE0174EF5A74
          97021687C635440F8362B280A45D40AF47A1992B5B148201274109CEE95C2103
          C08C0A949DD0779A103364EBA8EF5B721D72D00977A2388181354E7ADFA07653
          B05D035D236A9460801A262C57013BACB008850E5270674D8FEF61C0A64E48A8
          E465A4B6C9A443E6BE72628D24D5A99C24E80ACA533A1108BB4BAA67402A02CB
          A63A00FB6859C36C6BA263A14A53AEF01B0C303BA70077EE2D420218AFB67EF1
          DD170FCFAC352A6BF6D543FA6DDDA787ECA0A7B75EC5B05C42B200116F4DC14C
          CBFAB2E94EEBF7BFF9EB0E8093D0E9CC5773827EEAABAF2F7FBFFDDCD3586F7C
          C293D816C38093D313AC564F469A985489CAFDAE0A949DC9015C57C7F317D8F6
          97DFFEC12BAF3D8F55F19D561D1E6C010CE11CC629493EA302F57D7A7EA49F62
          5860582CB1D0502FAA26113959AA66520EA5BE0825F5C6E707CC2CED432EC2D9
          7F3CCBFA6FD4EC909D61113B0C1C354A094D83ED5DC12C58B5424DC4B20450F9
          D17100B25E36EBAB8B4FEFFF7086BC86DBB5BFA9FB863D6EAF2F016C01F01800
          CA83EBCF3F7EEF0E80D354CC8E5AFA7D7F16C055EE7510808315330FC28F4AC1
          9C628EB291E331E7AD6ED139BD28090000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000020744558745469746C65004272696E673B546F2046726F6E743B4672
          6F6E743B4F72646572020D74970000056549444154785E9D5741685D55139E73
          EFB9EFB50DB1B8D1452521FDD3A008515BA81625F911C4A58B2EBA70D745C176
          2588AB429AAD8A8850842CABAEBA70D545298AAD2D582A56ACC1452035761523
          841A6D72DF3D33E39939E7BC7B73C9EB933770DF1CDE7DF3E69B6FE6CD779F05
          6F67CE9C016BAD6166C8B2CC54550503CC14450144C4C61870CEF1D2D212CB0D
          891DC5AC24EF76BB994F9AFBE439114912E3BD26F457F2020EE4BE37F61E7D5C
          E5E351418C68D69B546CFF77F4D4B5B10363735207437821AD2AF85EB95347B1
          548C37EFFF74F94D1F5F32338E0C8099336F8531D9DCE953C7348013023D7304
          64404FAC47F8ECF3DBAFF9B82E33F7161717CDC2C2028F0420D29A4B52268647
          3DA7096B205027E69A0242167085CC8CF6C8881B6EED59B19E7E937B935CC80C
          4892A8593D37C1F4CF15A20CA1DDDADACA969797DBD9139A6636DE9381F8E14C
          32905C44409296E259B211ED6A83D889170EC1BDEB0FBB6B6B6B9D95959594A0
          0D84E3858340D8E87362505A312456BF75E33C547FDEDB3D171C723C090CEFCF
          C3AAE1FDC030ABB4B0E44FAF1C5A87C8D74FBCFBDD1B00E01EC7402E74231360
          AC1A9D83F28F9FE1C5B717D3D837BC3802E58339F9FABE9E49FD8F5F7E342F05
          46167820002200171850100E111809802A287FFB06922500A95E68FE62D2FDE8
          3B878E0322E90A49ED19D4828C8815807809720EC3A4631567A0FE62C59CAAD6
          23B73ACC7A64EC0161BDD01EDF02AD1C25B982200640470A80A99E214E73A01E
          02FDBBD8E13E46763D40370440DCED99D2EE181C07169C0071A4553051BFBF5A
          7F7A65DE4D3BB416982B818601202259229C7AAFD523023AB948AB00724D761B
          BBA13107865BBB420A28019D469A8133E09393B71DACB66F2F5DFAFEE5B0E508
          E68E4FC013287D28958166A589FE5DE34771309B001500EE62C0AF6DB870E142
          0DC03927AAF6D7C3DFAF9EF460C689A823CA78E9EEE6FE779EC55B520511867E
          EBB7B7A73D26361040F43F53B7606C6C2C9F9A9ACAE7E7E7797D7D9DCF9E3DDB
          9772EB5FC84BEAB6B5B622A2CDCCDBE6E6A65D5D5DDD8F47B40A1D4293C4A8F1
          6B6005A5E716137138DD0E60C530313171607A7A9ABC615BCA2D00081214FC89
          9A2B57AEE482945E9F01AECAB88A63C236FD5C57DCFE1952155AF0E1A75F3CB8
          FBEB06E4B90D7184371F2C7FA5526E99EBA8B6AAA123AD025001844A4D1ABE60
          1440B5FBAFA6ED4386A3CF3F03AFBEF21C14B6D0F80F2E7EDD97720B83CD90E3
          D802D7571AA648766BFB717AAFA119461920F87BBB07A670606D685953CA1F0B
          40828546264A5BAF214C142045C96E76C0C4F774133A0A3B45D536007361B1E5
          7ED8070230810104AE767408350DE98D7AC852B57B6902B0CE0F2169427412AC
          3B47198802358401D42A14407B09515AC54DEADB2B59971AA947514F0AEF2305
          811A0680B505BD1D307927B4205E06A8DE7E0285C21230F17E02094480A8BA12
          448E2278A2C400D801F40BC46ABBC46FAF5EBAF5FF385435B92DD54BEA933C37
          D4B13BF51264D602B309D26CBC1FD2028E5779FAF2FDB7BCEF24B44D5191FF0E
          070F1E2C0E1F3EFCD47BE73FB97364FA69D8E9B938688A43FBDDE9EC834EB10F
          5038E700968886CE00C747A847DE6FEF2524E3E3E3666666A63B3939B9EF875F
          36E0E8B1235094A881352906323060F24C0798B465FF1540BA06D8ECECACF1C9
          33AF231474A200637DBAD6965497D6789C014492EC996711EC90E7F6410054D5
          4458829A8252AFA1D1D7CF4D2DAD80309056E3882D8C68FE9F109C3B774EA5DC
          B9EDDB1F5FBCA652CE3AF1B564735D54FD3445E51D22FAC7EB1E8D0C40544DD4
          4CA4BCB771E36416A53CCFFC89C8B4FED81A9F8C852AEF2B66DECA8B62B32CCB
          CAC2E8067B49B9ACD7BD0210111A7FED9D4FEE24FE5FE059A1794C3E37230000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002C744558745469746C65004272696E673B546F2046726F6E743B4672
          6F6E743B546578743B4F726465723B4265666F72658F5329E900000681494441
          54785E9D566B6C5C4715FE66EEDD871D3F629C04F270939A38851A9A10B72A0A
          A96C9440244044AE52B9A1E2A142A5480821A1FE2AA8B408414102D422F8016A
          4823A2342A2910A0948AA62E793435D849633BA99DC6565AC7AFB59BEC7AB38F
          7B67CEC1BA3B3BEBBB91C9E2A35DCDEC9D9DFB7DE73BE7CC1981B0092CD9EC7E
          86B5D29CD94E43E65AE0F0171510BB157902A00D09C622E616419FFEDD8957A5
          941D8CE21606C38EC6D87CCCD4AE7180CF0C149F78F9FCEBDFFDD6AECF02F061
          6D710524203ABEF9E56D1628A4E6622EF0E28F9EFAF53FDB0138001400BE2581
          428C188A8C622CC06528CC8696216857CA261157426B82216042738B1010B151
          3E8CC65C2E713035A1110BD638A0C4E67F5AEB8A92DA26211185B275FF8B7D05
          50B28CCA1DB539200C9987F76CB5194764A98ACA0814DCB32AECF94CABF5EE66
          F00030BCCE30DFC25C29AA5001C392B509812172E4E57EC3A63870099C0D3887
          C3F68DAE7BC0860C714040561A0249C4D60300786057ABF5CE7C6E4E3A4B4C00
          8241C4363436072A0F0105ECC9201DFE6B7F29DF19D6339B11160C96E4237BEF
          B58A90E60A15302C35194F0D81AECF7DDC8005C021630E89137ACE86B4260A29
          2084B8D53940602E85E1D0B1735662264008137B0EE78AAD1C8179053E190028
          A5A1B486E3465C4746444BCBED6270F001069EF85F6508D082D27AF00B9B6DB8
          B9ACD394E78004300F05571617083B3FB50907E2CBA255B50D51A27ADDDC7692
          1AD0C6475F3B1DF0F589B1A9216E4320992840222A20FCFE4F7D567ADB136CB8
          4B0B6B56D6A0694D3D32BE0645AB70F5FD1C66D23E8823F8F633AFBCA4953A91
          9A9DFCEDF1234F5FC8F9B57EC71777E957FFFC0F1642942BC0602B2FF0A5DD5B
          51C2E1B2F80B10116AE22E98357A47AE61683A838F6E88A1FDEE15A8AF89063B
          9273DE9D23E3A93B07476ABEF6F9479EFCD15F7EF3F82FE41CE5DB5B3BD4F1F3
          AFD14D071115EB97818347FF63BDB6C0B612181F6E6AC0AAC665E89FCA63C58A
          3A7476DC8E3C31323E2399F203671C29B0FEB6E5D8B46179ECD4D9EA27C5BEA7
          3EDDF3B7035D091ABCDE795F9B0F806D08884C129AE47DA8B3CD405B605BD252
          005551E0F8F9293436D6E1DEBB56239153A042159991A13423EB15F6DF7DD71A
          28A53B723BBA7EF8CAFE1F3C9A8FAC24003AA400735162C6732FF458CFCD796F
          7E139AD77F00D53571BC33CBD8BD632366B2CA560FA1442278A719C7E73C6CFE
          D86ABC3B9EFCFA969D7B0F0DFCFDF99ED6D6565A90845CD8608A7BDF57B6036C
          3D0F48C1804424E1E5DEABB8634335AEFB1A44B040B44001CD00135B32D38AB0
          B1B9514E4EACFBAA8AEA7351ACF5EC3950522068AD16D0B86DDB0F1181A07179
          3C8D8F6C6EC0744AA12EEE0030048C8ADA3864C3418CB9AC86A88E4138D17616
          321A7149BAC5EE59AC805844160085085F26CDA00224856B690F2925E0E53C4C
          CD01753189982BE1380232A81286A7089E62E47C423AAF033251474029B10AAC
          DD5C2E2E8A04F2C9E4F593DFFBF11FB7133150EA688110040A940151E0D58EED
          2DF0F21A37725E413100B9BC0E7547DBBCD89EA681F93E4329ED00AE041010D0
          0032CFFEECE14E005565376594CF239198F387FD75B5F73F7AF05826E3AF71A3
          91220A88C22725D9B22D2C10003FEBC1CBE7A72098E371CD5601A36EDA022E62
          D168955B53BB3C9549CFFD2B399D7AB0EE430DB68195EE0614EA170401982B5F
          6A3A89DC8DE4990869DFF7631CF6B2026B6A6A92B1FAA678F33D9DDB576FFCC4
          4B4D9B9BA57084BDC432593665A16068CD18ED1DA6C9E19ECE994BDDDD8E9F48
          0B664665665BAAD8B2A5C3CD69AEBF63E7BE671A9BD6EDFD60CB5A7B86182C1B
          07BDA0774C5C7C0F89D1D12363679EFB4EDC11B3E7CE757B2EFE7F63DF4F6872
          EB32A36FBEF898A23DEB3D8FB6AD6A590D080725B812215284C94B63987DF7BD
          9EC9B78E7D9FA437E7FB290500124BB0C1C141CE54C34BE7276686BA7FD5353E
          7CF1E7974E5FF41257A690BD9187560CE533B2E93CA647A7307C6AC09F787BE0
          9757DE7C766F56CF4CCCEFCDCDBF8300F092083CFFD62C8FBDF186A65A371B53
          F2FDB1BEC33F4DBC7366F7D8F981C34327CF5EBE70FC2C2E74F761E844EFC858
          7FFF91D9CBA7EF9F1A38FA939892D3F37B32F37BD5C1DE0417BAE1124C13E350
          5F821FDABA92DADADA725934E8E4F0EBA753D1536735449C89230020A4D00E38
          C79ECAAAEAEA5CAD73CD1FECEEA503FF9EE6E205762949586E027802ADAD2F48
          C7592B53D27396F9790100372231AEA328697D55CF5FC9C85CC94280FF05D39E
          831B4C784DCD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C650053656E643B4261636B3B417272616E6765
          3B4F726465724780FAE1000003AB49444154785EC5553D8B2C55103D77DFE213
          FC05BEFF20262626CE46CFCC171B186A28BCD0E08191812298AC81B1981B0882
          1FB0BCD897998B81EE2FD899E9BE758E505451DCE9666767122F4CDF1ABABBEA
          749D73EA5E4AC2FFB92E5B6BA8858673D6FA7BAA1D90B40EE020C945ECED6891
          E38009C00630EB00AAF81FD757BFB68B76E58815E09535E4599A229B0479FDB8
          2A9E10FC1D136FDE7DFEF2298019B18E75E042C0D5DB1F7E1E8555BB17201A04
          49B9D77D8F19BBDFC3AB1FBEDE007804A03FB80332029CB1FFEB77C42A00105A
          318A0A75F01CF0F8C93B302392D28776A0D104D90C905EB012B7FCB20875C0AC
          0630EC7BD8CCD2C80301C03A1D806895387510FCB682963415468546FA04994E
          06D0E80026888C8221BCBCAABEB4566A445EDCDFEC7B58B7130084F5ACD3D183
          1DAAFC5015291D340D3824064C780EEB41C1A91A80ED21B2382D1418E4C71066
          014C9060DF81FD0C0A6C36171069703E3DFBA1DAA3700BE7E53328B0700A4611
          B6D61E00C0E8FC8986A6945BB9410E2A62DF0A602B9AC07997002ED6AD08AD53
          30139AF761C32838B43F8A13301162E8A08AFB6EDB2DF6938BF035FF1500C5CF
          325E11E10E3042E98256E2F3E40424E2A7DBA7B8DD3EA91E09A00AC8A3B73EC0
          17D7FA07186544DACD8B4FDF8F11BDB0A182825E8A66CA2E76C12DF6EFF64D3C
          FF7803008B2E7894140AF9111E7CF9ED6FC3881E35D009CEE182987A55800E49
          2468F4A2A27037956583812A3C4E4AFF4FB361440F14B01B34EF209A27118186
          1299175502104C82B1B83FEC542EA99EE90C71AEBB4031096D318498244A3033
          4F480924C1A5508B8641A00DB471402D299876C0C1206AE5352F483390024D30
          2A786F8B43A9A82810B6D281569390508FC3483564325DA3F30E91A053401839
          7E75C5A8A6D599C23AA41614485D3E097D8140F9BC0E1AD229A0113D3B90C594
          650824050330C08CAB222480F96EB29B9FBF7FB5F13B281E2B060CC234137625
          07E054D444CCF91C1191D5B3A3E430A2DB654D27EC3EF9F1EF67001E874FD70E
          9316A0DFF8EC3DFD693498B16A0488B48FB2114940805D7381623219802D8076
          E4009BCC0CBD0B5D4B07F8C614E1684F5B770134CCE9FB97DCCECE3F41C6C82E
          A30C02CC6B6A893A10A1A431F93DABB596F965B4D440016895414A300523D919
          3B70E6EABD3A802CC428A954B6909814C214551D3F1D40E965BFBBBBF9E6FA97
          4D4DB9DA8BFA2515F3B47D096002C07300285EDC7DF7D547CF00BC1E8E59B865
          19D7BB00EE22D649004E75CC3D20EC5C0A968E396F2983FF00EED4B3A4BD26F5
          6D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C650053656E643B4261636B3B417272616E6765
          3B4F726465724780FAE1000003AB49444154785EC5553D8B2C55103D77DFE213
          FC05BEFF20262626CE46CFCC171B186A28BCD0E08191812298AC81B1981B0882
          1FB0BCD897998B81EE2FD899E9BE758E505451DCE9666767122F4CDF1ABABBEA
          749D73EA5E4AC2FFB92E5B6BA8858673D6FA7BAA1D90B40EE020C945ECED6891
          E38009C00630EB00AAF81FD757BFB68B76E58815E09535E4599A229B0479FDB8
          2A9E10FC1D136FDE7DFEF2298019B18E75E042C0D5DB1F7E1E8555BB17201A04
          49B9D77D8F19BBDFC3AB1FBEDE007804A03FB80332029CB1FFEB77C42A00105A
          318A0A75F01CF0F8C93B302392D28776A0D104D90C905EB012B7FCB20875C0AC
          0630EC7BD8CCD2C80301C03A1D806895387510FCB682963415468546FA04994E
          06D0E80026888C8221BCBCAABEB4566A445EDCDFEC7B58B7130084F5ACD3D183
          1DAAFC5015291D340D3824064C780EEB41C1A91A80ED21B2382D1418E4C71066
          014C9060DF81FD0C0A6C36171069703E3DFBA1DAA3700BE7E53328B0700A4611
          B6D61E00C0E8FC8986A6945BB9410E2A62DF0A602B9AC07997002ED6AD08AD53
          30139AF761C32838B43F8A13301162E8A08AFB6EDB2DF6938BF035FF1500C5CF
          325E11E10E3042E98256E2F3E40424E2A7DBA7B8DD3EA91E09A00AC8A3B73EC0
          17D7FA07186544DACD8B4FDF8F11BDB0A182825E8A66CA2E76C12DF6EFF64D3C
          FF7803008B2E7894140AF9111E7CF9ED6FC3881E35D009CEE182987A55800E49
          2468F4A2A27037956583812A3C4E4AFF4FB361440F14B01B34EF209A27118186
          1299175502104C82B1B83FEC542EA99EE90C71AEBB4031096D318498244A3033
          4F480924C1A5508B8641A00DB471402D299876C0C1206AE5352F483390024D30
          2A786F8B43A9A82810B6D281569390508FC3483564325DA3F30E91A053401839
          7E75C5A8A6D599C23AA41614485D3E097D8140F9BC0E1AD229A0113D3B90C594
          650824050330C08CAB222480F96EB29B9FBF7FB5F13B281E2B060CC234137625
          07E054D444CCF91C1191D5B3A3E430A2DB654D27EC3EF9F1EF67001E874FD70E
          9316A0DFF8EC3DFD693498B16A0488B48FB2114940805D7381623219802D8076
          E4009BCC0CBD0B5D4B07F8C614E1684F5B770134CCE9FB97DCCECE3F41C6C82E
          A30C02CC6B6A893A10A1A431F93DABB596F965B4D440016895414A300523D919
          3B70E6EABD3A802CC428A954B6909814C214551D3F1D40E965BFBBBBF9E6FA97
          4D4DB9DA8BFA2515F3B47D096002C07300285EDC7DF7D547CF00BC1E8E59B865
          19D7BB00EE22D649004E75CC3D20EC5C0A968E396F2983FF00EED4B3A4BD26F5
          6D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C650053656E643B4261636B3B417272616E6765
          3B4F726465724780FAE1000004E749444154785EA5574D685C55143EE7BE3B33
          A6431612FCC1D6C44C5004218B8A167F48A558DC485D1429E2AE609464D585EB
          245B117745C8B2E2AA0B57599422F8D38AA1206EB20A1A48A83509D268622733
          EFDD733CE7DE3BEF4DC6994C677A98FBCEE5BD7BCFF9EE77EEBBDF3C0B62B3B3
          B360AD456606630CA6690A3D0C4BA512101123226459C6CBCBCB0C623A7718B3
          9ABC52A918499A48F2848834098AF709A5E55E9E6B721463F14EE6A532DF7910
          439A15D315DBA9D3976E564F5467341243B8106B2FF866E3107263F9B1BBB5F1
          EBF577647E8399DDD00098D9889510CDCCE54B2F87F81141A4360242F03DF65D
          F8F2ABD537655E85999B4B4B4BB8B0B0C0430188B4269A9489E14133F3090B20
          5024E6820272ACE04A32DF970711A19F75DB2B56E8C7444C6F3B6670940F2A92
          1760F27E46A49BD0EEEFEF9BB5B5B5CEEC984F2F8CBB3210071B8D4ADA888002
          D5C5AC8E32A82903070707958D8D8DF2FAFA7A6B6827108ECDF50261A34F8843
          50471CEB8EC5FA993B4AC1E01CC1A7EFD77ECFEEFE0906A701F239F1EA87EA38
          FEFEB52B3F9E0780EC3806121F94091CD1D155B7F723311C993A39FD0A8CBEFE
          0694AD12C871406C40DEFFF2F5E767357E64817B022012888181221907561928
          02C1C84E187BB8F513544610D81E2D17445F3EF9AA674ACCE4E5E9510243C43E
          A87AD220E1175782B147AD9B61AF640E48415167850348764D20571C68C79780
          74F5CE23E682F9D0D70CA8AE084F4461754EF1613101585D189F35C1657D00C4
          B3DD38FF5A3164FCFF37A085810B5A7C72226D082CFD601D0758D600EA074083
          20223B65C007F4C5CF578F3990E8E355C7211320C541C81D670501090097F99B
          D8730F2022891DBAB4BEBA7CEDE7332D0A898AAC5CA85D6401E199EA2E940C15
          2724B17F86DC767879002E6760717111E4D8565F0010495555FBE7EFCD1B1711
          719488CAD292BDBDBD918FCF9DBAFDEC4BA720FD6BDD97C098002E3100E58461
          C4824FE81C0322C4FDD002CD40A90220A856ABC9E4E464B2BBBBCB44C4737373
          B9945BB990486ADD5A9B12D17D23B6B3B36337373747EACFFD0663673E8466DD
          01722C06723C3A6352925F5EB28231BD418D3A3CFEE239A8D5E8C4D4D41489B9
          4E29B700A04894276A51B3B2B2926C6F6FB3997901CA98022694EF6E6C13268E
          7B61E5EEDB70AFFE3474937216FFC127EF6EB54B0193BBB5B5F68D9772DB263C
          DCA96A4A1F6787D2111FB33286A018DF8CD401FC517F0AAE7C74F6A1A5FCB3AB
          DFE6526EA1B72165E15562CA8A378262F07CB3223C8A941F0B4019A054015090
          686C0FAEF71028F38C0C28E54EBB499AA63D016060C001A7875AB3B0620A0F72
          8570E01B0F21E551A0FA30A054B9A607102316418023F50688783029A72050FD
          00B02F41F3103029076A63C3284ACA8242A321A43C3200B607FD3A22AD37DC77
          37AEDD7E2BDFBE1D35254078E2F479A0120D24E5AE4F0938B6C6E5EB1BEF892F
          C7C1474445440CC7C6C64ACFDF5B7B72E6C2853B034A79DF3DC0F12FD40369F5
          6E42323A3A8AB55AAD323E3EFE180D2EE5FD01E4AD874D4F4FE3C4C484111D21
          E7DCA052AED98DB008B6CFFFF69E0054D5F4B8F66AEA0697721B54982D0C69F2
          2504F3F3F35ECAB3ACBEFAC5D59B0F2DE5408D3B44F4AF318686068088AC6AA6
          52DEDCFDE1A289529E18E91161C7872D4A32D6DA8B4F99793F2995EE371A8DD4
          C223583729D7E315BA98EE93B64FFB4C92673AFF3F12E59BF46009544A000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000029744558745469746C650053656E643B4261636B3B417272616E6765
          3B4F726465723B426568696E643B546578744FD190750000062D49444154785E
          9D576B6C5445143E73EFDD070B6D5309353CEAA3A198B02A48314652428D08F1
          11B106520A41090F8312FF187FA95151A3A85183467F684020126808A8A8F888
          401128506D29B40569C506A8F4B114E97377EFBD738E3B7B67E7EE65035D3BD9
          9B39993B73CF77CEF7CD995906DEC660C44DAD2777C0B58994E969865AE87D20
          0B60C3814700E0C2B77CAE03403ADDF0E5A17D9AA695510A371110A85E36923F
          69AA7794F42F824C8D98F1F8C1979F9F3F0F002CB9F88619D00058D9DA65B394
          234F36AF17025D7F68FD67BFCE01001D006C313C2C008723021B4986C754742E
          8F129604E812EC357C86069CA3307545CD70142092CCBCD71BD1B52916668A1A
          96F68E929048CEE39C67256A254244F4A875D3EE7AC7292A44D706AA34C02498
          150B6728C5212AA82C3B004E782A0B0B1F0AABE8329DABE8DDF704F2716CDBC6
          2C3320511297144820553F354A34A98E5CE7249D9397B65515F70249304828C5
          9D1D051A22A908445B343FACA293BF4CD129604C840088A4A8511AC89E024CA2
          47E969FBF78DAEDE0954644A11CA192890AB2BEF531422A72C3320517294914A
          00158FDC253AC56F7A23F224C7334E123447F4648031365C1D402520D16FDBD3
          A0524C283E20B927AF5640DAC2CD334BEE07903B4000D00D9FA16B3E565C7C3B
          6B6E5E4400AFDF681B0260DAD65AFCD8344537794E9A0C0D488A9804C51405FE
          C0287F2877AC1F318F17951CC67C28A15D076A92D32C2498921F5414688498F4
          243A617CF54DBD4ABDE74C50F55EDAE46AE1D965B3640004881C56BDB963AF2F
          183A34D47BE58BFD551B4EC7AC1CABECF1F97CDFB73F93438927030494B6AD96
          2C9801AE1FBA867F275A4F46589A06C8D9110F97164DEDB702535BDB6F5AFEE8
          EA756F7FF7F9AB1F69FD189F132EB3F79F3A8019850853FB9700B6EEFA4345AD
          1C7B768234DC0ED63E552A1870BE83085739C26D85B9102E1E17A86908AD636B
          D63F50FBC3E68A08365F2D9F5D6289658A0244294229DEA5E525E0613A555955
          C46A4C9D1B28D1108A872016E7D03360C3A0ADC3CCBB27806DF3B2D883156FFD
          B2E98D17E3BE71C2134FCB808C4E7E7CCBCE5A15B933E41619620C58CA26579C
          CF2D9FADE6704288DB3C79BA9A9CE052BF09D3EE1C0F172EF5AE9C3EB7725BD3
          8F3B6AC3E130A689505040AAE4AE49A413C88D5280CAAC809EF3400914C1C982
          C5112C0B81E9CE77BB6D84C94563B5CE8E494FDB7EDEE08789A6AA036E061C81
          791C3AC064D47228B3B048613AEB91104CD3060B93550E3801F44739B0500098
          EE9F434CF3FB0CD40C1902A67640C0A7092FCA01298F9E2AA8C609527468322F
          720E12581CA03F6603990C064D1443E0D719D8362B00E2462C16642900F1DEDE
          AB875F79E7EB5214B3D24E34267A40A70A22AA2AA88E6F499BA7428A27E8879E
          A80E76BF0DBA0F245D009645428C3A8021103343DE5C87367EB0A21C0046796F
          CAAA29DB307C7A209493336FE5FB7B0AA6DC328119623A2623E6923543332018
          0A817FD428B089017259E40480A8292EAC5D42D5C12027950179791C18EEFF41
          2030DA183326BF4FD383BF057C398BC714E401A5D70362A03102A6EBA0691A90
          A0421607F1BEAFBB176283BDC77CC82DCB0A9037CA2C5A6161A116C82B0C16CD
          7CA274FCE47BF6164E2BD298CED42596D0454320C7A478382768AB6BC1CE96DA
          F2CBADD5D5BA15196082B36C9BACDF6CFAF43223C629EF8EB96B3E1E5B38A9F2
          E6E289AA86485F4AB53CEDECE8387311226D6D55EDC7B6BC10D4594F4343B569
          C0FF6F6459118E46EE50DBF1DD2FD9B8F056D3C45905C5E301980EAE3B1710DA
          089DADEDD073E1626DE7C93DAFA166F65B569FEDDC5846D09A9B9B692804E640
          BCE3F2D9EA4F2B2EB59CF9B0B5E68C1939DF05D1C138709BC0B608A20371E86E
          EB8296234D56C79F4D9F9C3FBEB132CA2F7724D6C612DF4081714400769CECA1
          F6A34739E618D180AD5D69AFDFFE5EE4AF630BDA4F356D3F7BF8C4B9D3FB4FC0
          E9EA7A387BA8EEEFF6C6C6AA9E73354F7635ED7A3731B73BB16628B1D6DE5A17
          21E7341C41E348B0AD3E424B678CC39292925814F2796FCBC19A3EFF91131C58
          90907C49B1688CEB403132EDA81D0AC572F47FADE6EA3ADCFC7B37A52EB02310
          61E6B0B86A85C33B355D9FA8F569A63EDA8A27270EFA02948B7EE4FC1F9EB892
          A1BC92791CFE076F185C02EDB7EB020000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001F744558745469746C65005072696E743B4469616C6F673B5072696E
          74204469616C6F6746B79BCF000007B749444154785E95970B8C545719C77FE7
          CECCBE59DE5B24B050581EBBBC8B840A0AB4A8A98F40494A2D16AB4D9A186C35
          1A69D3545B23A6AD561B6344B1C684567CB5B5B4349A34D5925A79540576C952
          601F2C2CB240CBCEEECE323B33F7DE73CEE7ECE13A4C26B0A1DFE4CB77E6CCB9
          E7FFFFFEE73BDFE42A11A1D89452DCA83DF1F22D5CCBB66D3CA280D28D24BF5E
          28B1F80DE028E07A40A56BBC47762EBAE3B13F2CBE17E52DF094CCB3A24E626D
          7BE8DBDFE7D7EF064C464ECA8D1050917BD720A24AE35D5B6F9E3C637EED6F27
          8E9BBC7269C35A264F68E0A631F5BC3F7076EE8564D7DCE6CEB7D73DFC3C2DBD
          3DFEDD556AEEA93C093B120107FCFCAB87FFEE296F8D2000B8A0A0F055042B42
          68527465B6B1BC71259F58F41906835364C3763AFAF693F0C63069D278BE38FD
          5BFCFBF83F16BF635F3BB8F97B0DB7E549BC374C6224053CB1ACD9B46E214209
          BE08B808C6189E7BE301562FBA83C686E974F6EF66F072863DAF1FE264DB0510
          689A3789B59F9EC3ECE9ABA928DB3CFEF5DCCE17EB9B6A96E54964465420D406
          23A0B52950B042C1AC08C74EEF25E327993E6D2C5D7D7BF194C71FFF7480B317
          7AB97DD5720EB6B4D07AE23CBDC9341BEFCD503FE156A6D6CD6A5CBDC9BF7FD7
          E39DBFF2B8BEA9303488B59861378236608D60CCF09CA043CDBF4EECE1A34DAB
          E8EEDB47687279CF924C65A8AAA960E99259888578598CE440166D02DA2EED65
          41C3526209751F101FB10803ADB1220E1C24925E21005882D070F6E249E62FAC
          256B32C46C0C94E2C9ADDF24114FB073F70B64B239CACBCAD9BC611D81398E36
          9AA0FC3CC6C802203EF211F81A6BC5658B0008EE2338B3C6D297EA65489F2354
          3E9E728FD135F80E562C6DED97A8A9AAE6F1AF6FA1CFB6D1331060B5A1D776E0
          FBBA62C69251D5F1111A8F0A428D119CE48814172322A08D25A6AA49A62E515E
          6D512A9677C8E92C58E1FE7BEEA4AAA29253837B4907FD686BF2AEC9A53304BE
          F5BB9A2F674B1550C50A047E8835C60129C01221A31011571B13AA67F0C107E7
          983855F044157648A735FB0EBDC9D889E5D4CF516857471A2B9AD4A538D921FD
          1E60E2A54D278A09A03C17860E243A020441B9681114168FC5B33ECB9BCD3FA2
          7652856BE34A1402B41D4D73E4C84544141B6E9A4C4595C238050CFFED14D2FD
          E1AB808E1301FFE0A72F4DADAB9BF26362B115475BF64F2E4F24D081C618A223
          0051804834769145B3D7B2BFE535DA5A8F72736355A1532D5ED0446BEB200DF5
          53A8AEB66482944BA4A7CBA7BB23D7D2FCD7FE1D4018C781FFB969CAD469FF6C
          6CA81B3D6FD6240E1C788BA6952B38D1DA5D504010B0A0002B5210CEF3126CFC
          E47778E6857B485F4ED1B0A802CF535455F5F2CBA7B6921CBAC8BECE57088DA5
          FBB8CF99633A7BA133FB5066400F469D10AFBA76C2B699F5E3467F64C228AA2B
          1304BEEFEE78D789777960CB411055C8B8D8442C222E12985B694FFE870BDDFD
          CCCC9390C949DE6ADBC5503AA0E79CCFE9569F6C7F65AEA723B5E9D4BBE96640
          033802C6CAEDB53515AED8ACC0407F3F037D496E5D731B4041D6524300148245
          4408FDCFD17DF16D3AF61DE650AEAB50D153EB1A59366D05B9090BED4F766DDE
          0784F9ECA540406B532B80B6E2E4556239DD7692783C8E178B134F241C8017F3
          48E4C74A79949AB54218FAD4A8462AC7CE2697CD32944EB1E3D987E979FF325A
          C39EBF1DAB024C713671DC7D37E8BC8771E30A6E615303875B3AF2C065454B05
          5C9583E08688140B14FD2E82A0F0832C4BE6CF64F4E831F40E18AC0D084313AD
          86555FF8D85502C3E07EDE63714DA82D9B37DDC9A1E6A7C966B453C1658C2AD6
          BD18F99A4A7868BE72DF5D6EBF20D46EFF8880DBECD04BFD4E554720D4DAF5F5
          78DC23D086BABA89FC7AFBF7D9BEE377B41E6B23D937001670594B2161C18200
          85EFC2F8716358B2700EDF78F0CBD48CAA25D4C6EDED08685DDAECE4AA028126
          364C20B0045A132FABE4D147B6108B299452A5F91772572545E98AD10ABEAFC9
          E442CA133172A12108345A5B4A1F7104AC1572817645960D42C7186028171603
          217C78B3E2C8B8FDADBD0E0163AD63E9C534B99CC6D7E66AC60EB924EBA23951
          A0228652B20E055172EE08AC8D6641952860090243CC1B56401368CB2F9EDB43
          7BE7B91BC8FCDAE539BB610A0F7D753DC6087E60F07D737D05ACB14EF6D8F011
          44728D1D3B8A15CB97F0D4A3EBF9F9814B5497C788298511410406B386C14C88
          05AC7552337839E0C9CF4FE199ED6F30944DD176E67D465557921C184245FFA0
          A5043C002B16AD8DBB014E2E3FE4EE0D1F77735670EA8446F04321D0422E1486
          7CE3406DD4BCC4396EAC8DE6536B6FC913F2B99CF1F183D0DD00B14269ED7A80
          35DA0C0C57ACD6D69D953696B317FBE94FA51071A0F8A1C537C6C56CE0AE16D6
          527013A96005B491FCF37DEE0689808822930DB1D6A40003D8E22308CF9F3BF5
          B54C36FB33444D44405B8D9FCB326D5ABDDBD881873E2A7A32E75B72812DDC7D
          71C00A1C1858637879D75F8827CA89C513CE3DA592037DDDDF0672C5045444A2
          0C288FC60A4800550F7EF7C5F66D5BD717CA4B2237B6A8FB0052D49B0578E2E9
          DDFCE6D92F2D03D24008E8083813450D48D40931D1645844CA03D2BE9FDDFFD8
          0F5F5949014F906260402CE054A040340C7207813311A08D9C82FC23BCE3952A
          9388DC2B5A531A4BC716080B999600462C0B098DF47AAE8A80D587787396C8AD
          8B91D4D7B3FF01913C05AB912E6EE70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000013744558745469746C6500507265766965773B5072696E749891A1F3
          0000074449444154785EC5976B6C15C715C77FB3BBF7FA6D5EB671A88379C4BC
          C22B4069204D2A431B2729296D22429550A982A84DDB50A86823084930499354
          7CA84A94A6A05448212FA00F94B4411412028582102205EC1063A0768C014378
          F87D5F3B737A3BDA6BF94ABE76D52F1DE9E88C66577B7E9AFFFFCCEE2A11E1FF
          393CD2074AA99E69AFACE863645817C0D8DCCF1091BE01005E79E3F047A298A7
          0404C0080A852048406367022220764100686FED78A17AD503CFA7209EDFF8A1
          200601D6ADBCB74F92B400D8F8C6611968C46209E9EC8E496B5BB75CB9D62E8D
          176EC8B153CDF2D13FCECAEA9777BE0084000750A7EB5B1091BEEAF6BD038200
          E01B0123E0801895764D1B100183C288B2F7EE3F7A9E55CBEEA12B92786665F5
          1FD46FAA173D0FF893C6952219CCD627005A001093CA0002928200C775008324
          B3761C1486583C0140E5DC0AB4316BA36BDE529B5E5E622194527DFAC2E9CF20
          220A0448D547E8998BC1719C6480721506452C1207C0751DBEFED5F1C998F2F4
          D29F6D59D75B8EFF0AC0F49242821DB05982C0A4EEB3104A014688C42C009EA3
          F05C87AACADBB9B772FA9AC77EFCBBE7324064F08031A909160027C04A81F486
          151CA5101449635A18CF55388EC2758585555331DA5F93886F64C7EF5754A71E
          D13F800499543620D689C1AA42A7B6036593177618949FC50F57BF83313D2D0A
          08F7CF9BCCF809E3D600BF04F4802634BD08A4973006B10C223A90C3A0B54180
          AC90CBF716CDA12B122391F0311A12BEC1D71ACF6AD402E0020C0C90727F4A67
          11B4880533C670E94A1B57BFE8A4BD234A7B678C82BC2CF2F3420C1E94C3F061
          05080AA3052DE0FBDA4AA2B5E93955070608B437811E7E50B8A333C2F1931709
          873CA64C28A5B4B810CF73F07D43CB17EDD4D4B5D078E166F2DA70F2F373082B
          07A35D425E321300A41DF999DA50A734148C60E9DB93C58F1C6FE2B651C5CCBA
          63246FEFABE3A167FE4CE54FDFE1DB6BFFC4BBFBCFD8F5B1E5451C3AD6406B6B
          07460CCA7508855C8C0F19DA30B3040818A3D1DAE7F8C966664E2EA34B1B96FE
          6A17BEEBB1EE894A5E79EE61E656CEE2CC4D6DD7E3CA61CE1DA3D977A89EB86D
          4BC175947D4E0AE08317EFE3C086CAFE000C005A0BDA08CD175BC9CFCD666852
          DF17B71E66F5D2BB59B17816B7DE32849C90C35726963072E258A6CD9DC64B6F
          1EA1A46490F545EDE926446B500AE925C1C6E3B3E98ABAFD482006109BB5AF69
          4A028C1F53CCF603E7B86BD618A6550CA73B6E688F6A6E4634712D0830A47808
          E515B7B2F9BD7F32736A39276B1B89271238CA9AB2C7844614AFD5DED59F04BD
          5EECBEE65A6B372545F99C6AB8C643F754F42E9E0C9FAB1D3E399E8323307942
          1927CE5DA57070019F5FB846C2D7D60B467A00F870E77AE51B377317F8416F23
          90309A4824618DD4DA1527AA3C4815EFF6698B6ADA223EB9614538E450949747
          772C81E779744722C4A2098C91340FD840FA3B0905047C2308A0FD04F1B84F61
          6E983DB5D7995C3E085F0B573B7D5AA39A2C5791E54161968BC4E20CCDCFA6AD
          A39B583C4EC873C176126923DF8B660608685141BF6667BB5CB87493E9638A92
          325CA6533C04C8F6147961C7162F48120CC971A9F9B499C9B79570FEFC658A86
          E4927AA18AA41F44DF2DDECB1F077A191940E130A2A4808347CFF1C88299ECFD
          F55E4A6E2922BF300F5729C26187425BDCA1B3A393B3672FB2EC81E96CDDFA57
          A64C2CB3A7A020189D7E10F9BECE6C421DB81A40390E1515A53436B5505FDFCC
          EAC55FA6E6680D2D8D17C9963825B91E3AD6CDA94F9BD8B5F724DF9C338E9ADA
          739CA96FA0ADAD9DAC900291341302988419F820524AE1382ED9595954CDBB9D
          2D6F7FCCE564E15797CF67283E9F1CFD8CB7B6FD9D4307EBD05D11BE5F358DBA
          9A3AB6EFD8C3B225F3B9D0DCCECEF78FE02792A0C30AD25E467EC264F4809200
          40C44A40C80D33A274188BBE339B37DF3DC0BE032758B8600E0FDE390A706DAF
          D79D6964F3A61D347E7E915933C6E38673F8D10FBEC5E62DBB78EFFD8F199194
          0D708348683F33005A0C2282180010A5F0C221469797B26AF983EC3F58C3D66D
          7B38DF70C5520294970D65EAA43246966673E458035F1A5106783CBC7006EEBE
          D5D4FA77026407002A092099BB4007597A4B11221C56B8AE47D5376633EF6BD3
          F1FD045A1B9402F51FA9421EA190A2A0E0101FEC3E4CA1D7CAA6C7AE51BCE225
          F8ED7AD6558D5EB6FE6F0D1B80F8E3DB3F4B00D2178018D10830383F94F60926
          E2D9B936C6BADAD89D22051978C7B064F17C72C3507EB29AEB57C612FA643BF7
          FC641DF1E8B34F551BAE57EF6D780DD080C9D086B2FBC9A7B7DD270208D88401
          51885DB081A47D4103082262BF134694167176D0029CD3BB03C2EDCC7DFCE7D4
          9F58FE0BE075209A5182CD1B1EBD3FE3BFDFC0A182080379CFCD1FB532116B58
          1B8F6906DFE8C4D7A6835E23F3DF71E69F56B63C3A0911AB155B9A67D3EE6753
          E0469951D0C494DC4B3CB1F34C1AC49ABB472E2D2DF09ED242C7BF6E4457BD7A
          F4D29E6007CCFF04F0FA2313832EB15210488F2088CDF0E45FCEA62042405600
          23402C081F907F033E382BF0E60034FD0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000036744558745469746C6500506167652053657475703B53657475703B
          437573746F6D697A3B44657369676E3B53657474696E673B50726F70657274EE
          3B616D0000072049444154785E9D970B8C15E515C77FDFCCBD7BEFBE78082801
          A9B622BBC20252845634C82E0848A8B44D2B4D2169435B14AAC1566301896EA1
          2D4DDB3452D3581B436D6991A8055A4C90D71679A9055B35B62A88115881C5E5
          B1AFFB9899EF3BBD39B9936D6EBBCBEAD9FDF67F367732E79FF3FF9F33738D88
          608CA118A6072C891E3F13C029F61222421C89D29BAE7BFAE06E3C536F0404C0
          090683E80F18D04C7F05C4A00940FBA58E358D0FCC591D9358BD6EB7200E011E
          BD7FE665D918C05FF7FB4372B9C8E743E9CCE4E5525B465A5ADBE5835317E4F0
          9BCDB2E7E03159BE76CB1A20097880F9F7D1B35AA3A4667CFEB7038200103901
          27E081380340FC997520020E8313A3D7EE7DF5380F7C6B2A5DD970D5FD8DCF99
          C71ABFBA1A88468F1A8A9432801E25002B0AE26204887BAD199EEF010E29A0F5
          3C0C8E7C1002503FE57AAC730FE756FCD1FC66ED4225618CE9D1175E690762B2
          220634455190EE5C1C9EE7150E18DF6827F2D90000DFF798716B4DE18C5DB9E8
          7BEB1FFD6F39FA44C029109B0E71A028C58303C081923006952A9B5702243C43
          C2F798553F8699F537AE58B0F489477A239128192B23CE0110BB57D07603DD44
          E270089E3108868231954CC237789EC1F78579B3C6E16CB4220CD6F1EC53CB1A
          E35BF4EA81B88010A30351270202AA78CCC4E849A67CFA57A7B97BF9469CEB1E
          5110EE68A8A3A676D40AE0478005E2BDF3FFA7C075334088C3E1D091D63CBEB9
          1633509E4AF2CDF9B7D099C91104213612C2C811594B428B9D05F0FB3205C6C5
          EE8F751651D4FFC561AD250A23650F82F17C8C405545B270CA9454145A42EB88
          22AB9258EB8825BE3C81A2F6719B6DF7F2C046961D4DAFD2D27A894C264F3A95
          64D0C06AC68FF90C570D19849F4C924C264896F99459878D9C1270C404E0F226
          B4B186AAB12246B9E0443872F80D2EB675F0E39F7C9F30B29C387186A6836F70
          CDB0214C9C504B797905C944427784600AB9C145F48980462C015AD0A2A98D09
          79DCB7F4EB3CFEC4467ED8F8384BEE5E40BFCA2AE67D611ABBF6BC42D34B4768
          B86D125220E1FB3E9E878EA47396BEEF81E2185A2B582704F9882008B4FD0648
          A7CB59F29DBB48A752ECD8BD5F1D7DF2D447DCFCB9F19C683EC77BEF9F220A03
          9C733AA2C6F3105CDF094871DC0A481884ACDFB0956D2F1EA033D349188678C6
          A3BC3CCDC2F9B379FDF577B86AE840757B3693A76EF475FCE3CD77C9E5950022
          E07B1ECE0AB1C47DE880A2EA1D8521C78E9F24930F7861C721DA3B3BC8877982
          D0E2F93E151515A42BD238071D991CD75E339C53CD2D4ADC39D17B088A3101C5
          5E4D18D9E2067442682DED1D9DCC9F3F8B0D1B5E60CBB69768983A116360DBF6
          FDD4374CD6568B53B9284FA70AD767086D8458877845F3BA8F258180802DBA3E
          954C92CB05CC9C3E85A1C3AEE44FCFEFE20F9B5E64D40D23993B771A674E9FD7
          FD6080AEAEAC1ACF5A8B15878680B568F4D184164D8A0F9B112386F2DA6B6F11
          59C784BA5A7EF0E02256AFBE8F3B66DFCA871FB672F2640B224E1FD117DADA75
          4975747490CDE7B41356BDD0F745143F8C1063F0BD049F9F3496CD7F6962D5CA
          7B38D9DC4ACB8576545BE7546751AD21930B183CA09A71636BD8BEE365E6CE99
          8A0C3254A67D9CEDDB182A436B0541438D56537B1DC3875EC193BFDDC415032A
          A82A2FC3C36871630CA9541227A23A9F3DDFCEE449E3195130E3D66D7FA3F5A3
          730559BA5422C0EBA30442FCC4F23C9FF2749AF95F994375659A9FFFE229DE7E
          FB28FD2ACBF8F4D543185895A6A3ED128307566B27C45A5A0A246EA81DC5D59F
          1ACEE6AD4D9C39D3C2E8EB0703247B93C0C42845022260F0487849FAF7EFCF97
          BF389BA3C78EB37BCFCB6CDEB293AE4C8EF2F23210F8ECC43A66CDAAE7CCB98B
          3811C5BAD135B8C8F2CCB33B183972244065914408484F1D50F78A6A1C5FE1E1
          27135457555237A6967B0AEBB7F191EFB276CD32562D5FCCB27B17D07CAA995D
          3BF73264403F5D3A22C2E9960B8CA9AB61C4B523F8FB917F924A570E07AA8ABE
          333DEE0167BB17511CC624F01386B4E7535696C249A516B1D6515D9DE31B0BBF
          C4EF9E7E9E3DCE52DF709B167748012F32BA403A0C2D531ABEF6B357F63EF7ED
          6CA63D0B583D250404704EAC2603AA9225AF6009CDE325259A19C2B0827E5529
          962CBE8B5F3FB991DDBB2C0DD3A7D17CF6BC1AB5F9F405C68D1F43369B9B10E4
          330F1DDCF3CC8340167080941208835C76DFBD2B374DD5C271411C8841881948
          11F4AFE2B89A2B9974D36476EE6C228C22A6CF68E0F4D9560495835B6E9EC8A1
          03876F072A001F08558292EF74B9F58F2DBA134801FE65BE239A923C01542592
          A961273E68F8A93877E38CDB6714489C07046B85C8D95C6F2FA55264658B2D32
          7CBC3040320AF3ADEFBEB577A9437E95E9CADD74E7BCD9FA8AF6E72DDB69BBD8
          B20DC800B62702F1B17CB20880200CB2E17BFFDAB73808B20FEDDF7768BA2051
          B6ABEDAFEFBF73E097407B9180C40F1F4AC318C3278F580ED5BA9FA2065D401B
          104F811482FF00D201421AE5B48ECA0000000049454E44AE426082}
      end>
  end
  object aclMain: TActionList
    Images = iml24
    Left = 560
    Top = 220
    object actSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 0
      OnExecute = actSaveExecute
    end
    object actCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
  end
  object iml24: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    Left = 608
    Top = 224
    Bitmap = {
      494C010102000800200018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001111
      11651C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C80131313690000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000201010833040421660606
      327E0606327E0404226701010936000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006F6F
      6FFD717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000C0606307B1616A5E31B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1616A9E50606327E0000000E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      00000000000001010C3E1616A4E21B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1616A8E501010E430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF1C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C80717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000030318571A1AC9FA1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCAFB0303
      1B5D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000101
      0B3D1A1AC8FA1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      CAFB01010E430000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF00000000000000000000000000000000000000000000000B1515
      A1E01B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1919C3F61919C3F61B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1919C3F61919C3F61B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1616A8E50000000E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF000000000000000000000000000000000000000005052C761B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1919C3F602020F4502020F451919C3F61B1B
      D1FF1B1BD1FF1919C3F602020F4502020F451919C3F61B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0606337E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF00000000000000000000000000000000000000011515A0DF1B1B
      D1FF1B1BD1FF1B1BD1FF1919C3F602020F45000000000000000002020F451919
      C3F61919C3F602020F45000000000000000002020F451919C3F61B1BD1FF1B1B
      D1FF1B1BD1FF1616A9E500000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF000000000000000000000000000000000000062E1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1A1AC5F80202114B0000000000000000000000000202
      0F4502020F450000000000000000000000000202114B1A1AC5F81B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF01010936000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000004041D601B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1A1AC5F80202114B00000000000000000000
      00000000000000000000000000000202114B1A1AC5F81B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF04042268000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000006062D771B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1A1AC5F80202114B000000000000
      000000000000000000000202114B1A1AC5F81B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF0606327E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF0000000000000000000000000000000005052C761B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1919C3F602020F45000000000000
      0000000000000000000002020F451919C3F61B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF0606327E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF00000000070707401C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C800707074000000000000000000000000000000000717171FF7171
      71FF717171FF0000000000000000000000000000000003031C5F1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1919C3F602020F4500000000000000000000
      000000000000000000000000000002020F451919C3F61B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF04042167000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF000000001C1C1C80717171FF717171FF717171FF7171
      71FF717171FF1C1C1C8000000000000000000000000000000000717171FF7171
      71FF717171FF000000000000000000000000000000000000062C1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1919C3F602020F450000000000000000000000000202
      114B0202114B00000000000000000000000002020F451919C3F61B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF01010834000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF000000001C1C1C80717171FF000000001C1C1C807171
      71FF717171FF1C1C1C8000000000000000000000000000000000717171FF7171
      71FF717171FF000000000000000000000000000000000000000114149DDD1B1B
      D1FF1B1BD1FF1B1BD1FF1A1AC5F80202114B00000000000000000202114B1A1A
      C5F81A1AC5F80202114B00000000000000000202114B1A1AC5F81B1BD1FF1B1B
      D1FF1B1BD1FF1616A5E300000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF000000001C1C1C80717171FF000000001C1C1C807171
      71FF717171FF1C1C1C8000000000000000000000000000000000717171FF7171
      71FF717171FF000000000000000000000000000000000000000005052A731B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1A1AC5F80202114B0202114B1A1AC5F81B1B
      D1FF1B1BD1FF1A1AC5F80202114B0202114B1A1AC5F81B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0606307B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF000000001C1C1C80717171FF000000001C1C1C807171
      71FF717171FF1C1C1C8000000000000000000000000000000000717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000091414
      9CDC1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1A1AC5F81A1AC5F81B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1A1AC5F81A1AC5F81B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1616A4E20000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006F6F
      6FFD717171FF717171FF000000001C1C1C80717171FF717171FF717171FF7171
      71FF717171FF1C1C1C8000000000000000000000000000000000717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000101
      0A381A1AC5F81B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1A1A
      C9FA01010C3E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F5F1C1C1C801C1C1C8000000000070707401C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C8007070740000000000000000000000000000000001C1C1C801C1C
      1C80111111630000000000000000000000000000000000000000000000000000
      0000020214501A1AC5F81B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1A1AC8FA0303
      1857000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010A3814149CDC1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1515A1E001010B3D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000905052A7314149DDD1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1414A0DF05052C760000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010000062B03031C5E0505
      2C7605052C7603031C5F0000062D000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 14680672
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D31382C36682D387638683856367A204D
          31342C3132682D32563868325631327A222F3E0D0A3C7061746820636C617373
          3D22426C61636B2220643D224D32342C3676313048385636483543342E342C36
          2C342C362E342C342C3776323263302C302E362C302E342C312C312C31683232
          63302E362C302C312D302E342C312D31563138762D32563763302D302E362D30
          2E342D312D312D314832347A204D32342C3236483820202623393B762D366831
          365632367A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E5265647B6669
          6C6C3A234431314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173
          733D225265642220643D224D31362C3243382E332C322C322C382E332C322C31
          3673362E332C31342C31342C31347331342D362E332C31342D31345332332E37
          2C322C31362C327A204D32332C32306C2D332C336C2D342D346C2D342C346C2D
          332D336C342D346C2D342D346C332D336C342C3420202623393B6C342D346C33
          2C336C2D342C344C32332C32307A222F3E0D0A3C2F7376673E0D0A}
      end>
  end
end
