object Form1: TForm1
  Left = 514
  Top = 143
  Width = 403
  Height = 539
  Caption = 'MAIN MENU'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 136
    Top = 80
    Width = 108
    Height = 21
    Caption = 'MAIN MENU'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'YouYuan'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 112
    Top = 136
    Width = 161
    Height = 57
    Caption = 'BIODATA'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 200
    Width = 161
    Height = 57
    Caption = 'KONVERSI SUHU'
    TabOrder = 1
  end
  object btn3: TButton
    Left = 112
    Top = 264
    Width = 161
    Height = 65
    Caption = 'KALKULATOR BANGUN RUANG'
    TabOrder = 2
  end
end
