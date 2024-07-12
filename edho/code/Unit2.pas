unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ADODB, DB, StdCtrls, ExtCtrls, ComCtrls;

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
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    dtp1: TDateTimePicker;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TDataSource;
    ds2: TADODataSet;
    dbgrd1: TDBGrid;
    lbl9: TLabel;
    edt6: TEdit;
    btn5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  if edt1.Text = '' then
    ShowMessage('NIDN belum diisi !')
  else if edt2.Text = '' then
    ShowMessage('Nama belum diisi !')
  else if edt3.Text = '' then
    ShowMessage('alamat belum diisi !')
  else if edt4.Text = '' then
    ShowMessage('Nomor WA belum diisi !')
  else if edt5.Text = '' then
    ShowMessage('Agama belum diisi')
  else
  begin
    ds2.Append;
    ds2.FieldValues['NIDN'] := edt1.Text;
    ds2.FieldValues['nama_dosen'] := edt2.Text;
    ds2.FieldValues['tanggal_masuk'] := dtp1.Date;
    ds2.FieldValues['alamat'] := edt3.Text;
    ds2.FieldValues['no_wa'] := edt4.Text;
    ds2.FieldValues['agama'] := edt5.Text;
    ds2.FieldValues['status'] := rg1.Items[rg1.ItemIndex];
    ds2.Post;
    ShowMessage('Data dosen berhasil ditambahkan');
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    edt5.Clear;
    btn1.Enabled := True;
    btn2.Enabled := False;
    btn3.Enabled := False;
  end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
var status:string;
begin
  edt1.Text:= ds2.FieldValues['NIDN'];
  edt2.Text:= ds2.FieldValues['nama_dosen'];
  dtp1.Date:= ds2.FieldValues['tanggal_lahir'];
  edt3.Text:= ds2.FieldValues['alamat'];
  edt4.Text:= ds2.FieldValues['no_wa'];
  edt5.Text:= ds2.FieldValues['agama'];
  status:= ds2.FieldValues['status'];
  if status = 'PNS' then
   rg1.ItemIndex := 0
  else
   rg1.ItemIndex := 1;
   btn1.Enabled := False;
   btn2.Enabled := True;
   btn3.Enabled := True;

end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
    ShowMessage('NIDN belum diisi !')
  else if edt2.Text = '' then
    ShowMessage('Nama belum diisi !')
  else if edt3.Text = '' then
    ShowMessage('alamat belum diisi !')
  else if edt4.Text = '' then
    ShowMessage('Nomor WA belum diisi !')
  else if edt5.Text = '' then
    ShowMessage('Agama belum diisi')
  else
  begin
    ds2.Edit;
    ds2.FieldValues['NIDN'] := edt1.Text;
    ds2.FieldValues['nama_dosen'] := edt2.Text;
    ds2.FieldValues['tanggal_masuk'] := dtp1.Date;
    ds2.FieldValues['alamat'] := edt3.Text;
    ds2.FieldValues['no_wa'] := edt4.Text;
    ds2.FieldValues['agama'] := edt5.Text;
    ds2.FieldValues['status'] := rg1.Items[rg1.ItemIndex];
    ds2.Post;
    ShowMessage('Data dosen berhasil ditambahkan');
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    edt5.Clear;
    btn1.Enabled := True;
    btn2.Enabled := False;
    btn3.Enabled := False;
  end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  if(MessageDlg('Yakin ingin menghapus data ini ?', mtConfirmation, [mbYes, mbNo], 0) = mryes) then
  begin
    ds2.delete;
    ShowMessage('Data dosen ini berhasil dihapus');
    edt1.Clear;
    edt2.Clear;
    edt3.Clear;
    edt4.Clear;
    edt5.Clear;
    btn1.Enabled := True;
    btn2.Enabled := False;
    btn3.Enabled := False;
  end;
end;

procedure TForm2.edt6Change(Sender: TObject);
begin
ds2.Active:= False;
ds2.CommandText:= 'select * from Dosen where nama_dosen like "%' + edt6.Text + '%"';
ds2.Active:= True;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  Form3.show;
end;

end.
