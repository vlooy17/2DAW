/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repaso;

import Alimentos.Alimentos;
import Excepciones.contenidoException;
import java.util.InputMismatchException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alumno_2DAW
 */
public class Repaso {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws InputMismatchException {

        String NombreAlimeto, Comprobador;
        double lip, hid, prot;
        Boolean OrAnimal, Correcto, Correcto2, Correcto3;
        String ContMineral, ContVitamina;
        prot = 0;
        lip = 0;
        hid = 0;
        Scanner sc = new Scanner(System.in);
        Correcto = false;
        Correcto2 = false;
        Correcto3 = false;
        ContMineral = "";
        ContVitamina = "";
        Comprobador = "";
        System.out.println("Introduzca el alimento");
        NombreAlimeto = sc.next();

        do {
            sc = new Scanner(System.in);
            Correcto = true;
            try {
                System.out.println("Introduzca proteinas");
                prot = sc.nextDouble();

            } catch (InputMismatchException e) {
                System.err.println("Dato erroneo");
                Correcto = false;

            }

        } while (Correcto == false);

        do {
            sc = new Scanner(System.in);
            Correcto = true;
            try {
                System.out.println("Introduzca lipidos");
                lip = sc.nextDouble();

            } catch (InputMismatchException e) {
                System.err.println("Dato erroneo");
                Correcto = false;

            }

        } while (Correcto == false);

        do {
            sc = new Scanner(System.in);
            Correcto = true;
            try {
                System.out.println("Introduzca hidratos");
                hid = sc.nextDouble();

            } catch (InputMismatchException e) {
                System.err.println("Dato erroneo");
                Correcto = false;

            }

        } while (Correcto == false);
        do {
            sc = new Scanner(System.in);

            Correcto2 = false;

            try {

                System.out.println("Contenido en minerales(A/M/B)");
                ContMineral = sc.next();
                ContMineral = ContMineral.toUpperCase();
                if ("A".equals(ContMineral)) {
                   Correcto2=true;
                } else if("B".equals(ContMineral)){
                Correcto2=true;
            } else if("M".equals(ContMineral)){
               Correcto2=true;
            }else{
                throw new contenidoException("Dato erroneo");
                
            }
            } catch (contenidoException ex) {
                System.err.println(ex.getMessage());
                Correcto2 = false;
            }

        } while (Correcto2 == false);

       do {
            sc = new Scanner(System.in);

            Correcto2 = false;

            try {

                System.out.println("Contenido en vitaminas(A/M/B)");
                ContVitamina = sc.next();
                ContVitamina = ContVitamina.toUpperCase();
                if ("A".equals(ContVitamina)) {
                   Correcto2=true;
                } else if("B".equals(ContVitamina)){
                Correcto2=true;
            } else if("M".equals(ContVitamina)){
               Correcto2=true;
            }else{
                throw new contenidoException("Dato erroneo");
                
            }
            } catch (contenidoException ex) {
                System.err.println(ex.getMessage());
                Correcto2 = false;
            }

        } while (Correcto2 == false);

        do {
            sc = new Scanner(System.in);

            Correcto3 = false;

            try {

                System.out.println("¿Es de origen animal?(S/N)");
                Comprobador = sc.next();
                Comprobador = Comprobador.toUpperCase();
                if ("S".equals(Comprobador)) {
                   Correcto3=true;
                } else if("N".equals(Comprobador)){
                Correcto3=true;
            }else{
                throw new contenidoException("Dato erroneo");
                
            }
            } catch (contenidoException ex) {
                System.err.println(ex.getMessage());
                Correcto3 = false;
            }

        } while (Correcto3 == false);

        if (Comprobador == "S") {
            OrAnimal = true;

        } else {
            OrAnimal = false;
        }

        Alimentos Al = new Alimentos(NombreAlimeto, lip, hid, prot, OrAnimal, ContMineral, ContVitamina);

        if (ContMineral == "A") {
            ContMineral = "Alto";
        }
        if (ContMineral == "B") {
            ContMineral = "Bajo";
        }
        if (ContMineral == "M") {
            ContMineral = "Medio";
        }
        if (ContVitamina == "A") {
            ContVitamina = "Alto";
        }
        if (ContVitamina == "B") {
            ContVitamina = "Bajo";
        }
        if (ContMineral == "M") {
            ContVitamina = "Medio";
        }
        System.out.println("--------------");
        System.out.println("--------------");
        System.out.println("--------------");
        System.out.println("Nombre: " + NombreAlimeto);
        System.out.println("Analisis:");
        System.out.println("     Lípidos: " + lip);
        System.out.println("     Hidratos de carbono: " + hid);
        System.out.println("     Proteínas: " + prot);
        System.out.println("Contenido en vitaminas: " + ContVitamina);
        System.out.println("Contenido en minerales: " + ContMineral);
        if (OrAnimal = true) {
            System.out.println("Es de origen animal");

        } else {
            System.out.println("No es de origen animal");
        }

        if (lip < 20 && ContVitamina != "B") {
            System.out.println("El alimento es dietetico");
        } else {
            System.out.println("Alimento no es dietetico");

        }

        if (prot >= 15 && prot <= 35 && lip >= 10 && lip <= 25 && hid >= 55 && hid <= 60) {
            System.out.println("Es recomendable para deportista");
        } else {
            System.out.println("No es recomendable para deportistas");
        }
        double Slip = lip * 9.4;
        double Sprot = prot * 5.3;
        double Shid = hid * 4.1;

        double suma = Shid + Slip + Sprot;

        System.out.println("Contenido energético: " + suma + " Kcal/100g");

    }

}
