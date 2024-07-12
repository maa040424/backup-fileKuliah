object Form3: TForm3
  Left = 195
  Top = 190
  Width = 1257
  Height = 507
  Caption = 'Dosen'
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
  object grp1: TGroupBox
    Left = 16
    Top = 56
    Width = 489
    Height = 401
    Caption = 'Input Data Dosen'
    TabOrder = 0
    object lbl2: TLabel
      Left = 16
      Top = 40
      Width = 49
      Height = 22
      Caption = 'NIDN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 80
      Width = 58
      Height = 22
      Caption = 'NAMA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 16
      Top = 128
      Width = 128
      Height = 22
      Caption = 'Tanggal Masuk'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 16
      Top = 168
      Width = 59
      Height = 22
      Caption = 'Alamat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 16
      Top = 208
      Width = 64
      Height = 22
      Caption = 'NO WA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 16
      Top = 248
      Width = 58
      Height = 22
      Caption = 'Agama'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 16
      Top = 296
      Width = 56
      Height = 22
      Caption = 'Status '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnl1: TPanel
      Left = 152
      Top = 32
      Width = 313
      Height = 297
      Color = clSkyBlue
      TabOrder = 0
      object edt1: TEdit
        Left = 8
        Top = 8
        Width = 257
        Height = 21
        TabOrder = 0
      end
      object edt2: TEdit
        Left = 8
        Top = 48
        Width = 297
        Height = 21
        TabOrder = 1
      end
      object dtp1: TDateTimePicker
        Left = 8
        Top = 96
        Width = 153
        Height = 25
        Date = 45094.610677326390000000
        Time = 45094.610677326390000000
        TabOrder = 2
      end
      object edt3: TEdit
        Left = 8
        Top = 136
        Width = 297
        Height = 21
        TabOrder = 3
      end
      object edt4: TEdit
        Left = 8
        Top = 176
        Width = 257
        Height = 25
        TabOrder = 4
      end
      object edt5: TEdit
        Left = 8
        Top = 224
        Width = 137
        Height = 21
        TabOrder = 5
      end
      object rg1: TRadioGroup
        Left = 16
        Top = 256
        Width = 145
        Height = 33
        Caption = 'rg1'
        Columns = 2
        Items.Strings = (
          'PNS'
          'DTY')
        TabOrder = 6
      end
    end
    object btn1: TButton
      Left = 16
      Top = 344
      Width = 113
      Height = 41
      Caption = 'Tambah'
      TabOrder = 1
    end
    object btn2: TButton
      Left = 144
      Top = 344
      Width = 97
      Height = 41
      Caption = 'Ubah'
      TabOrder = 2
    end
    object btn3: TButton
      Left = 256
      Top = 344
      Width = 97
      Height = 41
      Caption = 'Hapus'
      TabOrder = 3
    end
    object btn4: TButton
      Left = 360
      Top = 344
      Width = 97
      Height = 41
      Caption = 'Bersih'
      TabOrder = 4
      OnClick = btn4Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 528
    Top = 64
    Width = 705
    Height = 385
    DataSource = ds2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    OnDataChange = ds2DataChange
    Left = 720
    Top = 16
  end
end
