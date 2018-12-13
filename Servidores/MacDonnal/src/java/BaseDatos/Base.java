/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDatos;

import Controlador.Alimentos;
import Controlador.Usuario;
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
public class Base {
    public static String usuario = "root";
    public static String password = "";
    public static String servidor = "localhost:3306";
    public static String basedatos = "macdonals";

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
    
    public static ArrayList<Usuario> consultaTitulos() {
        ArrayList<Usuario> lista = new ArrayList<Usuario>();

        Usuario usu;
        Connection cnn = null;

        try {
            cnn = CrearConexion();
           
            PreparedStatement smt = cnn.prepareStatement("SELECT * FROM usuario u;");
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                usu = new Usuario(rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                lista.add(usu);
            }

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }

        return lista;
    }

    public static ArrayList<Alimentos> consultaAlimentos(String sql) {
        ArrayList<Alimentos> lista = new ArrayList<Alimentos>();

        Alimentos ebook;
        Connection cnn = null;

        try {
            cnn = CrearConexion();
           
            PreparedStatement smt = cnn.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                ebook = new Alimentos(rs.getString(2));
                lista.add(ebook);
            }

        } catch (SQLException e) {
            System.out.println("Controlado jdbc no encontrado" + e.toString());
        } catch (Exception e) {
            System.out.println("Otra exception" + e.toString());
        }

        return lista;
    }

}
