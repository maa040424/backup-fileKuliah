unit Ubarangmasuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFormBarangMasuk = class(TForm)
    barang_masuk: TADOTable;
    barang_masukid_barang_masuk: TAutoIncField;
    barang_masukkode_barang: TWideStringField;
    barang_masuknama_barang: TWideStringField;
    barang_masukjenis_barang: TWideStringField;
    barang_masukjumlah: TWideStringField;
    barang_masuktanggal_masuk: TDateField;
    dsBarangMasuk: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarangMasuk: TFormBarangMasuk;

implementation

{$R *.dfm}

uses Umenuutama;

end.
