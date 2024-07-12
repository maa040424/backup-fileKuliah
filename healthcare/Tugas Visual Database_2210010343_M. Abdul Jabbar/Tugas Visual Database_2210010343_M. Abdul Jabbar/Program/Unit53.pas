unit Unit53;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edit2: TEdit;
    edit3: TEdit;
    edit4: TEdit;
    edit5: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    grp2: TGroupBox;
    lbl9: TLabel;
    edit6: TEdit;
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TADODataSet;
    ds2: TDataSource;
    dbgrd1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure edit6Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;

btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
if edit2.Text = '' then
  ShowMessage('NIDN Harus Diisi!!')
else if edit3.Text = '' then
  ShowMessage('Nama Dosen Harus Diisi!!')
else if edit4.Text = '' then
  ShowMessage('Alamat Harus Diisi!!')
else if edit5.Text = '' then
  ShowMessage('No Wa Harus Diisi!!')
else
begin
  ds1.Append;
  ds1.FieldValues['NIDN']:= edit2.Text;
  ds1.FieldValues['Nama_Dosen']:= edit3.Text;
  ds1.FieldValues['Tanggal_Masuk']:= dtp1.Date;
  ds1.FieldValues['Alamat']:= edit4.Text;
  ds1.FieldValues['No_Wa']:= edit5.Text;
  ds1.FieldValues['Agama']:= cbb1.Items[cbb1.ItemIndex];
  ds1.FieldValues['Status']:= rg1.Items[rg1.ItemIndex];
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

procedure TForm3.btn3Click(Sender: TObject);
begin
if (MessageDlg('Ingin Menghapus Data Ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
begin
  ds1.Delete;
  ShowMessage('Data Mahasiswa Berhasil Dihapus!!');
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  edit5.Clear;
  edit6.Clear;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
end;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
var
  agama, status:string;
begin
edit2.Text:= ds1.FieldValues['NIDN'];
edit3.Text:= ds1.FieldValues['Nama_Dosen'];
dtp1.Date:= ds1.FieldValues['Tanggal_Masuk'];
edit4.Text:= ds1.FieldValues['Alamat'];

agama:= ds1.FieldValues['Agama'];

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


edit5.Text:= ds1.FieldValues['No_Wa'];

status:= ds1.FieldValues['Status'];

if status = 'PNS' then
  rg1.ItemIndex:= 0
else
  rg1.ItemIndex:= 1;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if edit2.Text = '' then
  ShowMessage('NIDN Harus Diisi!!')
else if edit3.Text = '' then
  ShowMessage('Nama Dosen Harus Diisi!!')
else if edit4.Text = '' then
  ShowMessage('Alamat Harus Diisi!!')
else if edit5.Text = '' then
  ShowMessage('No Wa Harus Diisi!!')
else
begin
  ds1.Append;
  ds1.FieldValues['NIDN']:= edit2.Text;
  ds1.FieldValues['Nama_Dosen']:= edit3.Text;
  ds1.FieldValues['Tanggal_Masuk']:= dtp1.Date;
  ds1.FieldValues['Alamat']:= edit4.Text;
  ds1.FieldValues['No_Wa']:= edit5.Text;
  ds1.FieldValues['Agama']:= cbb1.Items[cbb1.ItemIndex];
  ds1.FieldValues['Status']:= rg1.Items[rg1.ItemIndex];
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

procedure TForm3.edit6Change(Sender: TObject);
begin
ds1.Active:= False;
ds1.CommandText:= 'select * from mahasiswa where nama_lengkap like "%' + edit5.Text + '%"';
ds1.Active:= True;
end;

end.
