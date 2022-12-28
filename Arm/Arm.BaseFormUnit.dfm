inherited BaseArmForm: TBaseArmForm
  Caption = #1041#1072#1079#1086#1074#1072#1103' '#1092#1086#1088#1084#1072' '#1040#1056#1052
  ClientHeight = 460
  ClientWidth = 680
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 696
  ExplicitHeight = 499
  TextHeight = 21
  inherited lacMain: TdxLayoutControl
    Width = 680
    Height = 460
    ExplicitWidth = 680
    ExplicitHeight = 460
    object pnlFind: TPanel [0]
      Left = 17
      Top = 17
      Width = 646
      Height = 80
      BevelOuter = bvNone
      Color = 15790320
      ParentBackground = False
      TabOrder = 0
    end
    object layFind: TdxLayoutItem
      Parent = lgrRoot
      AlignVert = avTop
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlFind
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 80
      ControlOptions.OriginalWidth = 595
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
