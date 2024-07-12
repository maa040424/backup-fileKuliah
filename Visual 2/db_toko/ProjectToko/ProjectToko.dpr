program ProjectToko;

uses
  Vcl.Forms,
  Umenuutama in 'Umenuutama.pas' {FormMenuUtama},
  Ubarangmasuk in 'Ubarangmasuk.pas' {FormBarangMasuk},
  Ubarangkeluar in 'Ubarangkeluar.pas' {FormBarangKeluar},
  Ustok in 'Ustok.pas' {FormStok};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormBarangMasuk, FormBarangMasuk);
  Application.CreateForm(TFormBarangKeluar, FormBarangKeluar);
  Application.CreateForm(TFormStok, FormStok);
  Application.Run;
end.
