unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    lbl5: TLabel;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl6: TLabel;
    lbl7: TLabel;
    edt5: TEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
var
  p, l, t, hasil, hasil2 : Real;
begin
if edt1.Text = '' then
  begin
    MessageDlg('Inputan tidak boleh kosong !!!', mtWarning, [mbOK], 0);

  end
  else  if edt2.Text = '' then
  begin
    MessageDlg('Inputan tidak boleh kosong !!!', mtWarning, [mbOK], 0);
  end
  else  if edt3.Text = '' then
  begin
    MessageDlg('Inputan tidak boleh kosong !!!', mtWarning, [mbOK], 0);
  end
  else
  begin


 p:= StrToFloat(edt1.text);
 l:= StrToFloat(edt2.text);
 t:= StrToFloat(edt3.text);
 hasil := p*l*t;
 edt4.Text:= FloatToStr(hasil);
 hasil2 := 2*(p*l+p*t+l*t);
 edt5.Text := FloatToStr(hasil2);
end;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
edt1.Text := ' ';
  edt2.Text := ' ';
  edt3.Text := ' ';
  edt4.Text:=' ';
  edt5.Text := '';
end;

procedure TForm4.edt1KeyPress(Sender: TObject; var Key: Char);
begin
if not ( Key in ['0'..'9', #8 {backspace}, #13 {enter}]) then
    begin
      Key := #0; // clear inputan
      MessageDlg(' Tolong Input Angka Saja', mtError, [mbOK], 0);
    end;
end;

procedure TForm4.edt2KeyPress(Sender: TObject; var Key: Char);
begin
if not ( Key in ['0'..'9', #8 {backspace}, #13 {enter}]) then
    begin
      Key := #0; // clear inputan
      MessageDlg(' Tolong Input Angka Saja', mtError, [mbOK], 0);
    end;
end;

procedure TForm4.edt3KeyPress(Sender: TObject; var Key: Char);
begin
if not ( Key in ['0'..'9', #8 {backspace}, #13 {enter}]) then
    begin
      Key := #0; // clear inputan
      MessageDlg(' Tolong Input Angka Saja', mtError, [mbOK], 0);
    end;
end;

procedure TForm4.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
resize:= False;
end;

end.
