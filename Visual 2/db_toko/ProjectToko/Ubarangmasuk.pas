unit Ubarangmasuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Grids, Vcl.DBGrids, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFormBarangMasuk = class(TForm)
    TableBarangMasuk: TADOTable;
    TableBarangMasukid_barang_masuk: TAutoIncField;
    TableBarangMasukkode_barang: TWideStringField;
    TableBarangMasuknama_barang: TWideStringField;
    TableBarangMasukjenis_barang: TWideStringField;
    TableBarangMasukjumlah: TWideStringField;
    TableBarangMasuktanggal_masuk: TDateField;
    kode_barang: TEdit;
    Lkode_barang: TLabel;
    Edit2: TEdit;
    Lnama_barang: TLabel;
    Edit3: TEdit;
    Ljenis_barang: TLabel;
    Edit4: TEdit;
    Ljumlah: TLabel;
    Ltanggal_masuk: TLabel;
    dsBarangMasuk: TDataSource;
    DateTimePicker1: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    tambah: TButton;
    simpan: TButton;
    ubah: TButton;
    hapus: TButton;
    batal: TButton;
    keluar: TButton;
    DBGrid1: TDBGrid;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    PrintDialog1: TPrintDialog;
    procedure tambahClick(Sender: TObject);
    procedure simpanClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarangMasuk: TFormBarangMasuk;

implementation

uses Umenuutama, Ustok;

{$R *.dfm}

procedure TFormBarangMasuk.batalClick(Sender: TObject);
begin
  TableBarangMasuk.Cancel;
end;

procedure TFormBarangMasuk.hapusClick(Sender: TObject);
begin
  TableBarangMasuk.Delete;
end;

procedure TFormBarangMasuk.keluarClick(Sender: TObject);
begin
  FormBarangMasuk.Close;
end;

procedure TFormBarangMasuk.simpanClick(Sender: TObject);
begin
  TableBarangMasuk.Post;
  FormStok.TableStok.Requery();
end;

procedure TFormBarangMasuk.tambahClick(Sender: TObject);
begin
  TableBarangMasuk.Insert;
  FormStok.TableStok.Requery();
end;

procedure TFormBarangMasuk.ubahClick(Sender: TObject);
begin
  TableBarangMasuk.Edit;
end;

end.
