object barangkeluar: Tbarangkeluar
  Left = 0
  Top = 0
  Caption = 'Barang Keluar'
  ClientHeight = 567
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 48
    Top = 64
    Width = 74
    Height = 16
    Caption = 'kode_barang'
  end
  object Label2: TLabel
    Left = 48
    Top = 144
    Width = 74
    Height = 16
    Caption = 'kode_barang'
  end
  object Label3: TLabel
    Left = 48
    Top = 216
    Width = 74
    Height = 16
    Caption = 'jenis_barang'
  end
  object Label4: TLabel
    Left = 48
    Top = 288
    Width = 39
    Height = 17
    Caption = 'jumlah'
  end
  object Label5: TLabel
    Left = 48
    Top = 368
    Width = 84
    Height = 16
    Caption = 'tanggal_keluar'
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 64
    Width = 529
    Height = 320
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MaskEdit1: TMaskEdit
    Left = 48
    Top = 96
    Width = 233
    Height = 24
    TabOrder = 1
    Text = ''
  end
  object MaskEdit2: TMaskEdit
    Left = 48
    Top = 176
    Width = 233
    Height = 24
    TabOrder = 2
    Text = ''
  end
  object MaskEdit3: TMaskEdit
    Left = 48
    Top = 250
    Width = 233
    Height = 24
    TabOrder = 3
    Text = ''
  end
  object MaskEdit4: TMaskEdit
    Left = 48
    Top = 330
    Width = 233
    Height = 24
    TabOrder = 4
    Text = ''
  end
  object DateTimePicker1: TDateTimePicker
    Left = 48
    Top = 400
    Width = 233
    Height = 24
    TabOrder = 5
  end
  object Button1: TButton
    Left = 48
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 392
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 504
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 616
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 11
    OnClick = Button6Click
  end
  object ADOToko: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=toko'
    Left = 824
    Top = 504
  end
  object TabelBarangKeluar: TADOTable
    Active = True
    Connection = ADOToko
    CursorType = ctStatic
    TableName = 'barang_keluar'
    Left = 840
    Top = 408
  end
  object DataSource1: TDataSource
    DataSet = TabelBarangKeluar
    Left = 744
    Top = 504
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = TabelBarangKeluar
    ScopeMappings = <>
    Left = 752
    Top = 424
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 876
    Top = 477
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tgl_keluar'
      Control = DateTimePicker1
      Track = True
    end
  end
end
