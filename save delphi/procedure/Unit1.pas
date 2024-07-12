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
    procedure btn1Click(Sender: TObject);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  procedure login (); //buat procedure deklarasi login

implementation

uses Unit2;

{$R *.dfm}
procedure login();
var
  uname, pass : string; //variabel variabelnya
begin
uname := Form1.edt1.Text; // untuk inputan username
pass := Form1.edt2.Text; // untuk inputan password
if (uname = 'admin') and (pass = 'admin') then  //memasukan kondisi (and) jika kedua kondisi benar maka benar
begin
 MessageDlg('login Berhasil', mtInformation, [mbOK], 0 );
 Form2.Show;
end
else


begin
MessageDlg('Username Atau Password yang anda masukan salah', mtWarning, [mbOK], 0 );
end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
 login(); // memangil procedure login beserta syntax"nya
end;

procedure TForm1.edt2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then //#13 adalah tombol ENTER pada keyboard
begin
  login();
end;

end;
procedure TForm1.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;

end;

end.
