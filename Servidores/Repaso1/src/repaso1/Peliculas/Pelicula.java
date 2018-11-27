/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repaso1.Peliculas;

import Excepciones.CampoVacioException;
import Excepciones.numerosException;

/**
 *
 * @author alumno_2DAW
 */
public class Pelicula {

    private String titulo;
    private String actor;
    private String director;
    private String genero;
    private double duracion;
    private String resumen;

    public Pelicula() {
    }

    public Pelicula(String titulo ) throws CampoVacioException, NumberFormatException, numerosException {

       
        this.setTitulo(titulo);

    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) throws CampoVacioException {
        if (titulo.equals("")) {
            throw new CampoVacioException("Campo Vacio");
        }
        this.titulo = titulo;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) throws CampoVacioException, numerosException {
        if (actor.equals("")) {
            throw new CampoVacioException("Campo Vacio");

        }
        char a;
        for (int i = 0; i < actor.length(); i++) {

            a = actor.charAt(i);
            if (a >= '0' && a <= '9') {
                throw new numerosException("Dato Erroneo en director o actor");
            }

        }
        this.actor = actor;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) throws CampoVacioException, numerosException {
        char a;
        for (int i = 0; i < director.length(); i++) {

            a = director.charAt(i);
            if (a >= '0' && a <= '9') {
                throw new numerosException("Dato erroneo");
            }

        }

        if (director.equals("")) {
            throw new CampoVacioException("Campo Vacio");
        }
        this.director = director;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) throws CampoVacioException {

        if (genero.equals("")) {
            throw new CampoVacioException("Campo Vacio");
        }
        this.genero = genero;
    }

    public double getDuracion() {
        return duracion;
    }

    public void setDuracion(double duracion) throws CampoVacioException, NumberFormatException {

        this.duracion = duracion;
    }

    public String getResumen() {
        return resumen;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }

    public boolean esThriller() {
        boolean thriller = false;

        if (this.getGenero().equals("thriller")) {
            thriller = true;
        }
        return thriller;
    }

    public boolean tieneResumen() {
        boolean resumen = false;
        if (!this.getResumen().equals("")) {
            resumen = true;
        }
        return resumen;
    }

    public String muestraDuracion() {
        String dur = this.getDuracion() + " min";
        return dur;
    }

    public void muestraTodo() {
        System.out.println(this.getTitulo().toUpperCase());
        System.out.println("De: " + this.getDirector());
        System.out.println("Con: " + this.getActor());
        System.out.println(this.getGenero() + " " + this.getDuracion() + " min");
        System.out.println(this.getResumen());

    }

}
