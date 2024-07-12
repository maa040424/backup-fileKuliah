import java.util.Scanner;

public class belajarJava {
    //method
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Hello World");
        System.out.print("Input Nama :");
        String nama = scanner.nextLine();

        scanner.close();

        System.out.println("Nama :" + nama);
    }
}