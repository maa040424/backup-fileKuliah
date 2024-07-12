object Form2: TForm2
  Left = 452
  Top = 285
  Width = 703
  Height = 365
  Caption = 'GRADUATE'
  Color = clActiveCaption
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
    Left = -24
    Top = 0
    Width = 353
    Height = 329
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 152
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
      Left = 104
      Top = 48
      Width = 155
      Height = 22
      Caption = 'NAMA LENGKAP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 160
      Top = 104
      Width = 44
      Height = 22
      Caption = 'NPM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 40
      Top = 176
      Width = 74
      Height = 15
      Caption = 'KEHADIRAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 72
      Top = 208
      Width = 42
      Height = 15
      Caption = 'TUGAS'
    end
    object lbl7: TLabel
      Left = 88
      Top = 240
      Width = 24
      Height = 15
      Caption = 'UTS'
    end
    object lbl8: TLabel
      Left = 88
      Top = 272
      Width = 25
      Height = 15
      Caption = 'UAS'
    end
    object edt1: TEdit
      Left = 104
      Top = 72
      Width = 153
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 104
      Top = 128
      Width = 153
      Height = 23
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 128
      Top = 176
      Width = 49
      Height = 23
      TabOrder = 2
    end
    object edt4: TEdit
      Left = 128
      Top = 208
      Width = 49
      Height = 23
      TabOrder = 3
    end
    object edt5: TEdit
      Left = 128
      Top = 240
      Width = 49
      Height = 23
      TabOrder = 4
    end
    object edt6: TEdit
      Left = 128
      Top = 272
      Width = 49
      Height = 23
      TabOrder = 5
    end
    object btn1: TButton
      Left = 209
      Top = 176
      Width = 96
      Height = 41
      Caption = 'HASIL'
      TabOrder = 6
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 208
      Top = 240
      Width = 97
      Height = 41
      Caption = 'CLEAR'
      TabOrder = 7
      OnClick = btn2Click
    end
  end
  object pnl2: TPanel
    Left = 352
    Top = -2
    Width = 353
    Height = 329
    Color = clGray
    TabOrder = 1
    object lbl2: TLabel
      Left = 144
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
    object lbl9: TLabel
      Left = 16
      Top = 48
      Width = 155
      Height = 22
      Caption = 'NAMA LENGKAP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 16
      Top = 112
      Width = 44
      Height = 22
      Caption = 'NPM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblname: TLabel
      Left = 16
      Top = 80
      Width = 5
      Height = 22
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblnpm: TLabel
      Left = 16
      Top = 136
      Width = 5
      Height = 22
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object pnl3: TPanel
      Left = 32
      Top = 176
      Width = 265
      Height = 121
      Color = clMedGray
      TabOrder = 0
      object lbl11: TLabel
        Left = 40
        Top = 8
        Width = 179
        Height = 36
        Caption = 'GRADUATE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblhasil: TLabel
        Left = 120
        Top = 48
        Width = 5
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblket: TLabel
        Left = 112
        Top = 80
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
end
