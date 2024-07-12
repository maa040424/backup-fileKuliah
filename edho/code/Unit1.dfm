object Form1: TForm1
  Left = 200
  Top = 142
  Width = 1282
  Height = 540
  Caption = 'Data Mahasiswa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object lbl1: TLabel
    Left = 424
    Top = 80
    Width = 266
    Height = 30
    Caption = 'FORM DATA MAHASISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 464
    Top = 144
    Width = 337
    Height = 18
    Caption = 'Cari data mahasiswa berdasarkan nama mahasiswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 16
    Top = 136
    Width = 441
    Height = 289
    TabOrder = 0
    object lbl2: TLabel
      Left = 32
      Top = 48
      Width = 32
      Height = 19
      Caption = 'NPM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 32
      Top = 80
      Width = 105
      Height = 19
      Caption = 'Nama Lengkap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 32
      Top = 112
      Width = 37
      Height = 19
      Caption = 'Prodi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 32
      Top = 144
      Width = 97
      Height = 19
      Caption = 'Tanggal Lahir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 32
      Top = 176
      Width = 94
      Height = 19
      Caption = 'Tempat Lahir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 32
      Top = 208
      Width = 96
      Height = 19
      Caption = 'Jenis Kelamin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 16
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 112
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 208
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 304
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 3
      OnClick = btn4Click
    end
    object edt1: TEdit
      Left = 160
      Top = 48
      Width = 177
      Height = 24
      TabOrder = 4
    end
    object edt2: TEdit
      Left = 160
      Top = 80
      Width = 265
      Height = 24
      TabOrder = 5
    end
    object rg1: TRadioGroup
      Left = 160
      Top = 104
      Width = 265
      Height = 33
      Columns = 2
      Items.Strings = (
        'Teknik Informatika'
        'Sistem Informasi')
      TabOrder = 6
    end
    object dtp1: TDateTimePicker
      Left = 160
      Top = 144
      Width = 265
      Height = 24
      Date = 45096.457820717590000000
      Time = 45096.457820717590000000
      TabOrder = 7
    end
    object edt3: TEdit
      Left = 160
      Top = 176
      Width = 121
      Height = 24
      TabOrder = 8
    end
    object rg2: TRadioGroup
      Left = 160
      Top = 200
      Width = 185
      Height = 33
      Columns = 2
      Items.Strings = (
        'Pria'
        'Wanita')
      TabOrder = 9
    end
  end
  object edt4: TEdit
    Left = 808
    Top = 144
    Width = 297
    Height = 24
    TabOrder = 1
    OnChange = edt4Change
  end
  object dbgrd1: TDBGrid
    Left = 464
    Top = 176
    Width = 793
    Height = 313
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NPM'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_lengkap'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prodi'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_lahir'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenkel'
        Width = 80
        Visible = True
      end>
  end
  object btn5: TButton
    Left = 184
    Top = 456
    Width = 75
    Height = 25
    Caption = 'kembali'
    TabOrder = 3
    OnClick = btn5Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\file kuliah\edho' +
      '\Projek Kampus.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 8
  end
  object tbl_mahasiswa: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Mahasiswa'
    Left = 176
  end
  object ds1: TDataSource
    DataSet = dsmahasiswa
    Left = 128
    Top = 64
  end
  object dsmahasiswa: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'select * from mahasiswa;'
    Parameters = <>
    Left = 200
    Top = 64
  end
end
