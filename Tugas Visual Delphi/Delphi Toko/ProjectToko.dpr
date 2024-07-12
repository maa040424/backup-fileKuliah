program ProjectToko;

uses
  Vcl.Forms,
  Umenuutama in 'Umenuutama.pas' {FormMenuUtama},
  Ubarangmasuk in 'Ubarangmasuk.pas' {FormBarangMasuk},
  Stok in 'Stok.pas' {Ustok},
  Ubarangkeluar in 'Ubarangkeluar.pas' {barangkeluar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormBarangMasuk, FormBarangMasuk);
  Application.CreateForm(TUstok, Ustok);
  Application.CreateForm(Tbarangkeluar, barangkeluar);
  Application.Run;
end.
