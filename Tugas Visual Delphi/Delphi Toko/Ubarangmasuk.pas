unit Ubarangmasuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Data.DB,
  Data.Win.ADODB, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TFormBarangMasuk = class(TForm)
    ADOToko: TADOConnection;
    ADOTabelBarangMasuk: TADOTable;
    ADOTabelBarangMasukid_barang_masuk: TAutoIncField;
    ADOTabelBarangMasukkode_barang: TWideStringField;
    ADOTabelBarangMasuknama_barang: TWideStringField;
    ADOTabelBarangMasukjenis_barang: TWideStringField;
    ADOTabelBarangMasukjumlah: TWideStringField;
    ADOTabelBarangMasuktanggal_masuk: TDateField;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    TblBarangMasuk: TDataSource;
    DateTimePicker1: TDateTimePicker;
    TabelBarangMasuk: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarangMasuk: TFormBarangMasuk;

implementation

{$R *.dfm}

procedure TFormBarangMasuk.Button1Click(Sender: TObject);
begin
TblBarangMasuk.Insert;
end;

procedure TFormBarangMasuk.Button2Click(Sender: TObject);
begin
TblBarangMasuk.Insert;
end;

procedure TFormBarangMasuk.Button3Click(Sender: TObject);
begin
TblBarangMasuk.Edit;

end;

procedure TFormBarangMasuk.Button4Click(Sender: TObject);
begin
TblBarangMasuk.Delete;

end;

procedure TFormBarangMasuk.Button5Click(Sender: TObject);
begin
TblBarangMasuk.Cancel;

end;

procedure TFormBarangMasuk.Button6Click(Sender: TObject);
begin
TblBarangMasuk.Close;

end;

end.
