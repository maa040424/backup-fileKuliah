object Form1: TForm1
  Left = 92
  Top = 134
  Width = 1130
  Height = 595
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
    Left = 272
    Top = 0
    Width = 505
    Height = 87
    Caption = 
      'FORM PEMBAYARAN PENGINAPAN HOTEL'#13#10'             FTI HOTEL BANJARB' +
      'ARU'#13#10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 272
    Top = 72
    Width = 508
    Height = 16
    Caption = 
      'Jl.Salak No.3 kel.singai ulin kec. banjarbaru utara kota banjarb' +
      'aru No.telp:0811-0909090'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 104
    Width = 537
    Height = 225
    Caption = 'Data Penginapan'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 74
      Height = 13
      Caption = 'Nama Penginap'
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 80
      Height = 13
      Caption = 'Kode Tipe Kamar'
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 80
      Height = 13
      Caption = 'Nama tipe kamar'
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 75
      Height = 13
      Caption = 'Biaya permalam'
    end
    object Label5: TLabel
      Left = 8
      Top = 144
      Width = 74
      Height = 13
      Caption = 'Lama menginap'
    end
    object Label12: TLabel
      Left = 8
      Top = 112
      Width = 87
      Height = 13
      Caption = 'Tanggal Menginap'
    end
    object Edit1: TEdit
      Left = 152
      Top = 16
      Width = 377
      Height = 21
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 152
      Top = 40
      Width = 377
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        'ST-BF'
        'ST-NBF'
        'EX-BF'
        'EX-NBF'
        'SP-BF'
        'SP-NBF')
    end
    object Edit2: TEdit
      Left = 152
      Top = 64
      Width = 377
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 152
      Top = 88
      Width = 377
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 152
      Top = 144
      Width = 377
      Height = 21
      TabOrder = 4
    end
    object DateTimePicker1: TDateTimePicker
      Left = 152
      Top = 112
      Width = 217
      Height = 25
      Date = 45120.550606331010000000
      Time = 45120.550606331010000000
      TabOrder = 5
    end
    object Button1: TButton
      Left = 152
      Top = 184
      Width = 185
      Height = 25
      Caption = 'Ulang'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 344
      Top = 184
      Width = 185
      Height = 25
      Caption = 'Hitung'
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 560
    Top = 104
    Width = 537
    Height = 225
    Caption = 'Data pembayaran'
    TabOrder = 1
    object Label6: TLabel
      Left = 8
      Top = 16
      Width = 39
      Height = 13
      Caption = 'subtotal'
    end
    object Label7: TLabel
      Left = 8
      Top = 40
      Width = 30
      Height = 13
      Caption = 'diskon'
    end
    object Label8: TLabel
      Left = 8
      Top = 64
      Width = 52
      Height = 13
      Caption = 'pajak 11%'
    end
    object Label9: TLabel
      Left = 8
      Top = 88
      Width = 86
      Height = 13
      Caption = 'Total Keseluruhan'
    end
    object Label10: TLabel
      Left = 8
      Top = 128
      Width = 99
      Height = 13
      Caption = 'Metode pembayaran'
    end
    object Edit5: TEdit
      Left = 136
      Top = 16
      Width = 385
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object Edit6: TEdit
      Left = 136
      Top = 40
      Width = 385
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit7: TEdit
      Left = 136
      Top = 64
      Width = 385
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit8: TEdit
      Left = 136
      Top = 88
      Width = 385
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object RadioGroup1: TRadioGroup
      Left = 136
      Top = 120
      Width = 385
      Height = 41
      Columns = 3
      Items.Strings = (
        'cash'
        'debit card'
        'qris')
      TabOrder = 4
    end
    object Button3: TButton
      Left = 8
      Top = 184
      Width = 169
      Height = 25
      Caption = 'simpan'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 184
      Top = 184
      Width = 161
      Height = 25
      Caption = 'ubah'
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 352
      Top = 184
      Width = 169
      Height = 25
      Caption = 'hapus'
      TabOrder = 7
      OnClick = Button5Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 336
    Width = 1081
    Height = 209
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanggal_penginap'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kode_tipe_kamar'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_tipe_kamar'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nomor_kamar'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_penginap'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Biaya_Per_malam'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subTotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lama_menginap'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pajak'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Diskon'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Keseluruhan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Metode_Pembayaran'
        Visible = True
      end>
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\UAS_NUR_YOGA_AND' +
      'IKA_2210010652\UAS_2210010652.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 16
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Pembayaran'
    Left = 72
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 120
    Top = 16
  end
  object ds1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from pembayaran'
    DataSource = DataSource1
    Parameters = <>
    Left = 168
    Top = 16
  end
end
