/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author alumno_2DAW
 */
public class bd {

    public static String usuario = "root";
    public static String password = "trebujena";
    public static String servidor = "localhost:3306";
    public static String basedatos = "ventas_comerciales";

    public static Connection CrearConexion() {
        Connection cnn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://" + servidor + "/" + basedatos;
            cnn = DriverManager.getConnection(url, usuario, password);

        } catch (ClassNotFoundException e) {
            System.out.println("Controlador JDBC no encontrado " + e.toString());

        } catch (Exception c) {
            System.out.println("Otra excepcion" + c.toString());
        }

        return cnn;
    }

    public static ArrayList<venta> Listado(String comercial) {
        ArrayList<venta> lista = new ArrayList<venta>();

        venta vent;
        Connection cnn = null;

        try {
            cnn = CrearConexion();

            PreparedStatement smt = cnn.prepareStatement("SELECT c.nombre,p.nombre,v.cantidad,p.precio,p.descuento,v.fecha\n"
                    + "FROM ventas_comerciales.comerciales c, ventas_comerciales.productos p, ventas_comerciales.ventas v\n"
                    + "WHERE c.codigo = v.codComercial AND p.referencia = v.refProducto AND c.nombre = '" + comercial + "';");
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                vent = new venta(rs.getString("c.nombre"), rs.getString("p.nombre"), rs.getInt("v.cantidad"), rs.getDouble("p.precio"), rs.getInt("p.descuento"), rs.getString("v.fecha"));
                lista.add(vent);
            }

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }

        return lista;
    }
     public static ArrayList<venta> Listado2(String comercial) {
        ArrayList<venta> lista = new ArrayList<venta>();

        venta vent;
        Connection cnn = null;

        try {
            cnn = CrearConexion();

            PreparedStatement smt = cnn.prepareStatement("SELECT c.nombre,p.nombre,v.cantidad,p.precio,p.descuento,v.fecha,c.codigo,p.referencia\n" +
"                    FROM ventas_comerciales.comerciales c, ventas_comerciales.productos p, ventas_comerciales.ventas v\n" +
"                    WHERE c.codigo = v.codComercial AND p.referencia = v.refProducto AND c.nombre = '"+comercial+"';");
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                //vent = new venta(rs.getString("c.nombre"), rs.getString("p.nombre"), rs.getInt("v.cantidad"), rs.getDouble("p.precio"), rs.getInt("p.descuento"), rs.getString("v.fecha"),rs.getString("c.codigo"),rs.getString("p.referencia"));
                //vent = new venta(rs.getString("c.nombre"), rs.getString("p.nombre"), rs.getInt("v.cantidad"), rs.getDouble("p.precio"), rs.getInt("p.descuento"), rs.getString("v.fecha"),rs.getInt("c.codigo"),rs.getInt("p.referencia"));
                vent = new venta(rs.getString("c.nombre"), rs.getString("p.nombre"), rs.getInt("v.cantidad"), rs.getDouble("p.precio"), rs.getInt("p.descuento"), rs.getString("v.fecha"),rs.getString("c.codigo"),rs.getString("p.referencia"));
                lista.add(vent);
            }

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }

        return lista;
    }

    public static ArrayList<venta> Comerciales() {
        ArrayList<venta> comerciales = new ArrayList<venta>();

        venta com;
        Connection cnn = null;

        try {
            cnn = CrearConexion();

            PreparedStatement smt = cnn.prepareStatement("SELECT codigo,nombre FROM comerciales c;");
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {

                com = new venta(rs.getString("nombre"), rs.getString("codigo"));
                comerciales.add(com);
            }

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }

        return comerciales;
    }

    public static ArrayList<venta> Datos() {
        ArrayList<venta> usuario = new ArrayList<venta>();

        venta us;
        Connection cnn = null;

        try {
            cnn = CrearConexion();

            PreparedStatement smt = cnn.prepareStatement("SELECT usuario,password FROM ventas_comerciales.usuario u;");
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {

                us = new venta(rs.getString("usuario"), rs.getString("password"));
                usuario.add(us);
            }

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }

        return usuario;
    }

    public static ArrayList<venta> Productos() {
        ArrayList<venta> pro = new ArrayList<venta>();

        venta product;
        Connection cnn = null;

        try {
            cnn = CrearConexion();

            PreparedStatement smt = cnn.prepareStatement("SELECT referencia,nombre FROM productos p;");
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {

                product = new venta(rs.getString("nombre"), rs.getString("referencia"));
                pro.add(product);
            }

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }

        return pro;
    }

    public static boolean insetar(String codP, String codR, String cant, String fecha) {
        
        boolean agregado = false;
        Connection cnn = null;

        try {
            cnn = CrearConexion();
            String sql = "INSERT INTO ventas_comerciales.ventas (codComercial, refProducto, cantidad, fecha ) VALUES ('"+codP+"','"+codR+"',"+cant+",'"+fecha+"');" ;
            PreparedStatement smt = cnn.prepareStatement(sql);
            smt.executeUpdate();
            agregado=true;

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }
        
        return agregado;
    }
    public static boolean Actualiza(int cant,String ref,String fecha,String cod) {
        
        boolean actualizado = false;
        Connection cnn = null;

        try {
            cnn = CrearConexion();
            String sql = "UPDATE ventas SET cantidad ='"+cant+"' WHERE codComercial='"+cod+"' AND refProducto = '"+ref+"' AND fecha = '"+fecha+"';" ;
            PreparedStatement smt = cnn.prepareStatement(sql);
            smt.executeUpdate();
            actualizado=true;

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }
        
        return actualizado;
    }

}
