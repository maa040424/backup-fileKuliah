unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
var
  F, c, r, K : Double;
  strF, strC, strR, strK : string;
begin

begin
  if edt1.Text = '' then
  begin
    MessageDlg('Inputan tidak boleh kosong !!!', mtWarning, [mbOK], 0);

  end
  else
  begin

  try
  F := StrToFloat(edt1.Text);
  C := (F - 32) * 5/9;
StrC := FormatFloat('#.##', C);
edt3.Text := strC;
  R := 4/9 * (F-32);
  K := (F + 459.67) * 5/9;
StrR := FormatFloat('#.##', R);
edt2.Text := strR;
StrK := FormatFloat('#.##', K);
edt4.Text := strK;
  except;
 end;
end;
end;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
edt1.Text := ' ';
  edt3.Text := ' ';
  edt2.Text := ' ';
  edt4.Text:=' ';
end;

procedure TForm3.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

end.
