program ProjectToko;

uses
  Vcl.Forms,
  Umenuutama in 'Umenuutama.pas' {FormMenuUtama},
  Ubarangmasuk in 'Ubarangmasuk.pas' {FormBarangMasuk};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormBarangMasuk, FormBarangMasuk);
  Application.Run;
end.
