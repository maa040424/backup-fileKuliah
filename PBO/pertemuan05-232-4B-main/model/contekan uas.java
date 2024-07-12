// orangTua.java //
public class OrangTua {
    // Atribut
    private String nama;
    private int umur;

    // Konstruktor
    public OrangTua(String nama, int umur) {
        this.nama = nama;
        this.umur = umur;
    }

    // Method
    public void memperkenalkanDiri() {
        System.out.println("Halo, nama saya " + nama + ", umur saya " + umur + " tahun.");
    }

    // Getter dan Setter
    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public int getUmur() {
        return umur;
    }

    public void setUmur(int umur) {
        this.umur = umur;
    }
}
// orangTua.java//
//batas=============================//
//Anak.java//
public class Anak extends OrangTua {
    // Atribut khusus untuk kelas Anak
    private String sekolah;

    // Konstruktor
    public Anak(String nama, int umur, String sekolah) {
        super(nama, umur); // Memanggil konstruktor OrangTua
        this.sekolah = sekolah;
    }

    // Method overloading (metode yang sama dengan parameter berbeda)
    public void memperkenalkanDiri(String hobi) {
        super.memperkenalkanDiri(); // Memanggil method dari OrangTua
        System.out.println("Saya bersekolah di " + sekolah + " dan hobi saya adalah " + hobi + ".");
    }

    // Method overriding (menimpa method dari OrangTua)
    @Override
    public void memperkenalkanDiri() {
        super.memperkenalkanDiri();
        System.out.println("Saya bersekolah di " + sekolah + ".");
    }

    // Getter dan Setter
    public String getSekolah() {
        return sekolah;
    }

    public void setSekolah(String sekolah) {
        this.sekolah = sekolah;
    }
}
//Anak.java//
//batas=============================//
//Main.java//
public class Main {
    public static void main(String[] args) {
        // Membuat array dari objek OrangTua dan Anak
        OrangTua[] keluarga = new OrangTua[2];
        keluarga[0] = new OrangTua("Budi", 45);
        keluarga[1] = new Anak("Andi", 12, "SD Negeri 1");

        // Perulangan untuk memperkenalkan diri setiap anggota keluarga
        for (OrangTua anggota : keluarga) {
            anggota.memperkenalkanDiri();
            System.out.println();
        }

        // Contoh penggunaan method overloading
        Anak anak = new Anak("Siti", 10, "SD Negeri 2");
        anak.memperkenalkanDiri("bermain bola");
    }
}
//Main.java//
