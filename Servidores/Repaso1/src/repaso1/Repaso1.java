/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repaso1;

import Excepciones.CampoVacioException;
import Excepciones.numerosException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import repaso1.Peliculas.Pelicula;

/**
 *
 * @author alumno_2DAW
 */
public class Repaso1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Pelicula pelicula = new Pelicula();
        boolean error = false;
        do {
            try {
                //    try {
                //        Pelicula pelicula = new Pelicula("err", "uu", "u", "hhj", "12", "");
                //    } catch (CampoVacioException | NumberFormatException ex) {
                //       System.err.println(ex.getMessage());
                //   }
                error = false;
                String titulo;
                String director;
                String genero;
                double duracion;
                String resumen;
                String actor;

                Scanner sc = new Scanner(System.in);
                Scanner db = new Scanner(System.in);
                System.out.println("Título de la pelicula");
                titulo = sc.nextLine();
                pelicula = new Pelicula(titulo);
                System.out.println("Actor principal es");
                actor = sc.nextLine();
                pelicula.setActor(actor);
                System.out.println("Director");
                director = sc.nextLine();
                pelicula.setDirector(director);
                System.out.println("Genero");
                genero = sc.nextLine();
                pelicula.setGenero(genero);
                System.out.println("Duración");
                duracion = db.nextDouble();
                pelicula.setDuracion(duracion);
                System.out.println("Resumen");
                resumen = sc.nextLine();
                pelicula.setResumen(resumen);
            } catch (CampoVacioException ex) {
                System.err.println("Campo Vacio");
                error = true;
            } catch (numerosException ex1) {
                System.err.println(ex1.getMessage());
                error = true;
            } catch (Exception ex2) {
                System.err.println("Dato erroneo");
                error = true;
            }
        } while (error);

        System.out.println("=================");
        pelicula.muestraTodo();
        System.out.println("=================");
        boolean thriller = pelicula.esThriller();
        if (thriller == true) {
            System.out.println("Es thriller");
        } else {
            System.out.println("No es thriller");
        }
        System.out.println("=================");
        boolean tieneResumen = pelicula.tieneResumen();
        if (tieneResumen == true) {
            System.out.println("Tiene ficha de resumen");
        } else {
            System.out.println("No tiene ficha de resumen");
        }
        System.out.println("=================");
        System.out.println("Duración" + pelicula.muestraDuracion());

    }
}
