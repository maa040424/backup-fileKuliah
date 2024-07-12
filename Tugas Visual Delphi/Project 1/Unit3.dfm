object Form1: TForm1
  Left = 191
  Top = 154
  Width = 1044
  Height = 540
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
    Left = 352
    Top = 16
    Width = 289
    Height = 30
    Caption = 'Penggunaan MessageBox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 360
    Top = 72
    Width = 273
    Height = 41
    Caption = 'showMessage'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 360
    Top = 136
    Width = 273
    Height = 41
    Caption = 'MessageDlg - mtInformation'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 360
    Top = 200
    Width = 273
    Height = 41
    Caption = 'MessageDlg - mtWarning'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 360
    Top = 264
    Width = 273
    Height = 41
    Caption = 'MessageDlg - mtError'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 360
    Top = 328
    Width = 273
    Height = 41
    Caption = 'MessageDlg - mtConfirmation'
    TabOrder = 4
    OnClick = btn5Click
  end
end
