object FormBarangMasuk: TFormBarangMasuk
  Left = 0
  Top = 0
  Caption = 'Barang Masuk'
  ClientHeight = 297
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 21
    Width = 63
    Height = 13
    Caption = 'kode_barang'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 67
    Width = 66
    Height = 13
    Caption = 'nama_barang'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 117
    Width = 62
    Height = 13
    Caption = 'jenis_barang'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 163
    Width = 31
    Height = 13
    Caption = 'jumlah'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 16
    Top = 213
    Width = 72
    Height = 13
    Caption = 'tanggal_masuk'
    FocusControl = DBEdit6
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 40
    Width = 1304
    Height = 21
    DataField = 'kode_barang'
    DataSource = dsBarangMasuk
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 86
    Width = 2604
    Height = 21
    DataField = 'nama_barang'
    DataSource = dsBarangMasuk
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 136
    Width = 1304
    Height = 21
    DataField = 'jenis_barang'
    DataSource = dsBarangMasuk
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 182
    Width = 576
    Height = 21
    DataField = 'jumlah'
    DataSource = dsBarangMasuk
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 230
    Width = 134
    Height = 21
    DataField = 'tanggal_masuk'
    DataSource = dsBarangMasuk
    TabOrder = 4
  end
  object barang_masuk: TADOTable
    Connection = FormMenuUtama.ADOToko
    CursorType = ctStatic
    TableName = 'barang_masuk'
    Left = 408
    Top = 24
    object barang_masukid_barang_masuk: TAutoIncField
      FieldName = 'id_barang_masuk'
      ReadOnly = True
    end
    object barang_masukkode_barang: TWideStringField
      FieldName = 'kode_barang'
      Size = 100
    end
    object barang_masuknama_barang: TWideStringField
      FieldName = 'nama_barang'
      Size = 200
    end
    object barang_masukjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Size = 100
    end
    object barang_masukjumlah: TWideStringField
      FieldName = 'jumlah'
      Size = 44
    end
    object barang_masuktanggal_masuk: TDateField
      FieldName = 'tanggal_masuk'
    end
  end
  object dsBarangMasuk: TDataSource
    DataSet = barang_masuk
    Left = 480
    Top = 24
  end
end
