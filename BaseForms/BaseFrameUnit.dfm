object BaseFrame: TBaseFrame
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object lacMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = DevExpressOptions.dxLayoutSkinLookAndFeel1
    object lgrRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
end
