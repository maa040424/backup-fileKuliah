unit Ubarangkeluar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.ComCtrls, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormBarangKeluar = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    TabelBarangKeluar: TADOTable;
    dsBarangKeluar: TDataSource;
    tambah: TButton;
    simpan: TButton;
    ubah: TButton;
    batal: TButton;
    keluar: TButton;
    hapus: TButton;
    DBGrid1: TDBGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    DateTimePicker1: TDateTimePicker;
    LinkControlToField5: TLinkControlToField;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
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
  FormBarangKeluar: TFormBarangKeluar;

implementation

uses Umenuutama, Ustok;

{$R *.dfm}

procedure TFormBarangKeluar.batalClick(Sender: TObject);
begin
  TabelBarangKeluar.Cancel;
end;

procedure TFormBarangKeluar.hapusClick(Sender: TObject);
begin
  TabelBarangKeluar.Delete;
end;

procedure TFormBarangKeluar.keluarClick(Sender: TObject);
begin
  FormBarangKeluar.Close;
end;

procedure TFormBarangKeluar.simpanClick(Sender: TObject);
begin
  TabelBarangKeluar.Post;
  FormStok.TableStok.Requery();
end;

procedure TFormBarangKeluar.tambahClick(Sender: TObject);
begin
  TabelBarangKeluar.Insert;
  FormStok.TableStok.Requery();
end;

procedure TFormBarangKeluar.ubahClick(Sender: TObject);
begin
  TabelBarangKeluar.Edit;
end;

end.
