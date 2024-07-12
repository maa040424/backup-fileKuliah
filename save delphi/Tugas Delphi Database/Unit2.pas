unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
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
    lbl8: TLabel;
    edt4: TEdit;
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TADODataSet;
    ds2: TDataSource;
    dbgrd1: TDBGrid;
    btn5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btn5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

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

procedure TForm2.btn1Click(Sender: TObject);
begin
if edt1.Text = '' then
   ShowMessage('Npm belum di isi!!!')
else if edt2.Text = '' then
   ShowMessage('Nama Lengkap Belum Diisi!!')
else if edt3.Text = '' then
   ShowMessage('Tempat Lahir Belum Di isi!!!')
else
begin
  ds1.Append;
  ds1.FieldValues['npm']:= edt1.Text;
  ds1.FieldValues['nama_lengkap']:= edt2.Text;
  ds1.FieldValues['prodi']:= rg1.Items[rg1.ItemIndex];
  ds1.FieldValues['tanggal_lahir']:= dtp1.Date;
  ds1.FieldValues['tempat_lahir']:= edt3.Text;
  ds1.FieldValues['jenkel']:= rg2.Items[rg2.ItemIndex];
  ds1.Post;
  ShowMessage('Data Mahasiswa berhasil ditambahkan!');
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
btn1.Enabled := True; //button tambah aktif
btn2.Enabled := False; //button ubah nonaktif
btn3.Enabled := False; //button hapus nonaktif

end
end;

procedure TForm2.edt4Change(Sender: TObject);
begin
ds1.Active:= False;
ds1.CommandText := 'select * from mahasiswa where nama_lengkap like "%' + edt4.Text + '%"';
ds1.Active := True;
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
  ds1.Append;
  ds1.FieldValues['npm']:= edt1.Text;
  ds1.FieldValues['nama_lengkap']:= edt2.Text;
  ds1.FieldValues['prodi']:= rg1.Items[rg1.ItemIndex];
  ds1.FieldValues['tanggal_lahir']:= dtp1.Date;
  ds1.FieldValues['tempat_lahir']:= edt3.Text;
  ds1.FieldValues['jenkel']:= rg2.Items[rg2.ItemIndex];
  ds1.Post;
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
  else if jenkel = 'Wanita' then
    rg2.ItemIndex := 1
  else
    rg2.ItemIndex := -1;

  btn1.Enabled := false;
  btn2.Enabled := true;
  btn3.Enabled := true;
end;

procedure TForm2.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;

end;

procedure TForm2.btn5Click(Sender: TObject);
begin
Form2.Close;
form1.show;
end;

end.
