unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
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
begin
  ShowMessage('Ini messagebox menggunakan ShowMessage');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  MessageDlg('Ini messagebox menggunakan messageDlg dengan tipe mtInformation',
  mtInformation, [mbOK], 0);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 MessageDlg('Ini messagebox menggunakan messageDlg dengan tipe mtWarning dan tombol OK Cancel',
 mtWarning, [mbOK, mbCancel], 0);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
 MessageDlg('Ini messageDlg dengan tipe mtError dan tombol Yes No Cancle',
 mtError, [mbYes, mbNo, mbCancel], 0);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 MessageDlg('Ini messageDlg dengan tipe Confirmation dan button OK Cancel Retry',
 mtConfirmation, [mbOK, mbCancel, mbRetry], 0);
end;

end.
