program callform;

uses
  Forms,
  mainmenu in 'mainmenu.pas' {Form1},
  projek3 in '..\projek3\projek3.pas' {Biodata};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TBiodata, Biodata);
  Application.Run;
end.
