unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    eCelcius: TEdit;
    eFahrenheit: TEdit;
    btnKonversi: TButton;
    btnUlang: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure btnKonversiClick(Sender: TObject);
    procedure btnUlangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnKonversiClick(Sender: TObject);
var
  c,f:Double;
begin
 c:=StrToFloat(eCelcius.text);
 f:=(1.8*c)+32;
 eFahrenheit.Text:=FloatToStr(f);
end;

procedure TForm2.btnUlangClick(Sender: TObject);
begin
 eCelcius.Text:='';
 eFahrenheit.Text:='';
end;

end.
