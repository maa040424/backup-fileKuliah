unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    dbgrd1: TDBGrid;
    ds1: TADODataSet;
    tbl1: TADOTable;
    ds2: TDataSource;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    dtp1: TDateTimePicker;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  ds1.Append;
  ds1.FieldValues['npm'] := edt1.Text;
  ds1.FieldValues['nama_lengkap'] := edt2.Text;
  ds1.FieldValues['alamat'] := edt3.Text;
  ds1.FieldValues['prodi'] := edt4.Text;
  ds1.FieldValues['tanggal_lahir'] := dtp1.Date;
  ds1.Post;
end;

end.
