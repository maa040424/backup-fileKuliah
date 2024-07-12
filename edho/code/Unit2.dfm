object Form2: TForm2
  Left = 233
  Top = 175
  Width = 1251
  Height = 572
  Caption = 'Form2'
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
    Left = 512
    Top = 80
    Width = 242
    Height = 33
    Caption = 'Form Data  Dosen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 488
    Top = 152
    Width = 292
    Height = 19
    Caption = 'Cari data dosen berdasarkan nama dosen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 8
    Top = 152
    Width = 457
    Height = 337
    Caption = 'grp1'
    TabOrder = 0
    object lbl2: TLabel
      Left = 32
      Top = 32
      Width = 39
      Height = 19
      Caption = 'NIDN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 32
      Top = 64
      Width = 41
      Height = 19
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 32
      Top = 96
      Width = 108
      Height = 19
      Caption = 'Tanggal masuk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 32
      Top = 128
      Width = 50
      Height = 19
      Caption = 'Alamat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 32
      Top = 160
      Width = 50
      Height = 19
      Caption = 'No WA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 32
      Top = 192
      Width = 50
      Height = 19
      Caption = 'Agama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 32
      Top = 224
      Width = 43
      Height = 19
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 152
      Top = 32
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 152
      Top = 64
      Width = 273
      Height = 21
      TabOrder = 1
    end
    object dtp1: TDateTimePicker
      Left = 152
      Top = 96
      Width = 169
      Height = 21
      Date = 45096.582283587970000000
      Time = 45096.582283587970000000
      TabOrder = 2
    end
    object edt3: TEdit
      Left = 152
      Top = 128
      Width = 273
      Height = 21
      TabOrder = 3
    end
    object edt4: TEdit
      Left = 152
      Top = 160
      Width = 273
      Height = 21
      TabOrder = 4
    end
    object edt5: TEdit
      Left = 152
      Top = 192
      Width = 273
      Height = 21
      TabOrder = 5
    end
    object rg1: TRadioGroup
      Left = 152
      Top = 216
      Width = 185
      Height = 33
      Caption = 'rg1'
      Columns = 2
      Items.Strings = (
        'PNS'
        'DTY')
      TabOrder = 6
    end
    object btn1: TButton
      Left = 24
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 7
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 128
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 8
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 240
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 9
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 344
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 10
      OnClick = btn4Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 480
    Top = 176
    Width = 745
    Height = 313
    DataSource = ds1
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
        FieldName = 'NIDN'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_dosen'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_masuk'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_wa'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agama'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 90
        Visible = True
      end>
  end
  object edt6: TEdit
    Left = 784
    Top = 152
    Width = 281
    Height = 21
    TabOrder = 2
    OnChange = edt6Change
  end
  object btn5: TButton
    Left = 152
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Kembali'
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
    Left = 56
    Top = 16
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Dosen'
    Left = 136
    Top = 16
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 208
    Top = 16
  end
  object ds2: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'select * from Dosen;'
    DataSource = ds1
    Parameters = <>
    Left = 272
    Top = 16
  end
end
