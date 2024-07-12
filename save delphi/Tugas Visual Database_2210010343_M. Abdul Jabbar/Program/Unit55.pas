unit Unit55;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edit2: TEdit;
    edit3: TEdit;
    edit4: TEdit;
    rg1: TRadioGroup;
    dtp1: TDateTimePicker;
    rg2: TRadioGroup;
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TADODataSet;
    ds2: TDataSource;
    dbgrd1: TDBGrid;
    lbl6: TLabel;
    edit5: TEdit;
    lbl8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if edit2.Text = '' then
  ShowMessage('NPM Harus Diisi!!')
else if edit3.Text = '' then
  ShowMessage('Nama lengkap Harus Diisi!!')
else if edit4.Text = '' then
  ShowMessage('Tempat Lahir Harus Diisi!!')
else
begin
  ds1.Append;
  ds1.FieldValues['NPM']:= edit2.Text;
  ds1.FieldValues['Nama_Lengkap']:= edit3.Text;
  ds1.FieldValues['Prodi']:= rg1.Items[rg1.ItemIndex];
  ds1.FieldValues['Tanggal_Lahir']:= dtp1.Date;
  ds1.FieldValues['Tempat_Lahir']:= edit4.Text;
  ds1.FieldValues['Jenis Kelamin']:= rg2.Items[rg2.ItemIndex];
  ds1.Post;

  ShowMessage('Data Berhasi Ditambah!!');
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  edit5.Clear;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
var
  prodi, jenkel:string;
begin
edit2.Text:= ds1.FieldValues['NPM'];
edit3.Text:= ds1.FieldValues['Nama_Lengkap'];
prodi:= ds1.FieldValues['Prodi'];

if prodi = 'Teknik Informatika' then
  rg1.ItemIndex:= 0
else
  rg1.ItemIndex:= 1;

dtp1.Date:= ds1.FieldValues['Tanggal_Lahir'];
edit4.Text:= ds1.FieldValues['Tempat_Lahir'];
jenkel:= ds1.FieldValues['Jenis Kelamin'];


if jenkel = 'Laki-laki' then
  rg2.ItemIndex:= 0
else
  rg2.ItemIndex:= 1;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edit2.Text = '' then
  ShowMessage('NPM Harus Diisi!!')
else if edit3.Text = '' then
  ShowMessage('Nama lengkap Harus Diisi!!')
else if edit4.Text = '' then
  ShowMessage('Tempat Lahir Harus Diisi!!')
else
begin
  ds1.Edit;
  ds1.FieldValues['NPM']:= edit2.Text;
  ds1.FieldValues['Nama_Lengkap']:= edit3.Text;
  ds1.FieldValues['Prodi']:= rg1.Items[rg1.ItemIndex];
  ds1.FieldValues['Tanggal_Lahir']:= dtp1.Date;
  ds1.FieldValues['Tempat_Lahir']:= edit4.Text;
  ds1.FieldValues['Jenis Kelamin']:= rg2.Items[rg2.ItemIndex];
  ds1.Post;

  ShowMessage('Data Berhasi Diperbaharui!!');
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  edit5.Clear;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if (MessageDlg('Ingin Menghapus Data Ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
begin
  ds1.Delete;
  ShowMessage('Data Mahasiswa Berhasil Dihapus!!');
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  edit5.Clear;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
end;

end;

procedure TForm1.edit5Change(Sender: TObject);
begin
ds1.Active:= False;
ds1.CommandText:= 'select * from mahasiswa where nama_lengkap like "%' + edit5.Text + '%"';
ds1.Active:= True;
end;

end.
