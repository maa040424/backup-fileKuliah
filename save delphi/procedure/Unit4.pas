unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    img1: TImage;
    btn2: TButton;
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl2: TLabel;
    edt2: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
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
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
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
  R := StrToFloat(edt1.Text);
  C := (5/4) * R;
StrC := FormatFloat('#.##', C);
edt3.Text := strC;
  F :=  (9/4) * R + 32;
  K := (5/4) * R + 273.15;
StrR := FormatFloat('#.##', F);
edt2.Text := strR;
StrK := FormatFloat('#.##', K);
edt4.Text := strK;
  except;
 end;
end;
end;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
edt1.Text := ' ';
  edt3.Text := ' ';
  edt2.Text := ' ';
  edt4.Text:=' ';
end;

procedure TForm4.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

end.
