unit Umenuutama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormMenuUtama = class(TForm)
    MainMenu1: TMainMenu;
    BarangMasuk1: TMenuItem;
    Stok1: TMenuItem;
    BarangKeluar1: TMenuItem;
    adf1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation

{$R *.dfm}

end.
