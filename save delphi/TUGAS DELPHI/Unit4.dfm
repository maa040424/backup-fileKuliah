object Form4: TForm4
  Left = 326
  Top = 75
  Width = 403
  Height = 496
  Caption = 'PENGUKUR JARAK '
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
    Left = 0
    Top = 0
    Width = 513
    Height = 489
    Color = clMedGray
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 168
      Width = 42
      Height = 26
      Caption = 'KM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 24
      Top = 200
      Width = 42
      Height = 26
      Caption = 'HM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 240
      Width = 57
      Height = 26
      Caption = 'DAM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 48
      Top = 280
      Width = 23
      Height = 26
      Caption = 'M'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 24
      Top = 320
      Width = 40
      Height = 26
      Caption = 'DM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 24
      Top = 360
      Width = 40
      Height = 26
      Caption = 'CM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 24
      Top = 400
      Width = 46
      Height = 26
      Caption = 'MM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbb1: TComboBox
      Left = 64
      Top = 56
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'KM'
        'HM'
        'DAM'
        'M'
        'DM'
        'CM'
        'MM')
    end
    object edt1: TEdit
      Left = 64
      Top = 96
      Width = 193
      Height = 21
      TabOrder = 1
    end
    object btn1: TButton
      Left = 72
      Top = 128
      Width = 73
      Height = 25
      Caption = 'HASIL'
      TabOrder = 2
      OnClick = btn1Click
    end
    object edt2: TEdit
      Left = 72
      Top = 168
      Width = 57
      Height = 21
      TabOrder = 3
    end
    object edt3: TEdit
      Left = 72
      Top = 200
      Width = 57
      Height = 21
      TabOrder = 4
    end
    object edt4: TEdit
      Left = 72
      Top = 240
      Width = 57
      Height = 21
      TabOrder = 5
    end
    object edt5: TEdit
      Left = 72
      Top = 280
      Width = 57
      Height = 21
      TabOrder = 6
    end
    object edt6: TEdit
      Left = 72
      Top = 320
      Width = 57
      Height = 21
      TabOrder = 7
    end
    object edt7: TEdit
      Left = 72
      Top = 360
      Width = 57
      Height = 21
      TabOrder = 8
    end
    object edt8: TEdit
      Left = 72
      Top = 400
      Width = 57
      Height = 21
      TabOrder = 9
    end
    object btn2: TButton
      Left = 160
      Top = 128
      Width = 81
      Height = 25
      Caption = 'CLEAR'
      TabOrder = 10
    end
  end
end
