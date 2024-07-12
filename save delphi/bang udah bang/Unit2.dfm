object Form2: TForm2
  Left = 256
  Top = 161
  Width = 1276
  Height = 578
  Caption = 'Form2'
  Color = clActiveCaption
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
    Left = 448
    Top = 8
    Width = 208
    Height = 24
    Caption = 'Form Data Mahasiswa '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 448
    Top = 56
    Width = 193
    Height = 13
    Caption = 'Cari Data Mahasiswa Berdasarkan Nama'
  end
  object grp1: TGroupBox
    Left = 48
    Top = 88
    Width = 417
    Height = 305
    Caption = 'Input Data'
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
      Top = 96
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
      Top = 128
      Width = 93
      Height = 19
      Caption = 'Tanggal Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 16
      Top = 160
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
    object lbl7: TLabel
      Left = 16
      Top = 192
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
    object pnl1: TPanel
      Left = 120
      Top = 24
      Width = 281
      Height = 201
      Color = clSkyBlue
      TabOrder = 0
      object edt1: TEdit
        Left = 8
        Top = 8
        Width = 225
        Height = 21
        TabOrder = 0
      end
      object edt2: TEdit
        Left = 8
        Top = 40
        Width = 265
        Height = 21
        TabOrder = 1
      end
      object dtp1: TDateTimePicker
        Left = 8
        Top = 104
        Width = 153
        Height = 25
        Date = 45093.793118483790000000
        Time = 45093.793118483790000000
        TabOrder = 2
      end
      object edt3: TEdit
        Left = 8
        Top = 136
        Width = 265
        Height = 21
        TabOrder = 3
      end
      object rg1: TRadioGroup
        Left = 8
        Top = 64
        Width = 265
        Height = 33
        Columns = 2
        Items.Strings = (
          'Teknik Informatika'
          'Sistem Informasi')
        TabOrder = 4
      end
      object rg2: TRadioGroup
        Left = 8
        Top = 160
        Width = 265
        Height = 33
        Columns = 2
        Items.Strings = (
          'Pria'
          'Wanita')
        TabOrder = 5
      end
    end
    object btn1: TButton
      Left = 16
      Top = 240
      Width = 81
      Height = 41
      Caption = 'Tambah'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 112
      Top = 240
      Width = 73
      Height = 41
      Caption = 'Ubah'
      TabOrder = 2
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 200
      Top = 240
      Width = 81
      Height = 41
      Caption = 'Hapus'
      TabOrder = 3
    end
    object btn4: TButton
      Left = 296
      Top = 240
      Width = 89
      Height = 41
      Caption = 'Bersih'
      TabOrder = 4
      OnClick = btn4Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 475
    Top = 96
    Width = 721
    Height = 297
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
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'npm'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_lengkap'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prodi'
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
        Visible = True
      end>
  end
  object edt4: TEdit
    Left = 648
    Top = 48
    Width = 177
    Height = 21
    TabOrder = 2
    OnChange = edt4Change
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
    Left = 864
    Top = 40
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Mahasiswa'
    Left = 912
    Top = 40
  end
  object dsMahasiswa: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'select *  from Mahasiswa'
    Parameters = <>
    Left = 960
    Top = 40
  end
  object ds1: TDataSource
    DataSet = dsMahasiswa
    Left = 1008
    Top = 40
  end
end
