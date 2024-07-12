unit perpustakaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StrUtils;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    btn7: TButton;
    lbl4: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  status : string;

implementation

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
begin
btn3.enabled := False;
btn4.enabled := False;
btn5.enabled := False;
btn6.enabled := True;
edt1.enabled := False;
edt1.clear;
edt2.clear;
zqry1.Active := False;
zqry1.SQL.Text := 'select * from tb_penerbit';
zqry1.Active := True;
end;

procedure TForm1.btn6Click(Sender: TObject);
var
  kode : Integer;
begin
zqry1.Last;
if zqry1.IsEmpty then
  edt1.Text := 'p01'
else
  begin
    kode := StrToInt(rightstr(zqry1.Fields[0].AsString,2))+1;
    if kode < 10 then
       edt1.Text := 'P0' + IntToStr(kode)
    else
       edt1.Text := 'p'+inttostr(kode);
  end;
status := 'tambah';
edt2.Enabled:=True;
edt2.Clear;
btn5.Enabled:=True;
btn6.Enabled:=False;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
if status = 'tambah' then
   zqry1.Append
else
   zqry1.Edit;
   zqry1.Fields[0].AsString := edt1.Text;
   zqry1.Fields[1].AsString := edt2.Text;
   zqry1.Post;
   MessageDlg('Data Berhasil Disimpan',mtInformation,[mbOK],0);
   btn2Click(sender);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
btn6.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := True;
status := 'ubah';
edt1.Enabled := False;
edt2.Enabled := True;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 if (MessageDlg('Data Akan Dihapus, lanjutkan ?',mtConfirmation,[mbYes,mbNo],0))= mryes then
 begin
   zqry1.Delete;
   ShowMessage('Data Berhasil dihapus!');
   btn2Click(Sender);
 end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
 zqry1.Active:= False;
 zqry1.SQL.Text:='select * from tb_penerbit where nama_penerbit like "%'+edt3.text+'%"';
 zqry1.Active:= True;
 btn7Click(Sender);
end;


procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
btn4.Enabled := True;
btn3.Enabled := True;
btn5.Enabled := False;
btn6.Enabled := False;
edt1.Text := zqry1.Fields[0].AsString;
edt2.Text := zqry1.Fields[1].AsString;
end;

end.
