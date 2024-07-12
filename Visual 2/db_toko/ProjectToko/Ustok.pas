unit Ustok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Printers, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormStok = class(TForm)
    DBGrid1: TDBGrid;
    dsStok: TDataSource;
    TableStok: TADOTable;
    TableStokkode_barang: TWideStringField;
    TableStoknama_barang: TWideStringField;
    TableStokjenis_barang: TWideStringField;
    TableStokstok: TWideStringField;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStok: TFormStok;

implementation

uses Umenuutama;

{$R *.dfm}

procedure TFormStok.Button1Click(Sender: TObject);
var
  i, j: Integer;
  CellText: string;
  ColWidth, RowHeight: Integer;
  X, Y: Integer;
begin
  Printer.BeginDoc;  // Mulai dokumen pencetakan
  try
    // Set ukuran kolom dan baris berdasarkan grid
    ColWidth := Printer.PageWidth div DBGrid1.Columns.Count;
    RowHeight := Printer.Canvas.TextHeight('W') + 10; // Mengatur tinggi baris berdasarkan tinggi teks

    X := 0; // Posisi X awal
    Y := 0; // Posisi Y awal

    // Mencetak header
    for i := 0 to DBGrid1.Columns.Count - 1 do
    begin
      Printer.Canvas.TextOut(X, Y, DBGrid1.Columns[i].Title.Caption);
      Inc(X, ColWidth);
    end;

    // Mencetak baris data
    DBGrid1.DataSource.DataSet.First; // Pindah ke record pertama
    Y := RowHeight; // Mengatur posisi Y untuk baris pertama

    while not DBGrid1.DataSource.DataSet.Eof do
    begin
      X := 0; // Reset posisi X untuk setiap baris baru
      for i := 0 to DBGrid1.Columns.Count - 1 do
      begin
        CellText := DBGrid1.Columns[i].Field.AsString;
        Printer.Canvas.TextOut(X, Y, CellText);
        Inc(X, ColWidth);
      end;
      Inc(Y, RowHeight); // Pindah ke baris berikutnya
      DBGrid1.DataSource.DataSet.Next; // Pindah ke record berikutnya
    end;

  finally
    Printer.EndDoc;  // Selesai dokumen pencetakan
  end;
end;


end.

