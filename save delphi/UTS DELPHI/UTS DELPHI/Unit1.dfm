object Form1: TForm1
  Left = 337
  Top = 141
  Width = 874
  Height = 540
  Caption = 'Form1'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 56
    Width = 409
    Height = 497
    Color = clSkyBlue
    TabOrder = 0
    object lbl2: TLabel
      Left = 24
      Top = 24
      Width = 112
      Height = 15
      Caption = 'DATA PELANGGAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 24
      Top = 64
      Width = 120
      Height = 15
      Caption = 'NAMA PELANGGAN '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 24
      Top = 88
      Width = 153
      Height = 15
      Caption = 'KODE JENIS PELANGGAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 24
      Top = 112
      Width = 115
      Height = 15
      Caption = 'JENIS PELANGGAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 24
      Top = 136
      Width = 130
      Height = 15
      Caption = 'JUMLAH PEMAKAIAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 24
      Top = 224
      Width = 97
      Height = 15
      Caption = 'RIINCIAN BIAYA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 24
      Top = 256
      Width = 82
      Height = 15
      Caption = 'BIAYA BEBAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 24
      Top = 288
      Width = 92
      Height = 15
      Caption = 'HARGA PER M3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 24
      Top = 320
      Width = 89
      Height = 15
      Caption = 'TOTAL HARGA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl11: TLabel
      Left = 24
      Top = 352
      Width = 73
      Height = 15
      Caption = 'PAJAK 10%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 24
      Top = 384
      Width = 100
      Height = 15
      Caption = 'TOTAL TAGIHAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn1: TButton
      Left = 64
      Top = 168
      Width = 105
      Height = 41
      Caption = 'CLEAR'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 184
      Top = 168
      Width = 89
      Height = 41
      Caption = 'CETAK'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 288
      Top = 168
      Width = 97
      Height = 41
      Caption = 'HITUNG'
      TabOrder = 2
      OnClick = btn3Click
    end
    object edt1: TEdit
      Left = 192
      Top = 64
      Width = 201
      Height = 21
      TabOrder = 3
    end
    object cbb1: TComboBox
      Left = 192
      Top = 88
      Width = 201
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnChange = cbb1Change
      Items.Strings = (
        'L01'
        'L02'
        'L03'
        'L04')
    end
    object edt2: TEdit
      Left = 192
      Top = 112
      Width = 201
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 5
    end
    object edt3: TEdit
      Left = 192
      Top = 136
      Width = 201
      Height = 21
      TabOrder = 6
    end
    object edt4: TEdit
      Left = 192
      Top = 248
      Width = 201
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 7
    end
    object edt5: TEdit
      Left = 192
      Top = 280
      Width = 201
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 8
    end
    object edt6: TEdit
      Left = 192
      Top = 312
      Width = 201
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 9
    end
    object edt7: TEdit
      Left = 192
      Top = 344
      Width = 201
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 10
    end
    object edt8: TEdit
      Left = 192
      Top = 376
      Width = 201
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 11
    end
  end
  object pnl2: TPanel
    Left = 432
    Top = 52
    Width = 409
    Height = 497
    Color = clSkyBlue
    TabOrder = 1
    object lbl13: TLabel
      Left = 16
      Top = 24
      Width = 101
      Height = 15
      Caption = 'STRUK TAGIHAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl14: TLabel
      Left = 16
      Top = 72
      Width = 120
      Height = 15
      Caption = 'NAMA PELANGGAN '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl15: TLabel
      Left = 16
      Top = 96
      Width = 153
      Height = 15
      Caption = 'KODE JENIS PELANGGAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl16: TLabel
      Left = 16
      Top = 120
      Width = 115
      Height = 15
      Caption = 'JENIS PELANGGAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl17: TLabel
      Left = 16
      Top = 144
      Width = 130
      Height = 15
      Caption = 'JUMLAH PEMAKAIAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl18: TLabel
      Left = 16
      Top = 176
      Width = 82
      Height = 15
      Caption = 'BIAYA BEBAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl19: TLabel
      Left = 16
      Top = 208
      Width = 92
      Height = 15
      Caption = 'HARGA PER M3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl20: TLabel
      Left = 16
      Top = 240
      Width = 89
      Height = 15
      Caption = 'TOTAL HARGA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl21: TLabel
      Left = 16
      Top = 272
      Width = 73
      Height = 15
      Caption = 'PAJAK 10%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl22: TLabel
      Left = 16
      Top = 304
      Width = 100
      Height = 15
      Caption = 'TOTAL TAGIHAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblnama: TLabel
      Left = 192
      Top = 72
      Width = 3
      Height = 13
    end
    object lblkjp: TLabel
      Left = 192
      Top = 96
      Width = 3
      Height = 13
    end
    object lbljp: TLabel
      Left = 192
      Top = 120
      Width = 3
      Height = 13
    end
    object lbljmlh: TLabel
      Left = 192
      Top = 144
      Width = 3
      Height = 13
    end
    object lblBB: TLabel
      Left = 192
      Top = 176
      Width = 3
      Height = 13
    end
    object lblm3: TLabel
      Left = 192
      Top = 208
      Width = 3
      Height = 13
    end
    object lbltotal: TLabel
      Left = 192
      Top = 240
      Width = 3
      Height = 13
    end
    object lblpajak: TLabel
      Left = 192
      Top = 272
      Width = 3
      Height = 13
    end
    object lbltagihan: TLabel
      Left = 192
      Top = 304
      Width = 3
      Height = 13
    end
    object lblHasil: TLabel
      Left = 24
      Top = 344
      Width = 32
      Height = 13
      Caption = 'lblHasil'
    end
    object pnl4: TPanel
      Left = 0
      Top = 328
      Width = 409
      Height = 105
      Color = clSkyBlue
      TabOrder = 0
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 57
    Color = clActiveCaption
    TabOrder = 2
    object lbl1: TLabel
      Left = 272
      Top = 16
      Width = 332
      Height = 24
      Caption = 'FORM TAGIHAN LISTRIK PT.PLN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
