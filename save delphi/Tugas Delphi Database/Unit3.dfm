object Form3: TForm3
  Left = 204
  Top = 148
  Width = 1120
  Height = 439
  Caption = 'Dosen'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 400
    Top = 16
    Width = 159
    Height = 24
    Caption = 'Form Data Dosen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 384
    Top = 70
    Width = 171
    Height = 13
    Caption = 'Cari Data Dosen Berdasarkan Nama'
  end
  object dbgrd1: TDBGrid
    Left = 376
    Top = 88
    Width = 705
    Height = 281
    DataSource = ds2
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
        FieldName = 'ID'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nidn'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_dosen'
        Width = 150
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_wa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agama'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 16
    Top = 56
    Width = 353
    Height = 313
    Caption = 'Input Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
    object edt1: TEdit
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
      Text = '1233242435'
    end
    object edt2: TEdit
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
      Text = 'sdfs dfsdf'
    end
    object edt3: TEdit
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
      Text = 'sdfsfef'
    end
    object edt4: TEdit
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
      Text = '2342312313'
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
      OnClick = btn4Click
    end
  end
  object edt5: TEdit
    Left = 560
    Top = 64
    Width = 265
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = edt5Change
  end
  object btn5: TButton
    Left = 16
    Top = 16
    Width = 121
    Height = 25
    Caption = 'Kembali'
    TabOrder = 3
    OnClick = btn5Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\file kuliah\save' +
      ' delphi\Tugas Delphi Database\Tugas Delphi db.mdb;Persist Securi' +
      'ty Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 600
    Top = 16
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Dosen'
    Left = 640
    Top = 16
  end
  object dsDosen: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'select * from Dosen'
    Parameters = <>
    Left = 680
    Top = 16
  end
  object ds2: TDataSource
    DataSet = dsDosen
    Left = 720
    Top = 16
  end
end
