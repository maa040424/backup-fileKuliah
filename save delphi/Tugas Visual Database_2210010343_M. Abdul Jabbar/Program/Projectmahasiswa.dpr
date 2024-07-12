program Projectmahasiswa;

uses
  Forms,
  Unit55 in 'Unit55.pas' {Form1},
  Unit52 in 'Unit52.pas' {Form2},
  Unit53 in 'Unit53.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
