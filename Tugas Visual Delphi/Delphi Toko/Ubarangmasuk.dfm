object FormBarangMasuk: TFormBarangMasuk
  Left = 0
  Top = 0
  Caption = 'Barang Masuk'
  ClientHeight = 432
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 90
    Width = 79
    Height = 16
    Caption = 'nama_barang'
    FocusControl = DBEdit2
  end
  object StaticText1: TStaticText
    Left = 24
    Top = 24
    Width = 78
    Height = 20
    Caption = 'kode_barang'
    TabOrder = 0
  end
  object StaticText3: TStaticText
    Left = 24
    Top = 168
    Width = 78
    Height = 20
    Caption = 'jenis_barang'
    TabOrder = 1
  end
  object StaticText4: TStaticText
    Left = 24
    Top = 233
    Width = 43
    Height = 20
    Caption = 'jumlah'
    TabOrder = 2
  end
  object StaticText5: TStaticText
    Left = 24
    Top = 305
    Width = 90
    Height = 20
    Caption = 'tanggal_masuk'
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 323
    Width = 233
    Height = 24
    Date = 45420.000000000000000000
    Time = 0.527561863425944500
    TabOrder = 4
  end
  object Button1: TButton
    Left = 24
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 360
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 472
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 584
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 10
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 23
    Top = 50
    Width = 233
    Height = 24
    DataField = 'kode_barang'
    DataSource = TblBarangMasuk
    TabOrder = 11
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 120
    Width = 233
    Height = 24
    DataField = 'nama_barang'
    DataSource = TblBarangMasuk
    TabOrder = 12
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 194
    Width = 233
    Height = 24
    DataField = 'jenis_barang'
    DataSource = TblBarangMasuk
    TabOrder = 13
  end
  object DBEdit4: TDBEdit
    Left = 23
    Top = 259
    Width = 234
    Height = 24
    DataField = 'jumlah'
    DataSource = TblBarangMasuk
    TabOrder = 14
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 50
    Width = 537
    Height = 235
    DataSource = TblBarangMasuk
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOToko: TADOConnection
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=toko;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 872
    Top = 344
  end
  object ADOTabelBarangMasuk: TADOTable
    Connection = ADOToko
    CursorType = ctStatic
    TableName = 'barang_masuk'
    Left = 808
    Top = 368
    object ADOTabelBarangMasukid_barang_masuk: TAutoIncField
      DisplayWidth = 14
      FieldName = 'id_barang_masuk'
      ReadOnly = True
    end
    object ADOTabelBarangMasukkode_barang: TWideStringField
      DisplayWidth = 100
      FieldName = 'kode_barang'
      Size = 100
    end
    object ADOTabelBarangMasuknama_barang: TWideStringField
      DisplayWidth = 200
      FieldName = 'nama_barang'
      Size = 200
    end
    object ADOTabelBarangMasukjenis_barang: TWideStringField
      DisplayWidth = 100
      FieldName = 'jenis_barang'
      Size = 100
    end
    object ADOTabelBarangMasukjumlah: TWideStringField
      DisplayWidth = 44
      FieldName = 'jumlah'
      Size = 44
    end
    object ADOTabelBarangMasuktanggal_masuk: TDateField
      DisplayWidth = 12
      FieldName = 'tanggal_masuk'
    end
  end
  object TblBarangMasuk: TDataSource
    DataSet = ADOTabelBarangMasuk
    Left = 712
    Top = 360
  end
  object TabelBarangMasuk: TBindSourceDB
    DataSource = TblBarangMasuk
    ScopeMappings = <>
    Left = 736
    Top = 304
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 956
    Top = 365
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = TabelBarangMasuk
      FieldName = 'tanggal_masuk'
      Control = DateTimePicker1
      Track = False
    end
  end
end
