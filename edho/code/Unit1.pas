unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, Grids, DBGrids, DB, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edt1: TEdit;
    edt2: TEdit;
    rg1: TRadioGroup;
    dtp1: TDateTimePicker;
    edt3: TEdit;
    rg2: TRadioGroup;
    lbl8: TLabel;
    edt4: TEdit;
    con1: TADOConnection;
    tbl_mahasiswa: TADOTable;
    ds1: TDataSource;
    dsmahasiswa: TADODataSet;
    dbgrd1: TDBGrid;
    btn5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edt4Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 btn1.Enabled := True;
 btn2.Enabled := False;
 btn3.Enabled := False;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if edt1.Text = '' then
    ShowMessage('NPM belum diisi')
  else if edt2.Text = '' then
    ShowMessage('Nama lengkap belum diisi')
  else if edt3.Text = '' then
    ShowMessage('Tempat lahir belum diisi')
  else
  begin
    dsmahasiswa.Append;
    dsmahasiswa.FieldValues['npm'] := edt1.Text;
    dsmahasiswa.FieldValues['nama_lengkap'] := edt2.Text;
    dsmahasiswa.FieldValues['prodi'] :=rg1.Items[rg1.ItemIndex];
    dsmahasiswa.FieldValues['tanggal_lahir'] := dtp1.Date;
    dsmahasiswa.FieldValues['tempat_lahir'] := edt3.Text;
    dsmahasiswa.FieldValues['jenkel'] := rg2.Items[rg2.ItemIndex];
    dsmahasiswa.Post;
    ShowMessage('Data mahasiswa berhasail ditambahkan!');
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    btn1.Enabled := True;
    btn2.Enabled := False;
    btn3.Enabled := False;
  end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
var prodi, jenkel:string;
begin
  edt1.Text:= dsmahasiswa.FieldValues['npm'];
  edt2.Text:=dsmahasiswa.FieldValues['nama_lengkap'];
  prodi := dsmahasiswa.FieldValues['prodi'];
  if prodi = 'Teknik Informatika' then
    rg1.ItemIndex := 0
  else
    rg1.ItemIndex := 1;
    btn1.Enabled := False;
    btn2.Enabled := True;
    btn3.Enabled := True;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
   ShowMessage('NPM belum diisi!')
  else if edt2.Text = '' then
   ShowMessage('Nama lengkap belum diisi')
  else if edt3.Text = '' then
   ShowMessage('tempat lahir belum diisi!')
  else
  begin
    dsmahasiswa.Edit;
    dsmahasiswa.FieldValues['npm'] := edt1.Text;
    dsmahasiswa.FieldValues['nama_lengkap'] := edt2.Text;
    dsmahasiswa.FieldValues['prodi'] :=rg1.Items[rg1.ItemIndex];
    dsmahasiswa.FieldValues['tanggal_lahir'] := dtp1.Date;
    dsmahasiswa.FieldValues['tempat_lahir'] := edt3.Text;
    dsmahasiswa.FieldValues['jenkel'] := rg2.Items[rg2.ItemIndex];
    dsmahasiswa.Post;
    ShowMessage('Datamahasiswa berhasil diedit!');
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    btn1.Enabled := True;
    btn2.Enabled := False;
    btn3.Enabled := False;
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if (MessageDlg('Ingin hapus data ini ?', mtConfirmation, [mbYes, mbNo], 0) = mryes) then
  begin
    dsmahasiswa.Delete;
    ShowMessage('data mahasiswa berhasil diperbaharui');
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    btn1.Enabled := True;
    btn2.Enabled := False;
    btn3.Enabled := False; 
  end;
end;

procedure TForm1.edt4Change(Sender: TObject);
begin
  dsmahasiswa.active:= False;
  dsmahasiswa.CommandText := 'select * from mahasiswa where nama_lengkap like "%' + edt4.Text + '%"';
  dsmahasiswa.Active:= True;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  Form3.show;
end;

end.
