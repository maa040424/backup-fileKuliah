public class Person {
  // Atribut (Field)
  private String name;
  private int age;

  // Konstruktor
  public Person(String name, int age) {
      this.name = name;
      this.age = age;
  }

  // Metode untuk menampilkan nama dengan usia
  public void showNameWithAge() {
      System.out.println("Nama: " + name);
      System.out.println("Umur: " + age);
  }
}
