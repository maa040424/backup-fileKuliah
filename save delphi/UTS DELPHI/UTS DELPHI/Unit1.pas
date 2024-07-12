unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    edt1: TEdit;
    cbb1: TComboBox;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lblnama: TLabel;
    lblkjp: TLabel;
    lbljp: TLabel;
    lbljmlh: TLabel;
    lblBB: TLabel;
    lblm3: TLabel;
    lbltotal: TLabel;
    lblpajak: TLabel;
    lbltagihan: TLabel;
    lblHasil: TLabel;
    pnl4: TPanel;
    procedure btn3Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn3Click(Sender: TObject);
var
  nama, jpelanggan: string;
  bBeban, hpM3, Ttotal, pajak, tTagihan, jpemakaian: Double;
begin
  jpelanggan := cbb1.Items[cbb1.ItemIndex];
  bBeban := 0;
  hpM3 := 0;
  jpemakaian := StrToFloat(edt3.Text); // Mengambil input jpemakaian dari komponen edt3

  case cbb1.ItemIndex of
    0: // Opsi 1 dipilih (Jenis pelanggan Pabrik)
    begin
      jpelanggan := 'Pabrik';
      bBeban := 5000;
      hpM3 := 2500;
    end;
    1: // Opsi 2 dipilih (Jenis pelanggan Swalayan)
    begin
      jpelanggan := 'Swalayan';
      bBeban := 35000;
      hpM3 := 2000;
    end;
    2: // Opsi 3 dipilih (Jenis pelanggan Toko)
    begin
      jpelanggan := 'Toko';
      bBeban := 25000;
      hpM3 := 1500;
    end;
    3: // Opsi 4 dipilih (Jenis pelanggan Rumah)
    begin
      jpelanggan := 'Rumah';
      bBeban := 15000;
      hpM3 := 750;
    end;
  end;

  // Hitung total harga
  Ttotal := (hpM3 * jpemakaian) + bBeban;

  // Hitung pajak (misalnya 10% dari total harga)
  pajak := Ttotal * 0.1;

  // Hitung total tagihan dengan pajak
  tTagihan := Ttotal + pajak;

  // Tampilkan jenis pelanggan, biaya beban, harga per m3 ke komponen yang sesuai (misalnya lblHasil)
  lblHasil.Caption := 'Jenis Pelanggan: ' + jpelanggan + ', Biaya Beban: ' + FloatToStr(bBeban) +
    ', Harga per m3: ' + FloatToStr(hpM3);

  // Tampilkan hasil perhitungan ke komponen yang sesuai (misalnya edt6, edt7, edt8)
  edt6.Text := FloatToStr(Ttotal);
  edt7.Text := FloatToStr(pajak);
  edt8.Text := FloatToStr(tTagihan);
  edt2.Text := jpelanggan;
  edt4.Text := FloatToStr(bBeban);
  edt5.Text := FloatToStr(hpM3);
end;




procedure TForm1.cbb1Change(Sender: TObject);
var
  pilih: Integer;
begin
  pilih := cbb1.ItemIndex;

  case pilih of
    0: // Opsi 1 dipilih (Jenis pelanggan Pabrik)
    begin
      edt2.Text := 'Pabrik';
      edt4.Text := '5000';
      edt5.Text := '2500';
    end;
    1: // Opsi 2 dipilih (Jenis pelanggan Swalayan)
    begin
      edt2.Text := 'Swalayan';
      edt4.Text := '35000';
      edt5.Text := '2000';
    end;
    2: // Opsi 3 dipilih (Jenis pelanggan Toko)
    begin
      edt2.Text := 'Toko';
      edt4.Text := '25000';
      edt5.Text := '1500';
    end;
    3: // Opsi 4 dipilih (Jenis pelanggan Rumah)
    begin
      edt2.Text := 'Rumah';
      edt4.Text := '15000';
      edt5.Text := '750';
    end;
  end;
end;
procedure TForm1.btn2Click(Sender: TObject);
begin
  lblnama.Caption := edt1.Text;
  lblkjp.Caption := cbb1.Text;
  lbljp.Caption := edt2.Text;
  lbljmlh.Caption := edt3.Text;
  lblBB.Caption := edt4.Text;
  lblm3.Caption := edt5.Text;
  lbltotal.Caption := edt6.Text;
  lblpajak.Caption := edt7.Text;
  lbltagihan.Caption := edt8.Text;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt1.Text := '';  // Mengosongkan inputan pada edt1
  cbb1.ItemIndex := -1;  // Mengosongkan pilihan pada cbb1
  edt2.Text := '';  // Mengosongkan inputan pada edt2
  edt3.Text := '';  // Mengosongkan inputan pada edt3
  edt4.Text := '';  // Mengosongkan inputan pada edt4
  edt5.Text := '';  // Mengosongkan inputan pada edt5
  edt6.Text := '';  // Mengosongkan inputan pada edt6
  edt7.Text := '';  // Mengosongkan inputan pada edt7
  edt8.Text := '';  // Mengosongkan inputan pada edt8
  lblnama.Caption := '';  // Mengosongkan label lblnama
  lblkjp.Caption := '';  // Mengosongkan label lblkjp
  lbljp.Caption := '';  // Mengosongkan label lbljp
  lbljmlh.Caption := '';  // Mengosongkan label lbljmlh
  lblBB.Caption := '';  // Mengosongkan label lblBB
  lblm3.Caption := '';  // Mengosongkan label lblm3
  lbltotal.Caption := '';  // Mengosongkan label lbltotal
  lblpajak.Caption := '';  // Mengosongkan label lblpajak
  lbltagihan.Caption := '';  // Mengosongkan label lbltagihan
end;

end.
