unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    cbb1: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    btn1: TButton;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
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
  input, km, hm, dam, m, dm, cm, mm: Double;
begin
  input := StrToFloat(edt1.Text);

  case cbb1.ItemIndex of
    0:
    begin
      km := input;
      edt2.Text := FloatToStr(km);

      hm := km * 10;
      edt3.Text := FloatToStr(hm);

      dam := km * 100;
      edt4.Text := FloatToStr(dam);

      m := km * 1000;
      edt5.Text := FloatToStr(m);

      dm := km * 10000;
      edt6.Text := FloatToStr(dm);

      cm := km * 100000;
      edt7.Text := FloatToStr(cm);

      mm := km * 1000000;
      edt8.Text := FloatToStr(mm);
    end;

    1:
    begin
      hm := input;
      edt2.Text := FloatToStr(hm);

      km := hm / 10;
      edt3.Text := FloatToStr(km);

      dam := hm * 10;
      edt4.Text := FloatToStr(dam);

      m := hm * 100;
      edt5.Text := FloatToStr(m);

      dm := hm * 1000;
      edt6.Text := FloatToStr(dm);

      cm := hm * 10000;
      edt7.Text := FloatToStr(cm);

      mm := hm * 100000;
      edt8.Text := FloatToStr(mm);
    end;

    2:
    begin
      dam := input;
      edt4.Text := FloatToStr(dam);

      km := dam / 100;
      edt2.Text := FloatToStr(km);

      hm := dam / 10;
      edt3.Text := FloatToStr(hm);

      m := dam * 10;
      edt5.Text := FloatToStr(m);

      dm := dam * 100;
      edt6.Text := FloatToStr(dm);

      cm := dam * 1000;
      edt7.Text := FloatToStr(cm);

      mm := dam * 10000;
      edt8.Text := FloatToStr(mm);
    end;

    3:
    begin
      m := input;
      edt5.Text := FloatToStr(m);

      km := m / 1000;
      edt2.Text := FloatToStr(km);

      hm := m / 100;
      edt3.Text := FloatToStr(hm);

      dam := m / 10;
      edt4.Text := FloatToStr(dam);

      dm := m * 10;
      edt6.Text := FloatToStr(dm);

      cm := m * 100;
      edt7.Text := FloatToStr(cm);

      mm := m * 1000;
      edt8.Text := FloatToStr(mm);
    end;

    4:
    begin
      dm := input;
      edt6.Text := FloatToStr(dm);

      km := dm / 10000;
      edt2.Text := FloatToStr(km);

      hm := dm / 1000;
      edt3.Text := FloatToStr(hm);

      dam := dm / 100;
      edt4.Text := FloatToStr(dam);

      m := dm / 10;
      edt5.Text := FloatToStr(m);

      cm := dm * 10;
      edt7.Text := FloatToStr(cm);

      mm := dm * 100;
      edt8.Text := FloatToStr(mm);
    end;

    5:
    begin
      cm := input;
      edt7.Text := FloatToStr(cm);
      km := cm / 100000;
      edt2.Text := FloatToStr(km);
        hm := cm / 10000;
  edt3.Text := FloatToStr(hm);

  dam := cm / 1000;
  edt4.Text := FloatToStr(dam);

  m := cm / 100;
  edt5.Text := FloatToStr(m);

  dm := cm / 10;
  edt6.Text := FloatToStr(dm);

  mm := cm * 10;
  edt8.Text := FloatToStr(mm);
end;

6:
begin
  mm := input;
  edt8.Text := FloatToStr(mm);

  km := mm / 1000000;
  edt2.Text := FloatToStr(km);

  hm := mm / 100000;
  edt3.Text := FloatToStr(hm);

  dam := mm / 10000;
  edt4.Text := FloatToStr(dam);

  m := mm / 1000;
  edt5.Text := FloatToStr(m);

  dm := mm / 100;
  edt6.Text := FloatToStr(dm);

  cm := mm / 10;
  edt7.Text := FloatToStr(cm);
end;

 end;    


end;

procedure TForm4.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

end.
