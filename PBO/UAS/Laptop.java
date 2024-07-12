public class Laptop extends Komputer {
    private String jenisLayar;

    
    public Laptop(int id, String sistemOperasi, double clockProsesor, double harga, String jenisLayar) {
        super(id, sistemOperasi, clockProsesor, harga);
        this.jenisLayar = jenisLayar;
    }

    
    public String getJenisLayar() {
        return jenisLayar;
    }

    public void setJenisLayar(String jenisLayar) {
        this.jenisLayar = jenisLayar;
    }

    @Override
    public void read() {
        
        System.out.println("SELECT * FROM Laptop;");
    }

    
   
    public void read(int id) {
        System.out.println("SELECT * FROM Laptop WHERE id = " + id + ";");
    }

   public void read(String jenisLayar){
        System.out.println("SELECT * FROM Laptop WHERE = " + jenisLayar + ";");
   }
}
