object Form1: TForm1
  Left = 222
  Top = 237
  Width = 1104
  Height = 416
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pendataan Mahasiswa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 360
    Top = 8
    Width = 336
    Height = 31
    Caption = 'FORM DATA MAHASISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 528
    Top = 48
    Width = 281
    Height = 19
    Caption = 'Cari Data Mahasiswa Berdasarkan Nama'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 16
    Top = 48
    Width = 497
    Height = 313
    Caption = 'Input Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lbl2: TLabel
      Left = 16
      Top = 32
      Width = 37
      Height = 19
      Caption = 'NPM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 64
      Width = 103
      Height = 19
      Caption = 'Nama Lengkap'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 16
      Top = 104
      Width = 35
      Height = 19
      Caption = 'Prodi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 16
      Top = 136
      Width = 87
      Height = 19
      Caption = 'Tanggal lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 16
      Top = 208
      Width = 95
      Height = 19
      Caption = 'Jenis Kelamin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 16
      Top = 168
      Width = 90
      Height = 19
      Caption = 'Tempat Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn1: TButton
      Left = 40
      Top = 248
      Width = 81
      Height = 33
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 144
      Top = 248
      Width = 81
      Height = 33
      Caption = 'Ubah'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 248
      Top = 248
      Width = 81
      Height = 33
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 352
      Top = 248
      Width = 81
      Height = 33
      Caption = 'Bersih'
      TabOrder = 3
      OnClick = btn4Click
    end
    object edit2: TEdit
      Left = 136
      Top = 32
      Width = 337
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object edit3: TEdit
      Left = 136
      Top = 64
      Width = 337
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object edit4: TEdit
      Left = 136
      Top = 168
      Width = 337
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object rg1: TRadioGroup
      Left = 136
      Top = 88
      Width = 337
      Height = 41
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Items.Strings = (
        'Teknik Informatika'
        'Sistem Informatika')
      ParentFont = False
      TabOrder = 7
    end
    object dtp1: TDateTimePicker
      Left = 136
      Top = 136
      Width = 105
      Height = 23
      Date = 45090.368459375000000000
      Time = 45090.368459375000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object rg2: TRadioGroup
      Left = 128
      Top = 192
      Width = 337
      Height = 41
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Items.Strings = (
        'Laki-laki'
        'Perempuan')
      ParentFont = False
      TabOrder = 9
    end
  end
  object dbgrd1: TDBGrid
    Left = 528
    Top = 80
    Width = 545
    Height = 273
    DataSource = ds2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NPM'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_Lengkap'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prodi'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanggal_Lahir'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tempat_Lahir'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jenis Kelamin'
        Width = 70
        Visible = True
      end>
  end
  object edit5: TEdit
    Left = 824
    Top = 48
    Width = 249
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = edit5Change
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ACER\OneDr' +
      'ive\Documents\projek kampus.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'mahasiswa'
    Left = 56
  end
  object ds1: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'select* from mahasiswa'
    Parameters = <>
    Left = 96
  end
  object ds2: TDataSource
    DataSet = tbl1
    Left = 136
  end
end
