object Form1: TForm1
  Left = 344
  Top = 155
  Width = 1044
  Height = 540
  Caption = 'Form mahasiswa'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Nama: TLabel
    Left = 32
    Top = 96
    Width = 177
    Height = 22
    Caption = 'NAMA                       :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 174
    Height = 22
    Caption = 'NIM                          :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 296
    Top = 16
    Width = 195
    Height = 25
    Caption = 'DATA MAHASISWA '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Unispace'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 136
    Width = 177
    Height = 22
    Caption = 'FAKULTAS               :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 176
    Width = 177
    Height = 22
    Caption = 'PRODI                      :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 216
    Width = 179
    Height = 22
    Caption = 'NO HP                       :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 248
    Width = 177
    Height = 22
    Caption = 'EMAIL                      :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 32
    Top = 280
    Width = 181
    Height = 22
    Caption = 'ALAMAT                   :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 32
    Top = 384
    Width = 181
    Height = 22
    Caption = 'JENIS KELAMIN     :'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 232
    Top = 96
    Width = 321
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = ' '
  end
  object edt2: TEdit
    Left = 232
    Top = 56
    Width = 321
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = ' '
  end
  object cbb1: TComboBox
    Left = 232
    Top = 136
    Width = 329
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemHeight = 22
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'Fakultas Ekonomi'
      'Fakultas Hukum '
      'Fakultas Ilmu Sosial Politik'
      'Fakultas Keguruan dan Pendidikan'
      'Fakultas Kesehatan Masyarakat'
      'Fakultas Pertanian '
      'Fakultas Studi Islam'
      'Fakultas Teknik'
      'Fakultas Teknologi Informasi'
      'Pasca Sarjana')
  end
  object ComboBox1: TComboBox
    Left = 232
    Top = 176
    Width = 329
    Height = 30
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ItemHeight = 22
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      'Agribisnis'#13#10#10
      'Bimbingan dan Konseling'#10
      'Ekonomi Syariah'#13#10#10
      'Farmasi'#13#10#10
      'Hukum Ekonomi Syariah'#13#10#10
      'Ilmu Administrasi Publik'#13#10#10
      'Ilmu Hukum'#10
      'Ilmu Komunikasi'#10
      'Kesehatan Masyarakat'#13#10#10
      'Manajemen'#13#10#10
      'Pendidikan Bahasa Inggris'#13#10#10
      'Pendidikan Guru Madrasah Ibtidaiyah'#13#10#10
      'Pendidikan Kimia'#10
      'Pendidikan Olahraga'#13#10#10
      'Peternakan'#13#10#10
      'Sistem Informasi'#13#10#10
      'Teknik Elektro'#10
      'Teknik Industri'#13#10#10
      'Teknik Informatika'#13#10#10
      'Teknik Mesin'#10
      'Teknik Sipil'#13#10#10
      'Magister Administrasi Pendidikan'#13#10#10
      'Magister Ilmu Komunikasi'#13#10#10
      'Magister Ilmu Administrasi Publik'#13#10#10
      'Magister Manajemen'#10'Magister'#160'Peternakan')
  end
  object edt1: TEdit
    Left = 232
    Top = 216
    Width = 321
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = ' '
  end
  object edt3: TEdit
    Left = 232
    Top = 248
    Width = 321
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = ' '
  end
  object rb1: TRadioButton
    Left = 240
    Top = 384
    Width = 49
    Height = 25
    Caption = 'L'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object rb2: TRadioButton
    Left = 328
    Top = 384
    Width = 49
    Height = 25
    Caption = 'P'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object alamat1: TMemo
    Left = 232
    Top = 280
    Width = 321
    Height = 97
    Lines.Strings = (
      'alamat1')
    TabOrder = 8
  end
end
