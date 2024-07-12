public class Komputer {
    private int id;
    private String sistemOperasi;
    private double clockProsesor;
    private double harga;

    
    public Komputer(int id, String sistemOperasi, double clockProsesor, double harga) {
        this.id = id;
        this.sistemOperasi = sistemOperasi;
        this.clockProsesor = clockProsesor;
        this.harga = harga;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSistemOperasi() {
        return sistemOperasi;
    }

    public void setSistemOperasi(String sistemOperasi) {
        this.sistemOperasi = sistemOperasi;
    }

    public double getClockProsesor() {
        return clockProsesor;
    }

    public void setClockProsesor(double clockProsesor) {
        this.clockProsesor = clockProsesor;
    }

    public double getHarga() {
        return harga;
    }

    public void setHarga(double harga) {
        this.harga = harga;
    }

    
    public void create() {
        
        System.out.println("INSERT INTO Komputer ");
    }

    public void read() {
        
        System.out.println("SELECT * FROM Komputer;");
    }

    public void read(int id) {
        
        System.out.println("SELECT * FROM Komputer WHERE id = " + id + ";");
    }

    public void update() {
        
        System.out.println("UPDATE Komputer SET sistemOperasi = " + SistemOperasi );
    }

    public void delete() {
        System.out.println("DELETE FROM Komputer WHERE id = " + id + ";");
    }
}
