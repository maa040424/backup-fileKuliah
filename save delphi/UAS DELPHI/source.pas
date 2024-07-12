unit UAS_2210010314;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    grp1: TGroupBox;
    grp2: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt_nama: TEdit;
    cbb1: TComboBox;
    edt_namob: TEdit;
    edt_biaya: TEdit;
    edt_plat: TEdit;
    edt_sewa: TEdit;
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    dtp1: TDateTimePicker;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TADOConnection;
    tbl1: TADOTable;
    ds1: TADODataSet;
    ds2: TDataSource;
    dbgrd1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
