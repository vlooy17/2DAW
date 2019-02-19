/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BBDD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alumno_2DAW
 */
public class ConexionBBDD {

    public ConexionBBDD() {
    }

    public void crearUsuario(String nombre, String apellidos, String email, String clave, String provincia, String municipio) {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql:localhost/3306/";
        Connection con = null;
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, "roor", "");
            Statement stmt = con.createStatement();
            
            

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexionBBDD.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBBDD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
