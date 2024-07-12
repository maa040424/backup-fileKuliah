import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;

public class CobaFrame extends JFrame {
    JButton btn1 = new JButton("Tambah");
    JLabel label1 = new JLabel("Nama");

    public CobaFrame() {
        // Set frame properties
        setSize(600, 400);
        setTitle("Coba Frame");
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Set layout manager
        setLayout(new FlowLayout());

        // Add components to frame
        add(label1);
        add(btn1);
    }

    public static void main(String[] args) {
        // Create frame instance
        CobaFrame cf = new CobaFrame();
        cf.setVisible(true);
    }
}
