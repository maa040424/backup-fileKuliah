program Project1;

uses
  Forms,
  projek3 in 'projek3.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in '..\PROJECT3\Unit3.pas' {Form3},
  Unit4 in '..\PROJECT3\Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
