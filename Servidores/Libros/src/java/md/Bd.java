/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package md;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author alumno_2DAW
 */
public class Bd {

    public static String usuario = "root";
    public static String password = "trebujena";
    public static String servidor = "localhost:3306";
    public static String basedatos = "books";

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

    public static ArrayList<Libro> consultaTitulos(String dato) {
        ArrayList<Libro> lista = new ArrayList<Libro>();

        Libro ebook;
        Connection cnn = null;

        try {
            cnn = CrearConexion();
            String sql = "SELECT titulos.titulo, titulos.isbn, autor.nombre, Editorial.NameEditorial, titulos.descripcion "
                    + "FROM titulos,autor,editorial "
                    + "WHERE (titulos.idautor = autor.idautor) "
                    + "AND (titulos.ideditorial = editorial.ideditorial) AND (titulos.titulo like '%"+dato+"%');";
            PreparedStatement smt = cnn.prepareStatement(sql);
            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                ebook = new Libro(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
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
