unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    lblhasil: TLabel;
    lblhasil2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
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
  usia : Integer;

begin
    if (edt1.Text = '')  then
  begin
    MessageDlg('Inputan Tidak Boleh Kosong !!!', mtWarning, [mbOK], 0);
  end
  else
    begin


   usia := StrToInt(edt1.Text);
   case usia of
    0..5:
      lblhasil.Caption :=('Anda masih Balita');
    6..11:
      lblhasil.Caption :=('Anda masih Anak-Anak');
    12..16:
      lblhasil.Caption :=('Anda masih Remaja');
    17..35:
      lblhasil.Caption := ('Anda sudah Dewasa');
    36..60:
      lblhasil.Caption :=('Anda Orang Tua');
    61..90:
      lblhasil.Caption :=('Anda berada pada Fase Lansia');
  else
    lblhasil.Caption :=('Anda seorang SEPUH ');
    lblhasil2.Caption := ('SUNGKEM PUH');
  end;
  end;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
edt1.Text := ' ';
lblhasil.Caption := ' ';
lblhasil2.Caption :=' ';
end;

procedure TForm3.edt1KeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9', #8, #13]) then
  begin
    Key := #0; // menghapus inputan yang tidak valid
    MessageDlg('Tolong Input Angka Saja', mtError, [mbOK], 0);
  end;
end;

procedure TForm3.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

end.
