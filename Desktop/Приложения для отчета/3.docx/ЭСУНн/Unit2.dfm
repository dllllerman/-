object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 829
  Top = 176
  Height = 386
  Width = 355
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='#1073#1072#1079#1072'.' +
      'mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:S' +
      'ystem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database ' +
      'Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking M' +
      'ode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk ' +
      'Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Crea' +
      'te System Database=False;Jet OLEDB:Encrypt Database=False;Jet OL' +
      'EDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without' +
      ' Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
  end
  object tbl_stud: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    OnFilterRecord = tbl_studFilterRecord
    TableName = #1057#1090#1091#1076#1077#1085#1090#1099
    Left = 64
    object atncfld_studID_1: TAutoIncField
      FieldName = 'ID_'#1089#1090#1091#1076#1077#1085#1090
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_studDSDesigner: TWideStringField
      DisplayWidth = 20
      FieldName = #1060#1072#1084#1080#1083#1080#1103
      Size = 255
    end
    object wdstrngfld_studDSDesigner2: TWideStringField
      DisplayWidth = 20
      FieldName = #1048#1084#1103
      Size = 255
    end
    object wdstrngfld_studDSDesigner3: TWideStringField
      DisplayWidth = 20
      FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
      Size = 255
    end
    object wdstrngfld_studDSDesigner4: TWideStringField
      DisplayWidth = 15
      FieldName = #1043#1088#1091#1087#1087#1072
      Size = 255
    end
    object intgrfld_studDSDesigner5: TIntegerField
      DisplayWidth = 15
      FieldName = #1050#1091#1088#1089
    end
    object wdstrngfld_studDSDesigner6: TWideStringField
      DisplayWidth = 15
      FieldName = #1082#1083#1102#1095
      Size = 255
    end
    object blnfld_studDSDesigner7: TBooleanField
      FieldName = #1087#1088#1072#1074#1072
      Visible = False
    end
  end
  object tbl_rezul: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'ID_'#1088#1077#1079#1091#1083#1100#1090
    Left = 64
    Top = 48
    object atncfld_rezulID_1: TAutoIncField
      FieldName = 'ID_'#1088#1077#1079
      ReadOnly = True
    end
    object intgrfld_rezulid_2: TIntegerField
      FieldName = 'id_'#1089#1090#1091#1076#1077#1085#1090#1072
    end
    object intgrfld_rezulDSDesigner: TIntegerField
      FieldName = #1054#1094#1077#1085#1082#1072
    end
    object intgrfld_rezul_1: TIntegerField
      FieldName = #1042#1077#1088#1085#1099#1093'_'#1086#1090#1074#1077#1090#1086#1074
    end
    object dtmflds_rezulDSDesigner2: TDateTimeField
      FieldName = #1044#1072#1090#1072
    end
    object intgrfld_rezulid_3: TIntegerField
      FieldName = 'id_'#1090#1077#1084#1099
    end
  end
  object tbl_tema: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1058#1077#1084#1099
    Left = 64
    Top = 96
    object atncfld_temaID_1: TAutoIncField
      FieldName = 'ID_'#1090#1077#1084#1099
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_temaDSDesigner: TWideStringField
      FieldName = #1058#1077#1084#1072
      Size = 255
    end
  end
  object tbl_otv_mass: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    IndexFieldNames = 'id_'#1074#1086#1087#1088#1086#1089#1072
    MasterFields = 'ID_'#1084#1072#1089#1089#1080#1074#1099
    MasterSource = ds_test_mas
    TableName = #1054#1090#1074#1077#1090#1099
    Left = 64
    Top = 224
    object atncfld_massID_1: TAutoIncField
      FieldName = 'ID_'#1086#1090#1074#1077#1090
      ReadOnly = True
      Visible = False
    end
    object intgrfld_massid_2: TIntegerField
      FieldName = 'id_'#1074#1086#1087#1088#1086#1089#1072
      Visible = False
    end
    object wdstrngfld_massDSDesigner: TWideStringField
      DisplayWidth = 95
      FieldName = #1054#1090#1074#1077#1090
      Size = 255
    end
    object blnfld_massDSDesigner2: TBooleanField
      FieldName = #1089#1090#1072#1090#1091#1089
    end
  end
  object ds_stud: TDataSource
    DataSet = tbl_stud
    Left = 136
  end
  object ds_rezul: TDataSource
    DataSet = tbl_rezul
    Left = 136
    Top = 48
  end
  object ds_tema: TDataSource
    DataSet = tbl_tema
    Left = 136
    Top = 96
  end
  object ds_totv_mas: TDataSource
    DataSet = tbl_otv_mass
    Left = 136
    Top = 224
  end
  object tbl_test_mas: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    IndexFieldNames = 'id_'#1090#1077#1084#1072
    MasterFields = 'ID_'#1090#1077#1084#1099
    MasterSource = ds_tema
    TableName = #1042#1086#1087#1088#1086#1089#1099
    Left = 64
    Top = 160
    object atncfld_test_masID_1: TAutoIncField
      FieldName = 'ID_'#1084#1072#1089#1089#1080#1074#1099
      ReadOnly = True
      Visible = False
    end
    object wdstrngfld_test_masDSDesigner: TWideStringField
      DisplayWidth = 80
      FieldName = #1074#1086#1087#1088#1086#1089
      Size = 70
    end
    object strngfld_test_mastema: TStringField
      FieldKind = fkLookup
      FieldName = 'tema'
      LookupDataSet = tbl_tema
      LookupKeyFields = 'ID_'#1090#1077#1084#1099
      LookupResultField = #1058#1077#1084#1072
      KeyFields = 'id_'#1090#1077#1084#1072
      Lookup = True
    end
    object intgrfld_test_masid_2: TIntegerField
      FieldName = 'id_'#1090#1077#1084#1072
      Visible = False
    end
  end
  object ds_test_mas: TDataSource
    DataSet = tbl_test_mas
    Left = 136
    Top = 160
  end
  object ds1: TDataSource
    Left = 272
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 208
  end
  object tbl_user: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'users'
    Left = 64
    Top = 280
    object atncfld_userID_1: TAutoIncField
      FieldName = 'ID_'#1072#1076#1084#1080#1085
      ReadOnly = True
    end
    object wdstrngfld_userDSDesigner: TWideStringField
      FieldName = #1051#1086#1075#1080#1085
      Size = 255
    end
    object wdstrngfld_userDSDesigner2: TWideStringField
      FieldName = #1055#1072#1088#1086#1083#1100
      Size = 255
    end
  end
  object ds_user: TDataSource
    DataSet = tbl_user
    Left = 136
    Top = 280
  end
  object qry_admin: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 208
    Top = 48
  end
  object ds_admin: TDataSource
    Left = 272
    Top = 48
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '#1060#1072#1084#1080#1083#1080#1103','#1048#1084#1103','#1054#1090#1095#1077#1089#1090#1074#1086','#1075#1088#1091#1087#1087#1072','#1086#1094#1077#1085#1082#1072',['#1042#1077#1088#1085#1099#1093'_'#1086#1090#1074#1077#1090#1086#1074'],'#1058#1077#1084#1072
      'From ID_'#1088#1077#1079#1091#1083#1100#1090','#1057#1090#1091#1076#1077#1085#1090#1099','#1058#1077#1084#1099
      
        'Where ID_'#1088#1077#1079#1091#1083#1100#1090'.id_'#1089#1090#1091#1076#1077#1085#1090#1072'='#1057#1090#1091#1076#1077#1085#1090#1099'.ID_'#1089#1090#1091#1076#1077#1085#1090' and ID_'#1088#1077#1079#1091#1083#1100#1090'.' +
        'id_'#1090#1077#1084#1099'='#1058#1077#1084#1099'.ID_'#1058#1077#1084#1099)
    Left = 208
    Top = 96
    object wdstrngfldqry2DSDesigner: TWideStringField
      DisplayWidth = 20
      FieldName = #1060#1072#1084#1080#1083#1080#1103
      Size = 255
    end
    object wdstrngfldqry2DSDesigner2: TWideStringField
      DisplayWidth = 20
      FieldName = #1048#1084#1103
      Size = 255
    end
    object wdstrngfldqry2DSDesigner3: TWideStringField
      DisplayWidth = 20
      FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
      Size = 255
    end
    object wdstrngfldqry2DSDesigner4: TWideStringField
      DisplayWidth = 10
      FieldName = #1075#1088#1091#1087#1087#1072
      Size = 255
    end
    object intgrfldqry2DSDesigner5: TIntegerField
      FieldName = #1086#1094#1077#1085#1082#1072
    end
    object intgrfldqry2_1: TIntegerField
      FieldName = #1042#1077#1088#1085#1099#1093'_'#1086#1090#1074#1077#1090#1086#1074
    end
    object wdstrngfldqry2DSDesigner1: TWideStringField
      FieldName = #1058#1077#1084#1072
      Size = 255
    end
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 272
    Top = 96
  end
end
