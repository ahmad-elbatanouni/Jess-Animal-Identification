
import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import jess.JessException;
import jess.Rete;
import jess.Value;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author matrix
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Rete engine = new Rete();
            engine.batch("E:\\fcaulty\\4th year\\kps\\xxxxx.clp");
            engine.reset();
            engine.addOutputRouter("s", new FileWriter("fff.txt"));
            Value v = engine.eval("(defrule rule1(eye-vision(name ?name)(eyes-color \"red\")(There-are-bluring ?a)(wearing-a-glass-or-contact-lens ?b)(having-a-pain ?m)(there-are-watery-discharge ?c)(take-medication-systematic-or-local ?d)(suffering-from-itching ?e)(suffering-from-roughness-sensation ?f)(If-there-past-history-of-similar-condition ?g)(Does-the-workplace-contain-the-dust,-wind-or-sun ?h)(does-you-live-in-village-or-city ?i)(there-is-Foreign-body-sensation-in-the-eye ?j)(Disease-came-gradually-or-suddenly-or-fast ?k))" +
                    "=>" +
                    "(printout s ?name \"#\" crlf))", engine.getGlobalContext());
            engine.run();
           
            FileReader fr = new FileReader("fff.txt");
            BufferedReader bf = new BufferedReader(fr);
            while (true) {
                try {
                    String[] s = bf.readLine().split("#");
                    // System.out.println("a="+s[0]);
                    JOptionPane.showMessageDialog(null, s[0]);
                } catch (NullPointerException ex) {
                    break;
                }
            }
        } catch (IOException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JessException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
   }
