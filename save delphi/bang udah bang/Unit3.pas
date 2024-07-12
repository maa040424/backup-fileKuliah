unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls, ComCtrls;

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
    pnl1: TPanel;
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
    dsDosen: TADODataSet;
    ds2: TDataSource;
    dbgrd1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure ds2DataChange(Sender: TObject; Field: TField);
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
btn1.Enabled := True; //button tambah aktif
btn2.Enabled := False; //button ubah nonaktif
btn3.Enabled := False; //button hapus nonaktif
end;



end.
