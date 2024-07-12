object Form3: TForm3
  Left = 242
  Top = 274
  Width = 977
  Height = 460
  Caption = 'Pendataan Dosen'
  Color = clCream
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
    Left = 320
    Top = 8
    Width = 262
    Height = 31
    Caption = 'FORM DATA DOSEN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 16
    Top = 48
    Width = 353
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
      Width = 42
      Height = 19
      Caption = 'NIDN'
    end
    object lbl3: TLabel
      Left = 16
      Top = 64
      Width = 91
      Height = 19
      Caption = 'Nama_Dosen'
    end
    object lbl4: TLabel
      Left = 16
      Top = 96
      Width = 109
      Height = 19
      Caption = 'Tanggal_Masuk'
    end
    object lbl5: TLabel
      Left = 16
      Top = 128
      Width = 48
      Height = 19
      Caption = 'Alamat'
    end
    object lbl6: TLabel
      Left = 16
      Top = 160
      Width = 50
      Height = 19
      Caption = 'No_Wa'
    end
    object lbl7: TLabel
      Left = 16
      Top = 192
      Width = 47
      Height = 19
      Caption = 'Agama'
    end
    object lbl8: TLabel
      Left = 16
      Top = 224
      Width = 42
      Height = 19
      Caption = 'Status'
    end
    object edit2: TEdit
      Left = 136
      Top = 32
      Width = 201
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edit3: TEdit
      Left = 136
      Top = 64
      Width = 201
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edit4: TEdit
      Left = 136
      Top = 128
      Width = 201
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object edit5: TEdit
      Left = 136
      Top = 160
      Width = 201
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object cbb1: TComboBox
      Left = 136
      Top = 192
      Width = 201
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 4
      Text = 'Pilih Agama'
      Items.Strings = (
        'Islam'
        'Kristen'
        'Katolik'
        'Hindu'
        'Budha'
        'Konghucu')
    end
    object dtp1: TDateTimePicker
      Left = 136
      Top = 96
      Width = 201
      Height = 23
      Date = 45093.783538518520000000
      Time = 45093.783538518520000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object rg1: TRadioGroup
      Left = 136
      Top = 216
      Width = 201
      Height = 33
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Items.Strings = (
        'PNS'
        'DTY')
      ParentFont = False
      TabOrder = 6
    end
    object btn1: TButton
      Left = 16
      Top = 264
      Width = 73
      Height = 25
      Caption = 'Tambah'
      TabOrder = 7
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 96
      Top = 264
      Width = 73
      Height = 25
      Caption = 'Ubah'
      TabOrder = 8
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 176
      Top = 264
      Width = 73
      Height = 25
      Caption = 'Hapus'
      TabOrder = 9
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 256
      Top = 264
      Width = 73
      Height = 25
      Caption = 'Bersih'
      TabOrder = 10
    end
  end
  object grp2: TGroupBox
    Left = 16
    Top = 368
    Width = 353
    Height = 121
    Caption = 'Pencari Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lbl9: TLabel
      Left = 48
      Top = 38
      Width = 248
      Height = 19
      Caption = 'Cari Data Dosen Berdasarkan Nama'
    end
    object edit6: TEdit
      Left = 40
      Top = 64
      Width = 265
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = edit6Change
    end
  end
  object dbgrd1: TDBGrid
    Left = 384
    Top = 56
    Width = 561
    Height = 433
    DataSource = ds2
    TabOrder = 2
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
        FieldName = 'NIDN'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_Dosen'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanggal_Masuk'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'No_Wa'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Agama'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Visible = True
      end>
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\file kuliah\save' +
      ' delphi\Tugas Visual Database_2210010343_M. Abdul Jabbar\Data do' +
      'sen.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Dosen'
    Left = 48
  end
  object ds1: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'select *  from Dosen'
    Parameters = <>
    Left = 88
  end
  object ds2: TDataSource
    DataSet = ds1
    Left = 128
  end
end
