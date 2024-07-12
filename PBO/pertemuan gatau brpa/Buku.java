public class Buku {
    String judul;
    String pengarang;
    int tahunTerbit;
    int jumlahHalaman;
    String genre;

    Buku(String judul, String pengarang, int tahunTerbit, int jumlahHalaman, String genre) {
        this.judul = judul;
        this.pengarang = pengarang;
        this.tahunTerbit = tahunTerbit;
        this.jumlahHalaman = jumlahHalaman;
        this.genre = genre;
    }

    Buku() {
        this.judul = "";
        this.pengarang = "";
        this.tahunTerbit = 0;
        this.jumlahHalaman = 0;
        this.genre = "";
    }

    public void tampilkanInfo() {
        System.out.println("Judul Buku: " + judul);
        System.out.println("Pengarang: " + pengarang);
        System.out.println("Tahun Terbit: " + tahunTerbit);
        System.out.println("Jumlah Halaman: " + jumlahHalaman);
        System.out.println("Genre: " + genre);
    }
    public void ubahJudul(String judulBaru) {
        this.judul = judulBaru;
    }

    public void ubahPengarang(String pengarangBaru) {
        this.pengarang = pengarangBaru;
    }

    public void ubahJumlahHalaman(int jumlahBaru) {
        this.jumlahHalaman = jumlahBaru;
    }

    public void ubahGenre(String genreBaru) {
        this.genre = genreBaru;
}
}  
