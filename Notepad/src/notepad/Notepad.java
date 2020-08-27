/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package notepad;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Container;
import java.awt.BorderLayout;
import static java.awt.BorderLayout.CENTER;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

/**
 *
 * @author DELL
 */
public class Notepad extends JFrame {
    JMenuBar mb;
    JMenu m1,m2,m3;
    JMenuItem i1,i2,i3,i4,i5,i6;
    JScrollPane sp;
    JTextArea a;
    JPanel p;
    Notepad(){
        Container c=getContentPane();
        c.setLayout(new BorderLayout());
        mb=new JMenuBar();
        m1=new JMenu("File");
        m2=new JMenu("Edit");
        m3=new JMenu("Help");
        i1=new JMenuItem("New");
        i2=new JMenuItem("Save");
        i3=new JMenuItem("Cut");
        i4=new JMenuItem("Undo");
        i5=new JMenuItem("view help");
        i6=new JMenuItem("about notepad");
        a=new JTextArea();
        sp=new JScrollPane(a,JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        p=new JPanel();
        m1.add(i1);
        m1.add(i2);
        m2.add(i3);
        m2.add(i4);
        m3.add(i5);
        m3.add(i6);
        mb.add(m1);
        mb.add(m2);
        mb.add(m3);
        sp.add(p);
        c.add(BorderLayout.PAGE_START,mb);
        c.add(sp);
        setVisible(true);
        setSize(300,300);
    }
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Notepad n1=new Notepad();
        // TODO code application logic here
    }

    private Component a(int VERTICAL_SCROLLBAR_ALWAYS, int HORIZONTAL_SCROLLBAR_ALWAYS) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
