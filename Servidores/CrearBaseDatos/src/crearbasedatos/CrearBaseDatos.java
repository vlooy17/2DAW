/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crearbasedatos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/**
 *
 * @author alumno_2DAW
 */
public class CrearBaseDatos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/mibasedatos";
        Connection con = null;
        Scanner sc = new Scanner(System.in);
        String opcion;
        Statement stmt;

        try {
            Class.forName(driver);

            System.out.println("Elija a o b");
            opcion = sc.next();
            System.out.println(opcion);
            if (opcion.equals("a")) {
                con = DriverManager.getConnection(url, "root", "trebujena");
                stmt = con.createStatement();

                String drop = "DROP TABLE IF EXISTS mitabla;";
                stmt.addBatch(drop);
                String sql = "CREATE TABLE IF NOT EXISTS mitabla "
                        + "(nombre varchar(50) ,"
                        + "apellidos varchar(100) ,"
                        + "edad int(3) ,"
                        + "telefono int(9) NOT NULL) ";
                String insert = "INSERT INTO mitabla (nombre,apellidos,edad,telefono) VALUES "
                        + " ('Jesus','Fernandez Ortega',28,941200638),"
                        + " ('Pepe','Botella Ruiz',26,94121365),"
                        + " ('Carlos','Ruiz Gil',26,941124541);";
                stmt.addBatch(sql);
                stmt.addBatch(insert);
                stmt.executeBatch();
                con.close();

            }

            if (opcion.equals("b")) {
                con = DriverManager.getConnection(url, "root", "trebujena");
                stmt = con.createStatement();

                String drop = "DROP TABLE IF EXISTS mitabla;";
                stmt.addBatch(drop);
                String sql = "CREATE TABLE IF NOT EXISTS mitabla "
                        + "(nombre varchar(50) ,"
                        + "apellidos varchar(100) ,"
                        + "edad int(3) ,"
                        + "lugarResidencia varchar(100) ,"
                        + "FechaNacimiento  datetime)";
                stmt.addBatch(sql);
                String insert2 = "INSERT INTO mitabla (nombre,apellidos,edad,lugarResidencia,FechaNacimiento) VALUES "
                        + " ('Jesus','Fernandez Ortega',28,'Logroño','1975-03-22'),"
                        + " ('Pepe','Botella Ruiz',26,'Madrid','1975-10-12'),"
                        + " ('Carlos','Ruiz Gil',26,'Barcelona','1976-11-25');";
                stmt.addBatch(insert2);
                stmt.executeBatch();
                con.close();

            }

        } catch (ClassNotFoundException e) {
            System.err.println("Controlador JDBC no encontrador: " + e.toString());
        } catch (SQLException e) {
            System.err.println("Excepcion capturada de SQL: " + e.toString());
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                System.err.println("No se puede cerrar la conexion: " + e.toString());
            }
        }
    }

}
