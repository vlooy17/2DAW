/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Pizzas;
import Modelo.Usuario;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

/**
 *
 * @author DOCENTRO
 */
public class BD {

    public static String usuario = "root";
    public static String password = "";
    public static String servidor = "localhost:3306";
    public static String basedatos = "examensesiones";
    
    public static Connection CrearConexion(){
       Connection cnn = null;
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://"+servidor+"/"+basedatos;
            cnn = DriverManager.getConnection(url,usuario,password);
        } catch (ClassNotFoundException c) {
            System.out.println("Controlador JDBC no encontrado"+c.toString());
        } catch(Exception c){
            System.out.println("Otra Exception"+c.toString());
        }
       
       return cnn;
    }
    
    public static ArrayList<Usuario> consultaUsuario(){
        
        ArrayList<Usuario> lista  = new ArrayList<Usuario>();
        
        Usuario usu;
        Connection cnn=null;
        
        try {
            cnn=CrearConexion();
            String sql = "SELECT * FROM usuarios u;";
            PreparedStatement stm = (PreparedStatement) cnn.prepareStatement(sql);
            ResultSet rs = (ResultSet) stm.executeQuery();
            while(rs.next()){
                usu = new Usuario(rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), 
                        rs.getString(6), rs.getString(7), rs.getString(8));
                lista.add(usu);
            }
        } catch (Exception e) {
        }
        
        return lista;
    }
      public static ArrayList<Pizzas> consultaPizzas(){
        
        ArrayList<Pizzas> listaPizzas  = new ArrayList<Pizzas>();
        
        Pizzas pizza;
        Connection cnn=null;
        
        try {
            cnn=CrearConexion();
            String sql = "SELECT * FROM pizzas p;";
            PreparedStatement stm = (PreparedStatement) cnn.prepareStatement(sql);
            ResultSet rs = (ResultSet) stm.executeQuery();
            while(rs.next()){
                pizza = new Pizzas(rs.getString(2),rs.getString(3),rs.getString(4));
                listaPizzas.add(pizza);
            }
        } catch (Exception e) {
        }
        
        return listaPizzas;
    }
}
