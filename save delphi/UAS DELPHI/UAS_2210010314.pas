unit UAS_2210010314;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    grp1: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt_nama: TEdit;
    cbb1: TComboBox;
    edt_namob: TEdit;
    edt_biaya: TEdit;
    edt_plat: TEdit;
    edt_sewa: TEdit;
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    grp2: TGroupBox;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    edt_sub: TEdit;
    edt_bitam: TEdit;
    edt_pajak: TEdit;
    edt_tokes: TEdit;
    dtp1: TDateTimePicker;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TADODataSet;
    ds2: TDataSource;
    procedure cbb1Change(Sender: TObject);
    procedure edt_sewaKeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  status : string;

implementation

{$R *.dfm}

procedure TForm1.cbb1Change(Sender: TObject);
var
  pilih : Integer;
begin
  pilih := cbb1.ItemIndex;

  case pilih of
    0: // opsi 1 dipilih
    begin
      edt_namob.Text := 'Toyota Avanza 2015';
      edt_plat.Text := 'DA 1010 IF';
      edt_biaya.Text := '300000';
    end;
    1: // opsi 2 dipilih
    begin
      edt_namob.Text := 'Daihatsu Xenia 2016';
      edt_plat.Text := 'DA 1100 KK';
      edt_biaya.Text := '320000';
    end;
    2: // opsi 3 dipilih
    begin
      edt_namob.Text := 'Daihatsu Ayla 2017';
      edt_plat.Text := 'DA 1211 JB';
      edt_biaya.Text := '230000';
    end;
    3: // opsi 4 dipilih
    begin
      edt_namob.Text := 'Honda Brio 2015';
      edt_plat.Text := 'DA 1717 OA';
      edt_biaya.Text := '250000';
    end;
    4: // opsi 5 dipilih
    begin
      edt_namob.Text := 'Toyota Alphard 2015';
      edt_plat.Text := 'DA 171 AI';
      edt_biaya.Text := '1200000';
    end;
  end;
end;

