import java.util.Scanner;

public class tesJava {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Masukan Nama :");
        String nama = scanner.nextLine();
        
        System.out.println("Semester :");
        int semester = scanner.nextInt();
        
        System.out.println("Nilai Absen :");
        float nilaiAbsen = scanner.nextFloat();
        
        System.out.println("Nilai Tugas :");
        int tugas = scanner.nextInt();
        
        System.out.println("Nilai UTS :");
        int uts = scanner.nextInt();
        
        System.out.println("Nilai UAS :");
        int uas = scanner.nextInt();
        
        float hasil = (nilaiAbsen* 0.10f) + (tugas * 0.20f) + (uts * 0.30f) + (uas * 0.40f);
        int nilai = (int)hasil;
                        
        System.out.println("Nama Anda :" + nama);
        System.out.println("Anda Berada Di Semester :" + semester);
        System.out.println("Nilai Absen Anda :" + nilaiAbsen);
        System.out.println("Nilai Tugas Anda :" + tugas);
        System.out.println("Nilai UTS Anda :" + uts);
        System.out.println("Nilai UAS Anda :" + uas);
        if (hasil >= 80){
            System.out.println("Nilai Abjad Anda : A");
        } else if (hasil >=75){
            System.out.println("Nilai Abjad Anda : B+");
        } else if (hasil >=70){
            System.out.println("Nilai Abjad Anda : B");
        } else if (hasil >=65){
            System.out.println("Nilai Abjad Anda : C+");
        } else if (hasil >=60){
            System.out.println("Nilai Abjad Anda : C");
        } else if (hasil >=55){
            System.out.println("Nilai Abjad Anda : D");
        } else if (hasil >=50){
            System.out.println("Nilai Abjad Anda : E");
        } else {
            System.out.println("Nilai Abjad Anda : F");
            System.out.println("Harap Lebih Giat Lagi Dalam Menuntut Ilmu :)");
        } 
        
        if (nilai >= 60 ){
            System.out.println("Anda Lulus");
        } else {
            System.out.println("Anda Gagal");
        }
        
        
        scanner.close();
    }
}
