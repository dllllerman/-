object Form12: TForm12
  Left = 322
  Top = 226
  Width = 315
  Height = 191
  Caption = #1042#1093#1086#1076' '#1091#1095#1072#1097#1080#1093#1089#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 32
    Width = 73
    Height = 25
    Caption = #1060#1072#1084#1080#1083#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 80
    Width = 59
    Height = 21
    Caption = #1055#1072#1088#1086#1083#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 120
    Top = 32
    Width = 137
    Height = 25
    TabOrder = 0
    OnChange = edt1Change
  end
  object edt2: TEdit
    Left = 120
    Top = 80
    Width = 137
    Height = 21
    TabOrder = 1
    OnChange = edt2Change
  end
  object btn1: TButton
    Left = 32
    Top = 112
    Width = 225
    Height = 25
    Caption = 'OK'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
end
