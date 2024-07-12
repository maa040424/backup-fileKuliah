object Form2: TForm2
  Left = 898
  Top = 157
  Width = 329
  Height = 315
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Menu Utama'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 88
    Top = 16
    Width = 138
    Height = 32
    Caption = 'Pilih Menu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 32
    Top = 64
    Width = 241
    Height = 81
    Caption = 'Pengisi Data Mahasiswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 32
    Top = 168
    Width = 241
    Height = 81
    Caption = 'Pengisi Data Dosen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn2Click
  end
end
