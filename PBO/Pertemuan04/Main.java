import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Nama : Muhammad Adam Alghifari");
        System.out.println("NPM  : 2210010314");

        
        System.out.print("Masukkan Nilai Harian: ");
        int nilaiHarian = input.nextInt();
        System.out.print("Masukkan Nilai Tugas: ");
        int nilaiTugas = input.nextInt();
        System.out.print("Masukkan Nilai UTS: ");
        int nilaiUTS = input.nextInt();
        System.out.print("Masukkan Nilai UAS: ");
        int nilaiUAS = input.nextInt();

        
        double nilaiAkhir = (nilaiHarian * 0.1) + (nilaiTugas * 0.2) + (nilaiUTS * 0.3) + (nilaiUAS * 0.4);

        
        System.out.println("Hasil Akhir: " + nilaiAkhir);

        
        char grade;
        if (nilaiAkhir >= 85) {
            grade = 'A';
        } else if (nilaiAkhir >= 80) {
            grade = 'B';
        } else if (nilaiAkhir >= 75) {
            grade = 'B';
        } else if (nilaiAkhir >= 70) {
            grade = 'C';
        } else if (nilaiAkhir >= 65) {
            grade = 'C';
        } else if (nilaiAkhir >= 60) {
            grade = 'D';
        } else if (nilaiAkhir >= 55) {
            grade = 'D';
        } else if (nilaiAkhir >= 50) {
            grade = 'E';
        } else {
            grade = 'F';
        }

        System.out.println("Grade: " + grade);

        
        System.out.print("Grade (Switch Case): ");
        switch (grade) {
            case 'A':
                System.out.println("A");
                break;
            case 'B':
                System.out.println("B+");
                break;
            case 'C':
                System.out.println("C+");
                break;
            case 'D':
                System.out.println("D+");
                break;
            case 'E':
                System.out.println("E");
                break;
            case 'F':
                System.out.println("F");
                break;
            default:
                System.out.println("Grade tidak valid");
        }
    }
}
