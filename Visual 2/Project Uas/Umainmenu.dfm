object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Hotel A'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 505
    Height = 29
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 10461087
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    ExplicitLeft = 496
    ExplicitTop = 160
    ExplicitWidth = 150
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 32
    object kamar: TMenuItem
      Caption = 'Kamar'
      OnClick = kamarClick
    end
    object reservasi: TMenuItem
      Caption = 'Reservasi'
    end
    object pembayaran: TMenuItem
      Caption = 'Pembayaran'
    end
    object tamu: TMenuItem
      Caption = 'Manajemen Tamu'
      object laporan: TMenuItem
      end
    end
    object Laporan1: TMenuItem
      Caption = 'Laporan'
    end
  end
end
