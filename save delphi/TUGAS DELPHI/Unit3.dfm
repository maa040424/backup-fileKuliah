object Form3: TForm3
  Left = 413
  Top = 240
  Width = 343
  Height = 280
  Caption = 'KATEGORI USIA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 0
    Width = 145
    Height = 241
    TabOrder = 0
    object lbl1: TLabel
      Left = 56
      Top = 8
      Width = 37
      Height = 15
      Caption = 'INPUT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 0
      Top = 56
      Width = 136
      Height = 19
      Caption = 'Masukan Usia Anda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt1: TEdit
      Left = 32
      Top = 96
      Width = 65
      Height = 21
      TabOrder = 0
      OnKeyPress = edt1KeyPress
    end
    object btn1: TButton
      Left = 32
      Top = 136
      Width = 65
      Height = 33
      Caption = 'HASIL'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 32
      Top = 184
      Width = 65
      Height = 33
      Caption = 'CLEAR'
      TabOrder = 2
      OnClick = btn2Click
    end
  end
  object pnl2: TPanel
    Left = 168
    Top = 0
    Width = 153
    Height = 241
    TabOrder = 1
    object lbl2: TLabel
      Left = 56
      Top = 8
      Width = 50
      Height = 15
      Caption = 'OUTPUT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblhasil: TLabel
      Left = 8
      Top = 64
      Width = 3
      Height = 15
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblhasil2: TLabel
      Left = 8
      Top = 96
      Width = 4
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
