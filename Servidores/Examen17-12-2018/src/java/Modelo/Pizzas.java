/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author DOCENTRO
 */
public class Pizzas {
    private String nompizzas;
    private String idpizza;
    private String precios;

    public Pizzas(String nompizzas, String idpizza,String precios) {
        this.nompizzas = nompizzas;
        this.idpizza = idpizza;
        this.precios = precios;
    }

    public String getPrecios() {
        return precios;
    }

    public void setPrecios(String precios) {
        this.precios = precios;
    }

    
    
    public String getNompizzas() {
        return nompizzas;
    }

    public void setNompizzas(String nompizzas) {
        this.nompizzas = nompizzas;
    }

    public String getIdpizza() {
        return idpizza;
    }

    public void setIdpizza(String idpizza) {
        this.idpizza = idpizza;
    }
    
    
}
