 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Carro;

/**
 *
 * @author alumno_2DAW
 */
public class Articulo {

    private String producto;
    private int can;
    private double precio;
    private double total;

    public Articulo(String producto, int can) {
        this.setProducto(producto);
        this.setCan(can);
        this.setPrecio(producto);
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(String producto) {
        if(producto.equals("agua")){
            this.precio=0.5;
        }
        if(producto.equals("cerveza")){
            this.precio=0.2;
        }
        if(producto.equals("pan")){
            this.precio=0.1;
        }
        if(producto.equals("leche")){
            this.precio=0.4;
        }
 
    }

    public double getTotal() {
        return precio*can;
    }



    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getCan() {
        return can;
    }

    public void setCan(int can) {
        this.can = can;
    }

    @Override
    public String toString() {
        return "Articulo{" + "producto=" + producto + ", can=" + can + '}';
    }

}
