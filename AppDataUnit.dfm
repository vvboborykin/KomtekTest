object AppData: TAppData
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 218
  Width = 470
  object sesMain: TOraSession
    Options.AllowImplicitConnect = False
    Options.Direct = True
    Options.KeepDesignConnected = False
    Username = 'C##KOMTEKTEST'
    Server = '192.168.0.10:1521:XE'
    Connected = True
    ConnectDialog = dlgConnect
    AfterConnect = sesMainAfterConnect
    BeforeConnect = sesMainBeforeConnect
    OnError = sesMainError
    OnConnectionLost = sesMainConnectionLost
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
    Home.Visible = True
    Home.Order = 0
    Direct.Caption = 'Direct'
    Direct.Visible = True
    Direct.Order = 6
    Schema.Caption = 'Schema'
    Schema.Visible = True
    Schema.Order = 4
    Role.Caption = 'Connect Mode'
    Role.Visible = True
    Role.Order = 5
    LabelSet = lsCustom
    Left = 80
    Top = 16
  end
  object qryCurrentDateTime: TOraQuery
    Session = sesMain
    SQL.Strings = (
      'SELECT CURRENT_TIMESTAMP FROM DUAL d')
    Left = 160
    Top = 16
  end
end
