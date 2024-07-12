unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    cbb1: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edt2Change(Sender: TObject);
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
  i : Integer;
begin

 for i:= StrToInt(edt1.Text) to StrToInt(edt2.Text) do
 cbb1.Items.Add('FOR TO DO' + ' ' + IntToStr(i))
 
end;

procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i : Integer;

begin
  i:= StrToInt(edt1.Text);
  while  i < StrToInt(edt2.Text) do
  begin
 cbb1.Items.Add('WHILE  DO' + ' ' + IntToStr(i));
 i:= i + 1;
 end;
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  i : Integer;
begin
  i:= StrToInt(edt1.Text);
  repeat

 cbb1.Items.Add('REPEAT UNTIL' + ' ' + IntToStr(i));
 i:= i + 1;
 until  (i >= StrToInt(edt2.Text))
end;

procedure TForm1.edt2Change(Sender: TObject);
begin
if edt2.Text = '' then
ShowMessage('Masukan Angka!!!');
end;

end.
