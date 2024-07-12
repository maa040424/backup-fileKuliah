object Form1: TForm1
  Left = 382
  Top = 154
  Width = 794
  Height = 546
  Caption = 'Penerbit'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = btn2Click
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 24
    Width = 95
    Height = 22
    Caption = 'ID Penerbit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 56
    Width = 123
    Height = 22
    Caption = 'Nama Penerbit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 184
    Width = 281
    Height = 19
    Caption = 'Cari Penerbit berdasarkan Nama Penerbit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 376
    Top = 16
    Width = 131
    Height = 24
    Caption = 'Form Penerbit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 224
    Width = 545
    Height = 289
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_penerbit'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_penerbit'
        Width = 500
        Visible = True
      end>
  end
  object edt1: TEdit
    Left = 152
    Top = 24
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 152
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 8
    Top = 104
    Width = 97
    Height = 49
    Caption = 'Keluar'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 120
    Top = 104
    Width = 89
    Height = 49
    Caption = 'Batal'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 224
    Top = 104
    Width = 97
    Height = 49
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 336
    Top = 104
    Width = 105
    Height = 49
    Caption = 'Ubah'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 456
    Top = 104
    Width = 97
    Height = 49
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 560
    Top = 104
    Width = 97
    Height = 49
    Caption = 'Tambah'
    TabOrder = 8
    OnClick = btn6Click
  end
  object edt3: TEdit
    Left = 304
    Top = 176
    Width = 241
    Height = 21
    TabOrder = 9
  end
  object btn7: TButton
    Left = 560
    Top = 168
    Width = 97
    Height = 41
    Caption = 'cari'
    TabOrder = 10
    OnClick = btn7Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'AutoEncodeStrings=ON')
    Connected = True
    HostName = 'Localhost'
    Port = 0
    Database = 'db_perpustakaan'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 'E:\file kuliah\save delphi\Perpustakaan\libmysql.dll'
    Left = 616
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_penerbit')
    Params = <>
    Left = 656
    Top = 8
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 704
    Top = 16
  end
end
