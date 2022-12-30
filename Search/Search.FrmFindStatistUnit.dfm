inherited FrmFindStatist: TFrmFindStatist
  Caption = 'FrmFindStatist'
  ClientHeight = 99
  ExplicitHeight = 99
  PixelsPerInch = 96
  TextHeight = 21
  inherited lacMain: TdxLayoutControl
    Height = 99
    ExplicitHeight = 99
    inherited edFind: TcxTextEdit
      ExplicitWidth = 291
      Width = 291
    end
    inherited btnFind: TcxButton
      Left = 461
      ExplicitLeft = 461
    end
    inherited btnClear: TcxButton
      Left = 568
      ExplicitLeft = 568
    end
    inherited chkPartial: TcxCheckBox
      Left = 627
      ExplicitLeft = 627
    end
    object edMinBirthDate: TcxDateEdit [4]
      Left = 160
      Top = 54
      Properties.ImmediatePost = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      OnKeyUp = edFindKeyUp
      Width = 113
    end
    object edMaxBirthDate: TcxDateEdit [5]
      Left = 309
      Top = 54
      AutoSize = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      OnKeyUp = edFindKeyUp
      Height = 27
      Width = 108
    end
    object edMinCreateDate: TcxDateEdit [6]
      Left = 550
      Top = 54
      AutoSize = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      OnKeyUp = edFindKeyUp
      Height = 27
      Width = 115
    end
    object edMaxCreateDate: TcxDateEdit [7]
      Left = 701
      Top = 54
      AutoSize = False
      Properties.ImmediatePost = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      OnKeyUp = edFindKeyUp
      Height = 27
      Width = 116
    end
    inherited lgrRoot: TdxLayoutGroup
      ItemIndex = 1
      LayoutDirection = ldVertical
    end
    inherited litFind: TdxLayoutItem
      Parent = lgrFio
      ControlOptions.OriginalWidth = 291
    end
    inherited litFindButton: TdxLayoutItem
      Parent = lgrFio
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = lgrFio
    end
    inherited litPartial: TdxLayoutItem
      Parent = lgrFio
    end
    object litMinBirthDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1089
      Control = edMinBirthDate
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgrFio: TdxLayoutGroup
      Parent = lgrRoot
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object litMaxDirthDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = #1087#1086
      Control = edMaxBirthDate
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 108
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litMinCreateDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = #1044#1072#1090#1072' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1089
      Control = edMinCreateDate
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litMaxCreateDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = #1087#1086
      Control = edMaxCreateDate
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lgrRoot
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  inherited aclFind: TActionList
    Left = 112
    Top = 0
  end
  inherited iml24: TcxImageList
    FormatVersion = 1
    Left = 160
    Top = 65528
    DesignInfo = -524128
  end
end
