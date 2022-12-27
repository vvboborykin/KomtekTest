object DevExpressOptions: TDevExpressOptions
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object locRus: TcxLocalizer
    Left = 24
    Top = 16
  end
  object llfMain: TdxLayoutLookAndFeelList
    Left = 104
    Top = 16
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2019Colorful'
      PixelsPerInch = 96
    end
  end
end
