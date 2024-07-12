object Ustok: TUstok
  Left = 0
  Top = 0
  Caption = 'Stok'
  ClientHeight = 456
  ClientWidth = 969
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
    Left = 80
    Top = 64
    Width = 144
    Height = 33
    Caption = 'Stok Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 112
    Width = 505
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
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
    Left = 688
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 696
    Top = 216
  end
  object ADOTable1: TADOTable
    Connection = ADOToko
    CursorType = ctStatic
    TableName = 'stok'
    Left = 704
    Top = 280
  end
end
