/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

/**
 *
 * @author alumno_2DAW
 */
public class venta {

    private String comercial;
    private String producto;
    private int cantidad;
    private double total;
    private double precio;
    private int descuento;
    private String fecha;
    private String usuario;
    private String clave;
    private int codComer;
    private int codProd;
    private String codComer2;
    private String codProd2;

    public venta(String comercial, String producto, int cantidad, double precio, int descuento, String fecha) {
        this.comercial = comercial;
        this.producto = producto;
        this.cantidad = cantidad;
        this.precio = precio;
        this.descuento = descuento;
        this.fecha = fecha;
    }

         
    

    public venta(String comercial) {
        this.comercial = comercial;
    }

    public venta(String usuario, String clave) {
        this.usuario = usuario;
        this.clave = clave;
    }

    public venta(String comercial, String producto, int codComer, int codProd) {
        this.comercial = comercial;
        this.producto = producto;
        this.codComer = codComer;
        this.codProd = codProd;
    }

    public venta(String comercial, String producto, int cantidad, double precio, int descuento, String fecha, String codComer2, String codProd2) {
        this.comercial = comercial;
        this.producto = producto;
        this.cantidad = cantidad;
        this.precio = precio;
        this.descuento = descuento;
        this.fecha = fecha;
        this.codComer2 = codComer2;
        this.codProd2 = codProd2;
    }

    public String getCodComer2() {
        return codComer2;
    }

    public void setCodComer2(String codComer2) {
        this.codComer2 = codComer2;
    }

    public String getCodProd2() {
        return codProd2;
    }

    public void setCodProd2(String codProd2) {
        this.codProd2 = codProd2;
    }

 



    

   

    

    public String getComercial() {
        return comercial;
    }

    public void setComercial(String comercial) {
        this.comercial = comercial;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getDescuento() {
        return descuento;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getCodComer() {
        return codComer;
    }

    public void setCodComer(int codComer) {
        this.codComer = codComer;
    }

    public int getCodProd() {
        return codProd;
    }

    public void setCodProd(int codProd) {
        this.codProd = codProd;
    }
    

}
