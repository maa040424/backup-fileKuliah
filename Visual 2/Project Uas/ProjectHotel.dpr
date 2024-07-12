program ProjectHotel;

uses
  Vcl.Forms,
  Umainmenu in 'Umainmenu.pas' {Form1},
  Ukamar in 'Ukamar.pas' {FormKamar},
  Ureservasi in 'Ureservasi.pas' {FormReservasi},
  Upembayaran in 'Upembayaran.pas' {FormPembayaran},
  Utamu in 'Utamu.pas' {FormTamu},
  Ulaporan in 'Ulaporan.pas' {FormLaporan};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormKamar, FormKamar);
  Application.CreateForm(TFormReservasi, FormReservasi);
  Application.CreateForm(TFormPembayaran, FormPembayaran);
  Application.CreateForm(TFormTamu, FormTamu);
  Application.CreateForm(TFormLaporan, FormLaporan);
  Application.Run;
end.
