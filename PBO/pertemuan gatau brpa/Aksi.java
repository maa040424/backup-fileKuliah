public class Aksi {
    public static void main(String[] args) {
        Buku buku1 = new Buku();
        Buku buku2 = new Buku("Judul B", "Pengarang B", 1985, 500, "Fiksi");
        Buku buku3 = new Buku("Judul C", "Pengarang C", 2000, 300, "Non-Fiksi");

        buku1.judul = "Buku Terbaik";
        buku1.pengarang = "Pengarang A";
        buku1.tahunTerbit = 1980;
        buku1.jumlahHalaman = 1000;
        buku1.genre = "Sejarah";

        buku1.tampilkanInfo();
        buku2.tampilkanInfo();
        buku3.tampilkanInfo();
    }
}