procedure TForm1.edt_sewaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8 {backspace}, #13 {enter}]) then
  begin
    Key := #0; // clear inputan
    MessageDlg('Tolong Input Angka saja', mtWarning, [mbOK], 0);
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  subbiaya, bitam, pajak, total : Integer;
begin
  bitam := 0;   // bitam (biaya tambahan) ini variable integer
  if rg1.ItemIndex = 0 then
    bitam := 250000;

  subbiaya := StrToIntDef(edt_biaya.Text, 0) * StrToIntDef(edt_sewa.Text, 0);
  pajak := Round(11 * subbiaya / 100);
  total := subbiaya + pajak;

  edt_sub.Text := FormatFloat('#,##0', subbiaya);  // saya makai format float untuk mempermudah membaca angkanya
  edt_bitam.Text := FormatFloat('#,##0', bitam);  // saya makai format float untuk mempermudah membaca angkanya
  edt_pajak.Text := FormatFloat('#,##0', pajak);  // saya makai format float untuk mempermudah membaca angkanya
  edt_tokes.Text := FormatFloat('#,##0', total);  // saya makai format float untuk mempermudah membaca angkanya
  // tokes (total keseluruhan saya singkat jadi tokes)
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt_nama.Text := '';
  cbb1.ItemIndex := -1; // tidak menginput atau memilih apapun
  edt_namob.Text := '';
  edt_biaya.Text := '';
  edt_plat.Text := '';
  edt_sewa.Text := '';
  edt_sub.Text := '';
  edt_bitam.Text := '';
  edt_pajak.Text := '';
  edt_tokes.Text := '';
  rg1.ItemIndex := -1;  // tidak memilih apapun
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if edt_nama.Text = '' then
    ShowMessage('Nama harap di isi!!!')
  else if edt_sewa.Text = '' then
    ShowMessage('Masukan Berapa hari anda menyewa mobil!!')
  else
  begin
    ds1.Append;
    ds1.FieldValues['Tanggal_Menyewa'] := dtp1.DateTime;
    ds1.FieldValues['Kode_Mobil'] := cbb1.Items[cbb1.ItemIndex];
    ds1.FieldValues['Nama_Mobil'] := edt_namob.Text;
    ds1.FieldValues['No_Plat'] := edt_plat.Text;
    ds1.FieldValues['Nama_Penyewa'] := edt_nama.Text;
    ds1.FieldValues['Lama_Menyewa'] := edt_sewa.Text;
    ds1.FieldValues['Tambahan_Sopir'] := rg1.Items[rg1.ItemIndex];
    ds1.FieldValues['Harga_Per_Hari'] := edt_biaya.Text;
    ds1.FieldValues['Subtotal'] := edt_sub.Text;
    ds1.FieldValues['Biaya_Tambahan'] := edt_bitam.Text;
    ds1.FieldValues['Pajak'] := edt_pajak.Text;
    ds1.FieldValues['Total_Keseluruhan'] := edt_tokes.Text;
    ds1.Post;
    MessageDlg('Berhasil Menyimpan!', mtInformation, [mbOK], 0);
    btn1Click(Sender);
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if (MessageDlg('Data Akan Dihapus, lanjutkan ?', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
  begin
    ds1.Delete;
    ShowMessage('Data Berhasil dihapus!');
    btn1Click(Sender);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  btn4.Enabled := False;
  btn5.Enabled := False;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
var
  sopir: string;
begin
  edt_nama.Text := ds1.FieldByName('Nama_Penyewa').AsString;
  cbb1.ItemIndex := cbb1.Items.IndexOf(ds1.FieldByName('Kode_Mobil').AsString);
  edt_namob.Text := ds1.FieldByName('Nama_Mobil').AsString;
  edt_plat.Text := ds1.FieldByName('No_Plat').AsString;
  edt_biaya.Text := ds1.FieldByName('Harga_Per_Hari').AsString;
  edt_sewa.Text := ds1.FieldByName('Lama_Menyewa').AsString;
  edt_bitam.Text := ds1.FieldByName('Biaya_Tambahan').AsString;
  edt_pajak.Text := ds1.FieldByName('Pajak').AsString;
  edt_sub.Text := ds1.FieldByName('Subtotal').AsString;
  edt_tokes.Text := ds1.FieldByName('Total_Keseluruhan').AsString;
  dtp1.Date := ds1.FieldByName('Tanggal_Menyewa').AsDateTime;
  sopir := ds1.FieldByName('Tambahan_Sopir').AsString;
  btn1.Enabled := true;
  btn2.Enabled := true;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;

end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  Resize := False;
end;
procedure TForm1.btn4Click(Sender: TObject);
begin
  if edt_nama.Text = '' then
    ShowMessage('Nama harap di isi!!!')
  else if edt_sewa.Text = '' then
    ShowMessage('Masukan Berapa hari anda menyewa mobil!!')
  else
  begin
    ds1.Edit;
    ds1.FieldValues['Tanggal_Menyewa'] := dtp1.DateTime;
    ds1.FieldValues['Kode_Mobil'] := cbb1.Items[cbb1.ItemIndex];
    ds1.FieldValues['Nama_Mobil'] := edt_namob.Text;
    ds1.FieldValues['No_Plat'] := edt_plat.Text;
    ds1.FieldValues['Nama_Penyewa'] := edt_nama.Text;
    ds1.FieldValues['Lama_Menyewa'] := edt_sewa.Text;
    ds1.FieldValues['Tambahan_Sopir'] := rg1.Items[rg1.ItemIndex];
    ds1.FieldValues['Harga_Per_Hari'] := edt_biaya.Text;
    ds1.FieldValues['Subtotal'] := edt_sub.Text;
    ds1.FieldValues['Biaya_Tambahan'] := edt_bitam.Text;
    ds1.FieldValues['Pajak'] := edt_pajak.Text;
    ds1.FieldValues['Total_Keseluruhan'] := edt_tokes.Text;
    ds1.Post;
    MessageDlg('Berhasil Di Ubah!', mtInformation, [mbOK], 0);
    btn1Click(Sender);
  end;
end;

end.
