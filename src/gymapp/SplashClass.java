/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gymapp;

import javax.swing.JProgressBar;

/**
 *
 * @author mbuth
 */
public class SplashClass extends Splash {

    /**
     *
     * @param args
     */
    public static void main(String args[]){
     Splash sp= new Splash();
     sp.setVisible(true);
     Login a = new Login();
        try {
            for (int i = 0; i <= 100; i++) {
                Thread.sleep(30);
                JProgressBar Progress = sp.Progress;
                sp.Progress.setValue(i);
                if (i==100) {
                    sp.setVisible(false);
                    a.setVisible(true);
                    }
 
            }
        } catch (Exception e) {
        }
    }
}
