unit Ubarangkeluar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.ComCtrls;

type
  Tbarangkeluar = class(TForm)
    ADOToko: TADOConnection;
    TabelBarangKeluar: TADOTable;
    Label1: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    DateTimePicker1: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
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
  barangkeluar: Tbarangkeluar;

implementation

{$R *.dfm}

procedure Tbarangkeluar.Button1Click(Sender: TObject);
begin
TabelBarangkeluar.Insert;
end;

procedure Tbarangkeluar.Button2Click(Sender: TObject);
begin
TabelBarangkeluar.Insert;
end;

procedure Tbarangkeluar.Button3Click(Sender: TObject);
begin
TabelBarangkeluar.Edit;
end;

procedure Tbarangkeluar.Button4Click(Sender: TObject);
begin
TabelBarangkeluar.Delete;
end;

procedure Tbarangkeluar.Button5Click(Sender: TObject);
begin
TabelBarangkeluar.Cancel;
end;

procedure Tbarangkeluar.Button6Click(Sender: TObject);
begin
TabelBarangkeluar.Close;
end;

end.
