
package ideapad;


import javax.swing.JFrame;


public class IdeaPad {
        
    public static void main(String[] args) {
        
        WellCome w=new WellCome();
        w.setTitle("WELLCOME");
        w.setVisible(true);
        w.setResizable(false);
        w.setBounds(425,100,500,500);
        w.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
}
