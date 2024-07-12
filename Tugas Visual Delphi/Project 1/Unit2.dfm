object Form2: TForm2
  Left = 268
  Top = 177
  Width = 1044
  Height = 540
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 224
    Top = 24
    Width = 529
    Height = 29
    Caption = 'PENGKONVERSI SUHU CELCIUS KE FAHRENHEIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 320
    Top = 80
    Width = 92
    Height = 19
    Caption = 'Input Celsius'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 312
    Top = 160
    Width = 99
    Height = 19
    Caption = 'Hasil Konversi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object eCelcius: TEdit
    Left = 424
    Top = 72
    Width = 193
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object eFahrenheit: TEdit
    Left = 424
    Top = 160
    Width = 193
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnKonversi: TButton
    Left = 424
    Top = 112
    Width = 89
    Height = 33
    Caption = 'KONVERSI'
    TabOrder = 2
    OnClick = btnKonversiClick
  end
  object btnUlang: TButton
    Left = 528
    Top = 112
    Width = 89
    Height = 33
    Caption = 'ULANG'
    TabOrder = 3
    OnClick = btnUlangClick
  end
end
