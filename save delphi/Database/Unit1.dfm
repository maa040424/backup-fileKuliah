object Form1: TForm1
  Left = 599
  Top = 159
  Width = 719
  Height = 541
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 48
    Top = 90
    Width = 21
    Height = 13
    Caption = 'NPM'
  end
  object lbl2: TLabel
    Left = 48
    Top = 114
    Width = 70
    Height = 13
    Caption = 'Nama Lengkap'
  end
  object lbl3: TLabel
    Left = 48
    Top = 138
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl4: TLabel
    Left = 48
    Top = 162
    Width = 24
    Height = 13
    Caption = 'Prodi'
  end
  object lbl5: TLabel
    Left = 48
    Top = 186
    Width = 66
    Height = 13
    Caption = 'Tanggall Lahir'
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 256
    Width = 665
    Height = 209
    DataSource = ds2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'npm'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_lengkap'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prodi'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Visible = True
      end>
  end
  object edt1: TEdit
    Left = 128
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 128
    Top = 112
    Width = 257
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 128
    Top = 136
    Width = 553
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 128
    Top = 160
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object dtp1: TDateTimePicker
    Left = 128
    Top = 184
    Width = 186
    Height = 21
    Date = 45083.385258263890000000
    Time = 45083.385258263890000000
    TabOrder = 5
  end
  object btn1: TButton
    Left = 128
    Top = 208
    Width = 89
    Height = 33
    Caption = 'Simpan'
    TabOrder = 6
    OnClick = btn1Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=E:\db' +
      '_uniska.mdb;Mode=Share Deny None;Persist Security Info=False;Jet' +
      ' OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:D' +
      'atabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database L' +
      'ocking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glob' +
      'al Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OL' +
      'EDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fals' +
      'e;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact' +
      ' Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object ds1: TADODataSet
    Active = True
    Connection = con1
    CursorType = ctStatic
    CommandText = 'select * from mahasiswa'
    Parameters = <>
    Left = 88
    Top = 8
  end
  object tbl1: TADOTable
    Left = 640
    Top = 32
  end
  object ds2: TDataSource
    DataSet = ds1
    Left = 144
    Top = 8
  end
end
