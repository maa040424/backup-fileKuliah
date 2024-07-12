unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    edt3: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl9: TLabel;
    lbl10: TLabel;
    lblname: TLabel;
    lblnpm: TLabel;
    pnl3: TPanel;
    lbl11: TLabel;
    lblhasil: TLabel;
    lblket: TLabel;
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
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  kehadiran, tugas, uts, uas : Integer;
  nilaiAkhir : Double;
  nilaiHuruf : string;


begin
  if (edt1.Text = '') or (edt2.Text = '') then
  begin
    MessageDlg('Inputan Tidak Boleh Kosong !!!', mtWarning, [mbOK], 0);
  end
  else
  begin
    lblname.Caption := edt1.Text;
    lblnpm.Caption := edt2.Text;

    kehadiran := StrToInt(edt3.Text);
    tugas := StrToInt(edt4.Text);
    uts := StrToInt(edt5.Text);
    uas := StrToInt(edt6.Text);

    nilaiAkhir := (kehadiran * 0.1) + (tugas * 0.3) + (uts * 0.25) + (uas * 0.35);

    if (nilaiAkhir >= 80) and (nilaiAkhir <= 100) then
      nilaiHuruf := 'A'
    else if (nilaiAkhir >= 75) and (nilaiAkhir <= 79) then
      nilaiHuruf := 'B+'
    else if (nilaiAkhir >= 70) and (nilaiAkhir <= 74) then
      nilaiHuruf := 'B'
    else if (nilaiAkhir >= 65) and (nilaiAkhir <= 69) then
      nilaiHuruf := 'C+'
    else if (nilaiAkhir >= 60) and (nilaiAkhir <= 64) then
      nilaiHuruf := 'C'
    else if (nilaiAkhir >= 50) and (nilaiAkhir <= 59) then
      nilaiHuruf := 'D'
    else
      nilaiHuruf := 'E';

    lblhasil.Caption := nilaiHuruf;
    if nilaiAkhir <= 60 then
      lblket.Caption := 'LU NOOB'
    else
      lblket.Caption := 'LULUS';
  end;
  end;


procedure TForm2.btn2Click(Sender: TObject);
begin
edt1.Text := ' ';
  edt2.Text := ' ';
  edt3.Text := ' ';
  edt4.Text:= ' ';
  edt5.Text := ' ';
  edt6.Text := ' ';
  lblname.Caption := ' ';
  lblnpm.Caption := ' ';
  lblhasil.Caption := ' ';
  lblket.Caption := ' ';
end;

procedure TForm2.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

end.
