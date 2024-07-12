unit Umainmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus, Ukamar, Ureservasi, Upembayaran, Utamu, Ulaporan;

type
  TFormMenuUtama = class(TForm)
    MainMenu1: TMainMenu;
    ActionMainMenuBar1: TActionMainMenuBar;
    kamar: TMenuItem;
    reservasi: TMenuItem;
    pembayaran: TMenuItem;
    tamu: TMenuItem;
    laporan: TMenuItem;
    Laporan1: TMenuItem;
    procedure kamarClick(Sender: TObject);
    procedure reservasiClick(Sender: TObject);
    procedure pembayaranClick(Sender: TObject);
    procedure tamuClick(Sender: TObject);
    procedure laporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation

{$R *.dfm}

// Event-handler untuk item-menu "Kamar"
procedure TFormMenuUtama.kamarClick(Sender: TObject);
begin
  if not Assigned(FormKamar) then // Memeriksa apakah form sudah dibuat sebelumnya
    FormKamar := TFormKamar.Create(Application); // Jika belum, maka buat instance baru dari form Kamar

  FormKamar.Show; // Menampilkan form Kamar
end;

// Event-handler untuk item-menu "Reservasi"
procedure TFormMenuUtama.reservasiClick(Sender: TObject);
begin
  if not Assigned(FormReservasi) then
    FormReservasi := TFormReservasi.Create(Application);

  FormReservasi.Show;
end;

// Event-handler untuk item-menu "Pembayaran"
procedure TFormMenuUtama.pembayaranClick(Sender: TObject);
begin
  if not Assigned(FormPembayaran) then
    FormPembayaran := TFormPembayaran.Create(Application);

  FormPembayaran.Show;
end;

// Event-handler untuk item-menu "Manajemen Tamu"
procedure TFormMenuUtama.tamuClick(Sender: TObject);
begin
  if not Assigned(FormTamu) then
    FormTamu := TFormTamu.Create(Application);

  FormTamu.Show;
end;

// Event-handler untuk item-menu "Laporan"
procedure TFormMenuUtama.laporanClick(Sender: TObject);
begin
  if not Assigned(FormLaporan) then
    FormLaporan := TFormLaporan.Create(Application);

  FormLaporan.Show;
end;

end.

