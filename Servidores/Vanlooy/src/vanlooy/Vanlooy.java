/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vanlooy;

/**
 *
 * @author alumno_2DAW
 */
public class Vanlooy {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        double num = 20;
        double resultado = 0;
        double x;
        double y;
        for (int i = 1; i < num+1; i++) {
            resultado = i;
            x=i;
            y=i;
            while (1 < x) {

                resultado = resultado * (y - 1);
                x--;
                y--;
            }

            System.out.println(i + "! = " + (resultado));

        }
    }

}
