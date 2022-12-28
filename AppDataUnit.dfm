object AppData: TAppData
  Height = 218
  Width = 470
  object conMain: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.Direct=True'
      'Oracle.ConnectMode=cmSysDBA')
    Username = 'SYS'
    Server = '192.168.200.231:1521/XE'
    ConnectDialog = dlgOra
    Left = 40
    Top = 8
    EncryptedPassword = '8EFFCEFF88FFCDFFBAFFDCFFADFFDBFF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 184
    Top = 8
  end
  object dlgOra: TUniConnectDialog
    DatabaseLabel = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
    PortLabel = #1055#1086#1088#1090
    ProviderLabel = #1055#1088#1086#1074#1072#1081#1076#1077#1088
    Caption = #1058#1077#1089#1090#1086#1074#1086#1077' '#1079#1072#1076#1072#1085#1080#1077' '#1050#1054#1052#1058#1045#1050'. '#1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1041#1044
    UsernameLabel = #1048#1084#1103
    PasswordLabel = #1055#1072#1088#1086#1083#1100
    ServerLabel = #1057#1077#1088#1074#1077#1088
    ConnectButton = #1057#1086#1077#1076#1080#1085#1080#1090#1100
    CancelButton = #1054#1090#1084#1077#1085#1072
    LabelSet = lsCustom
    Left = 128
    Top = 80
  end
end
