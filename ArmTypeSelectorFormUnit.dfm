inherited ArmTypeSelectorForm: TArmTypeSelectorForm
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1040#1056#1052' '#1076#1083#1103' '#1089#1086#1079#1076#1072#1085#1080#1103
  ClientHeight = 270
  ClientWidth = 520
  ExplicitWidth = 536
  ExplicitHeight = 309
  TextHeight = 21
  inherited lacMain: TdxLayoutControl
    Width = 520
    Height = 270
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 615
    ExplicitHeight = 419
    object btnArmOper: TcxButton [0]
      Left = 17
      Top = 17
      Width = 486
      Height = 56
      Action = actArmOper
      TabOrder = 0
    end
    object btnArmStatist: TcxButton [1]
      Left = 17
      Top = 83
      Width = 486
      Height = 62
      Action = actArmStatist
      TabOrder = 1
    end
    object btnExit: TcxButton [2]
      Left = 17
      Top = 183
      Width = 486
      Height = 70
      Action = actExit
      TabOrder = 2
    end
    inherited lgrRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ItemIndex = 2
    end
    object lit: TdxLayoutItem
      Parent = lgrRoot
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnArmOper
      ControlOptions.OriginalHeight = 56
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgrRoot
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnArmStatist
      ControlOptions.OriginalHeight = 62
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgrRoot
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnExit
      ControlOptions.OriginalHeight = 70
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lgrRoot
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
  end
  object aclMain: TActionList
    Images = iml32
    Left = 432
    Top = 40
    object actArmOper: TAction
      Caption = #1040#1056#1052' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
      ImageIndex = 0
      OnExecute = actArmOperExecute
    end
    object actArmStatist: TAction
      Caption = #1040#1056#1052' '#1089#1090#1072#1090#1080#1089#1090#1072
      ImageIndex = 1
      OnExecute = actArmStatistExecute
    end
    object actExit: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      OnExecute = actExitExecute
    end
  end
  object iml32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 6816184
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000484848CC717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF505050D6000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FFD77610FFD77610FF0000000000000000717171FF717171FF000000000000
          00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FFCC6F0FF9D776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FFD77610FFD77610FF0000000000000000717171FF717171FF000000000000
          00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FFBA670DEED776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FFD77610FFD77610FF0000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF894A0ACCD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FFD77610FFD77610FF0000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF3A200485D776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FFD77610FFD77610FF0000000000000000717171FF717171FF000000000000
          0000229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FF01010018B765
          0EECD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FFD77610FFD77610FF0000000000000000717171FF717171FF000000000000
          0000229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FF000000000804
          0033A0570BDCD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF4324048F010000120000000000000000717171FF717171FF000000000000
          0000229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FF000000000000
          0000000000071C0F025C743F09BCD27410FCD77610FFD77610FFD77610FF4224
          048E00000000000000000000000000000000717171FF717171FF000000000000
          0000229C02FF229C02FF229C02FF229C02FF00000000000000001C1C1C7F1C1C
          1C7F1C1C1C7F1C1C1C7F0000000000000000717171FF717171FF000000000000
          00000000000000000000000000000301001E4A290596D47510FE95520BD50000
          000600000000000000000000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          000000000000000000000000000000000000000000001E100260110901480000
          000000000000000000000000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000717171FF717171FF000000000000
          0000000000000000000000000000000000000000000000000000000000000201
          001E603507ABC76E0EF60000000000000000717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
          00000000000000000000000000000000000000000000000000000201001CAB5D
          0CE3D77610FFD77610FF0000000000000000717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
          00000000000000000000000000000000000000000000000000006C3B08B5D776
          10FFD77610FFD77610FF0000000000000000717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
          0000000000000000000000000000000000000000000009050035D77610FFD776
          10FFD77610FFD77610FF0000000000000000404040C1717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF484848CC000000000000
          0000000000000000000000000000000000000000000044250590D77610FFD776
          10FFD77610FFD77610FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000120A014BCA700FF8D77610FFD776
          10FFD77610FFD77610FF11090149000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003D220489D77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF4E2A
          059A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B1600DE8D77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFB363
          0DE9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000603507ABD77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF5D34
          07A9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A4208C0D77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF7F44
          08C4000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000AC5E0DE5D77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC76E
          0EF6000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000BD680EF0D77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC86E
          0EF6000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000095510BD4D77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD47610FE3D22
          0489000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E22048AD77610FFD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD77610FFD57610FE090500360000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010000129F570BDBD77610FFD776
          10FFD77610FFD77610FFD77610FFD77610FFD57610FE381F0483000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010000134124048D9B54
          0AD9C46B0EF4C16B0EF39D570BDB563006A20C07003E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF00000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
          D1FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
          FFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
          10FF000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
