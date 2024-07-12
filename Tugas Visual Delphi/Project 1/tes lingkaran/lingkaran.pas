unit lingkaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
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
var
  r,k,l : Double;
begin


  r:= StrToFloat(edit1.text);
  k:= r*r*3.14;
  l:= 2*3.14*r;
edit2.text:= FloatToStr(k);
edit3.text:= FloatToStr(l);


end;

end.
