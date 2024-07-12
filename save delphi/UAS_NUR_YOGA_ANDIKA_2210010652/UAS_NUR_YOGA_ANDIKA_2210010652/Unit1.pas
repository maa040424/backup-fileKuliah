unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    RadioGroup1: TRadioGroup;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    lbl1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ds1: TADODataSet;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
var
  pilih : Integer;
begin
  pilih := ComboBox1.ItemIndex;

  case pilih of
    0:
    begin
      Edit2.Text := 'suite with breakfast';
      Edit3.Text := '950.000';
    end;
    1:
    begin
      Edit2.Text := 'suite without breakfast';
      Edit3.Text := '875.000';
    end;
    2:
    begin
      Edit2.Text := 'executive with';
      Edit3.Text := '850.000';
    end;
    3:
    begin
      Edit2.Text := 'executive without breakfast';
      Edit3.Text := '770.000';
    end;
    4:
    begin
      Edit2.Text := 'superior with breakfast';
      Edit3.Text := '590.000';
    end;
    5:
    begin
      Edit2.Text := 'superior without breakfast';
      Edit3.Text := '505.000';
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text := '';
  ComboBox1.ItemIndex := -1;
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Edit7.Text := '';
  Edit8.Text := '';
  RadioGroup1.ItemIndex := -1;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Subtotal, Diskon, Pajak, Total: Double;
  HargaPerMalam: Double;
  LamaMenginap: Integer;
begin
  // Mengambil nilai Lama Menginap dari komponen Edit
  LamaMenginap := StrToInt(Edit4.Text);

  // Menentukan Harga Per Malam berdasarkan kode tipe kamar yang dipilih
  case ComboBox1.ItemIndex of
    0:
      HargaPerMalam := 950000;
    1:
      HargaPerMalam := 875000;
    2:
      HargaPerMalam := 850000;
    3:
      HargaPerMalam := 770000;
    4:
      HargaPerMalam := 590000;
    5:
      HargaPerMalam := 505000;
  end;

  // Menghitung subtotal, diskon, pajak, dan total
  Subtotal := HargaPerMalam * LamaMenginap;
  Pajak := 0.11 * Subtotal;

  if Subtotal > 3000000 then
    Diskon := 0.1 * Subtotal
  else
    Diskon := 0;

  Total := Subtotal - Diskon + Pajak;

  // Menampilkan hasil perhitungan pada komponen Edit
  Edit5.Text := FloatToStr(Subtotal);
  Edit6.Text := FloatToStr(Diskon);
  Edit7.Text := FloatToStr(Pajak);
  Edit8.Text := FloatToStr(Total);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ShowMessage('Nama harus diisi!')
  else if Edit4.Text = '' then
    ShowMessage('Masukkan jumlah hari menginap!')
  else
  begin
    ds1.Append;
    ds1.FieldValues['Tanggal_penginap'] := DateTimePicker1.DateTime;
    ds1.FieldValues['Kode_tipe_kamar'] := ComboBox1.Items[ComboBox1.ItemIndex];
    ds1.FieldValues['Nama_penginap'] := Edit1.Text;
    ds1.FieldValues['Biaya_Per_malam'] := Edit3.Text;
    ds1.FieldValues['Nama_tipe_kamar'] := Edit2.Text;
    ds1.FieldValues['Lama_Menginap'] := Edit4.Text;
    ds1.FieldValues['Metode_pembayaran'] := RadioGroup1.Items[RadioGroup1.ItemIndex];
    ds1.FieldValues['SubTotal'] := Edit5.Text;
    ds1.FieldValues['Diskon'] := Edit6.Text;
    ds1.FieldValues['Pajak'] := Edit7.Text;
    ds1.FieldValues['Total_Keseluruhan'] := Edit8.Text;
    ds1.Post;
    ShowMessage('Berhasil menyimpan!');
    Button1Click(Sender);
  end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  if not ds1.Eof then
  begin
    Edit1.Text := ds1.FieldByName('Nama_penginap').AsString;
    ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(ds1.FieldByName('Kode_tipe_kamar').AsString);
    Edit2.Text := ds1.FieldByName('Nama_tipe_kamar').AsString;
    Edit3.Text := ds1.FieldByName('Biaya_Per_malam').AsString;
    Edit4.Text := ds1.FieldByName('Lama_Menginap').AsString;
    Edit5.Text := ds1.FieldByName('SubTotal').AsString;
    Edit6.Text := ds1.FieldByName('Diskon').AsString;
    Edit7.Text := ds1.FieldByName('Pajak').AsString;
    Edit8.Text := ds1.FieldByName('Total_Keseluruhan').AsString;
    RadioGroup1.ItemIndex := RadioGroup1.Items.IndexOf(ds1.FieldByName('Metode_pembayaran').AsString);
    DateTimePicker1.Date := ds1.FieldByName('Tanggal_penginap').AsDateTime;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    if Edit1.Text = '' then
    ShowMessage('Nama harus diisi!')
  else if Edit4.Text = '' then
    ShowMessage('Masukkan jumlah hari menginap!')
  else
  begin
    ds1.Edit;
    ds1.FieldValues['Tanggal_penginap'] := DateTimePicker1.DateTime;
    ds1.FieldValues['Kode_tipe_kamar'] := ComboBox1.Items[ComboBox1.ItemIndex];
    ds1.FieldValues['Nama_penginap'] := Edit1.Text;
    ds1.FieldValues['Biaya_Per_malam'] := Edit3.Text;
    ds1.FieldValues['Nama_tipe_kamar'] := Edit2.Text;
    ds1.FieldValues['Lama_Menginap'] := Edit4.Text;
    ds1.FieldValues['Metode_pembayaran'] := RadioGroup1.Items[RadioGroup1.ItemIndex];
    ds1.FieldValues['SubTotal'] := Edit5.Text;
    ds1.FieldValues['Diskon'] := Edit6.Text;
    ds1.FieldValues['Pajak'] := Edit7.Text;
    ds1.FieldValues['Total_Keseluruhan'] := Edit8.Text;
    ds1.Post;
    ShowMessage('Berhasil menyimpan!');
    Button1Click(Sender);
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if (MessageDlg('Data Akan Dihapus, lanjutkan ?', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
  begin
    ds1.Delete;
    ShowMessage('Data Berhasil dihapus!');
    Button1Click(Sender);
  end;
end;

end.

