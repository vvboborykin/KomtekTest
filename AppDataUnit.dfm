object AppData: TAppData
  OldCreateOrder = True
  Height = 218
  Width = 470
  object sesMain: TOraSession
    Options.Direct = True
    Username = 'KOMTEKTEST'
    Server = 'localhost:1521/XE'
    ConnectDialog = dlgConnect
    HomeName = 'XE6'
    Left = 24
    Top = 16
    EncryptedPassword = '8EFFCEFF88FFCDFFBAFFDCFFADFFDBFF'
  end
  object dlgConnect: TConnectDialog
    Caption = #1058#1077#1089#1090#1086#1074#1086#1077' '#1079#1072#1076#1072#1085#1080#1077' '#1050#1054#1052#1058#1045#1050'. '#1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1041#1044
    ConnectButton = #1057#1086#1077#1076#1080#1085#1080#1090#1100
    CancelButton = #1054#1090#1084#1077#1085#1072
    Server.Caption = #1057#1077#1088#1074#1077#1088
    Server.Visible = True
    Server.Order = 1
    UserName.Caption = #1048#1084#1103
    UserName.Visible = True
    UserName.Order = 2
    Password.Caption = #1055#1072#1088#1086#1083#1100
    Password.Visible = True
    Password.Order = 3
    Home.Caption = 'Home Name'
    Home.Visible = False
    Home.Order = 0
    Direct.Caption = 'Direct'
    Direct.Visible = False
    Direct.Order = 6
    Schema.Caption = 'Schema'
    Schema.Visible = False
    Schema.Order = 4
    Role.Caption = 'Connect Mode'
    Role.Visible = False
    Role.Order = 5
    LabelSet = lsCustom
    Left = 80
    Top = 16
  end
end
