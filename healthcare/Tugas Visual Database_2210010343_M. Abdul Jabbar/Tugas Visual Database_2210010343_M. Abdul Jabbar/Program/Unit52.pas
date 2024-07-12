unit Unit52;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit53, Unit55;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
Form1.Show;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
Form3.Show;
end;

end.
