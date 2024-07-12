// Definisi Class
public class Mahasiswa {
    // Atribut
    private String nama;
    private int semester;
    private float nilaiAbsen;
    private int tugas;
    private int uts;
    private int uas;

    // Constructor
    public Mahasiswa(String nama, int semester, float nilaiAbsen, int tugas, int uts, int uas) {
        this.nama = nama;
        this.semester = semester;
        this.nilaiAbsen = nilaiAbsen;
        this.tugas = tugas;
        this.uts = uts;
        this.uas = uas;
    }

    // Method untuk menghitung nilai akhir
    public float hitungNilaiAkhir() {
        return (nilaiAbsen * 0.10f) + (tugas * 0.20f) + (uts * 0.30f) + (uas * 0.40f);
    }

    // Method untuk menentukan nilai abjad
    public String getNilaiAbjad() {
        float hasil = hitungNilaiAkhir();
        if (hasil >= 80) {
            return "A";
        } else if (hasil >= 75) {
            return "B+";
        } else if (hasil >= 70) {
            return "B";
        } else if (hasil >= 65) {
            return "C+";
        } else if (hasil >= 60) {
            return "C";
        } else if (hasil >= 55) {
            return "D";
        } else if (hasil >= 50) {
            return "E";
        } else {
            return "F";
        }
    }

    // Method untuk menentukan kelulusan
    public String getKelulusan() {
        return hitungNilaiAkhir() >= 60 ? "Lulus" : "Gagal";
    }

    // Method untuk menampilkan informasi mahasiswa
    public void tampilkanInfo() {
        System.out.println("Nama: " + nama);
        System.out.println("Semester: " + semester);
        System.out.println("Nilai Absen: " + nilaiAbsen);
        System.out.println("Nilai Tugas: " + tugas);
        System.out.println("Nilai UTS: " + uts);
        System.out.println("Nilai UAS: " + uas);
        System.out.println("Nilai Akhir: " + hitungNilaiAkhir());
        System.out.println("Nilai Abjad: " + getNilaiAbjad());
        System.out.println("Status Kelulusan: " + getKelulusan());
    }
}
