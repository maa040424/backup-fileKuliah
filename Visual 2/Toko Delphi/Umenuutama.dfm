object FormMenuUtama: TFormMenuUtama
  Left = 0
  Top = 0
  Caption = 'Toko Delphi'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 32
    object BarangMasuk1: TMenuItem
      Caption = 'Barang Masuk'
    end
    object Stok1: TMenuItem
      Caption = 'Stok'
    end
    object BarangKeluar1: TMenuItem
      Caption = 'Barang Keluar'
    end
  end
  object ADOToko: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=toko'
    Left = 400
    Top = 184
  end
end
