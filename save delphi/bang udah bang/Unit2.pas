unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl8: TLabel;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    pnl1: TPanel;
    edt1: TEdit;
    edt2: TEdit;
    dtp1: TDateTimePicker;
    edt3: TEdit;
    rg1: TRadioGroup;
    rg2: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    edt4: TEdit;
    con1: TADOConnection;
    tbl1: TADOTable;
    dsMahasiswa: TADODataSet;
    ds1: TDataSource;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
if edt1.Text = '' then
  ShowMessage('NPM belum diisi!')
else if edt2.Text = '' then
   ShowMessage('Nama Lengkap Belum Diisi!!')
else if edt3.Text = '' then
   ShowMessage('Tempat Lahir Belum Di isi!!!')
else
begin
  dsMahasiswa.Append;
  dsMahasiswa.FieldValues['npm']:= edt1.Text;
  dsMahasiswa.FieldValues['nama_lengkap']:= edt2.Text;
  dsMahasiswa.FieldValues['prodi']:= rg1.Items[rg1.ItemIndex];
  dsMahasiswa.FieldValues['tanggal_lahir']:= dtp1.Date;
  dsMahasiswa.FieldValues['tempat_lahir']:= edt3.Text;
  dsMahasiswa.FieldValues['jenkel']:= rg2.Items[rg2.ItemIndex];
  dsMahasiswa.Post;
  ShowMessage('Data Mahasiswa berhasil diperbaharui!');
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
btn1.Enabled := True; //button tambah aktif
btn2.Enabled := False; //button ubah nonaktif
btn3.Enabled := False; //button hapus nonaktif

end;

end;
procedure TForm2.FormCreate(Sender: TObject);
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 btn1.Enabled := True; //button tambah aktif
 btn2.Enabled := False; //button ubah nonaktif
 btn3.Enabled := False; //button hapus nonaktif
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
btn1.Enabled := True; //button tambah aktif
btn2.Enabled := False; //button ubah nonaktif
btn3.Enabled := False; //button hapus nonaktif
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
   ShowMessage('Npm belum di isi!!!')
else if edt2.Text = '' then
   ShowMessage('Nama Lengkap Belum Diisi!!')
else if edt3.Text = '' then
   ShowMessage('Tempat Lahir Belum Di isi!!!')
else
begin
  dsMahasiswa.Append;
  dsMahasiswa.FieldValues['npm']:= edt1.Text;
  dsMahasiswa.FieldValues['nama_lengkap']:= edt2.Text;
  dsMahasiswa.FieldValues['prodi']:= rg1.Items[rg1.ItemIndex];
  dsMahasiswa.FieldValues['tanggal_lahir']:= dtp1.Date;
  dsMahasiswa.FieldValues['tempat_lahir']:= edt3.Text;
  dsMahasiswa.FieldValues['jenkel']:= rg2.Items[rg2.ItemIndex];
  dsMahasiswa.Post;
  ShowMessage('Data Mahasiswa berhasil ditambahkan!');
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
btn1.Enabled := True; //button tambah aktif
btn2.Enabled := False; //button ubah nonaktif
btn3.Enabled := False; //button hapus nonaktif

end;

end;
procedure TForm2.edt4Change(Sender: TObject);
begin
dsMahasiswa.Active:= False;
dsMahasiswa.CommandText := 'select * from mahasiswa where nama_lengkap like "%' + edt4.Text + '%"';
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
  ShowMessage('NPM belum diisi!')
else if edt2.Text = '' then
   ShowMessage('Nama Lengkap Belum Diisi!!')
else if edt3.Text = '' then
   ShowMessage('Tempat Lahir Belum Di isi!!!')
else
begin
  dsMahasiswa.Append;
  dsMahasiswa.FieldValues['npm']:= edt1.Text;
  dsMahasiswa.FieldValues['nama_lengkap']:= edt2.Text;
  dsMahasiswa.FieldValues['prodi']:= rg1.Items[rg1.ItemIndex];
  dsMahasiswa.FieldValues['tanggal_lahir']:= dtp1.Date;
  dsMahasiswa.FieldValues['tempat_lahir']:= edt3.Text;
  dsMahasiswa.FieldValues['jenkel']:= rg2.Items[rg2.ItemIndex];
  dsMahasiswa.Post;
  ShowMessage('Data Mahasiswa berhasil diperbaharui!');
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
btn1.Enabled := True; //button tambah aktif
btn2.Enabled := False; //button ubah nonaktif
btn3.Enabled := False; //button hapus nonaktif

end;

end;
procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
var
  prodi, jenkel:string;
begin
edt1.Text:= ds1.FieldValues['npm'];
edt2.Text:= ds1.FieldValues['nama_lengkap'];
prodi := ds1.FieldValues['prodi'];
if prodi = 'Teknik Informatika' then
  rg1.ItemIndex := 0
else
  rg1.ItemIndex := 1;
  dtp1.date := ds1.FieldValues['tanggal_lahir'];
  edt3.Text := ds1.FieldValues['tempat_lahir'];
  jenkel := ds1.FieldValues['jenkel'];
if jenkel = 'Pria' then
  rg2.ItemIndex := 0
else
  rg2.ItemIndex := 1;
  btn1.Enabled := false;
  btn2.Enabled := true;
  btn3.Enabled := true;

end;
end;

end.
