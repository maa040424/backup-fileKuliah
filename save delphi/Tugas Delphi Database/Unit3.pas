unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    con1: TADOConnection;
    tbl1: TADOTable;
    dsDosen: TADODataSet;
    ds2: TDataSource;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl9: TLabel;
    edt5: TEdit;
    btn5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edt5Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 edt5.Clear;
 btn1.Enabled := True; //button tambah aktif
 btn2.Enabled := False; //button ubah nonaktif
 btn3.Enabled := False; //button hapus nonaktif
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
btn1.Enabled := True; //button tambah aktif
btn2.Enabled := False; //button ubah nonaktif
btn3.Enabled := False; //button hapus nonaktif
end;



procedure TForm3.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;

end;

procedure TForm3.btn1Click(Sender: TObject);
begin

if edt1.Text = '' then
  ShowMessage('NIDN Harus Diisi!!')
else if edt2.Text = '' then
  ShowMessage('Nama Dosen Harus Diisi!!')
else if edt3.Text = '' then
  ShowMessage('Alamat Harus Diisi!!')
else if edt4.Text = '' then
  ShowMessage('No Wa Harus Diisi!!')
else
begin
  dsDosen.Append;
  dsDosen.FieldValues['NIDN']:= edt1.Text;
  dsDosen.FieldValues['Nama_Dosen']:= edt2.Text;
  dsDosen.FieldValues['Tanggal_Masuk']:= dtp1.Date;
  dsDosen.FieldValues['Alamat']:= edt3.Text;
  dsDosen.FieldValues['No_Wa']:= edt4.Text;
  dsDosen.FieldValues['Agama']:= cbb1.Items[cbb1.ItemIndex];
  dsDosen.FieldValues['Status']:= rg1.Items[rg1.ItemIndex];
  dsDosen.Post;

  ShowMessage('Data Berhasi Ditambah!!');
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
end;
end;


procedure TForm3.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
  ShowMessage('NIDN Harus Diisi!!')
else if edt2.Text = '' then
  ShowMessage('Nama Dosen Harus Diisi!!')
else if edt3.Text = '' then
  ShowMessage('Alamat Harus Diisi!!')
else if edt4.Text = '' then
  ShowMessage('No Wa Harus Diisi!!')
else
begin
  dsDosen.Append;
  dsDosen.FieldValues['NIDN']:= edt1.Text;
  dsDosen.FieldValues['Nama_Dosen']:= edt2.Text;
  dsDosen.FieldValues['Tanggal_Masuk']:= dtp1.Date;
  dsDosen.FieldValues['Alamat']:= edt3.Text;
  dsDosen.FieldValues['No_Wa']:= edt4.Text;
  dsDosen.FieldValues['Agama']:= cbb1.Items[cbb1.ItemIndex];
  dsDosen.FieldValues['Status']:= rg1.Items[rg1.ItemIndex];
  dsDosen.Post;

  ShowMessage('Data Berhasi Ditambah!!');
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
end;
end;



procedure TForm3.btn3Click(Sender: TObject);
begin
if (MessageDlg('Ingin Menghapus Data Ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
begin
  dsDosen.Delete;
  ShowMessage('Data Mahasiswa Berhasil Dihapus!!');
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
end;

end;

procedure TForm3.edt5Change(Sender: TObject);
begin
dsDosen.Active:= False;
dsDosen.CommandText:= 'select * from Dosen where nama_dosen like "%' + edt4.Text + '%"';
dsDosen.Active:= True;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
var
  agama, status:string;
begin
edt1.Text:= dsDosen.FieldValues['NIDN'];
edt2.Text:= dsDosen.FieldValues['Nama_Dosen'];
dtp1.Date:= dsDosen.FieldValues['Tanggal_Masuk'];
edt3.Text:= dsDosen.FieldValues['Alamat'];

agama:= dsDosen.FieldValues['Agama'];

if agama = 'Islam' then
  cbb1.ItemIndex:= 0
else if agama = 'Kristen' then
  cbb1.ItemIndex:= 1
else if agama = 'Katolik' then
  cbb1.ItemIndex:= 2
else if agama = 'Hindu' then
  cbb1.ItemIndex:= 3
else if agama = 'Budha' then
  cbb1.ItemIndex:= 4
else
  cbb1.ItemIndex:= 5;


edt4.Text:= dsDosen.FieldValues['No_Wa'];

status:= dsDosen.FieldValues['Status'];

if status = 'PNS' then
  rg1.ItemIndex:= 0
else
  rg1.ItemIndex:= 1;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= True;
end;


procedure TForm3.btn5Click(Sender: TObject);
begin
Form3.Close;
form1.show;
end;

end.
