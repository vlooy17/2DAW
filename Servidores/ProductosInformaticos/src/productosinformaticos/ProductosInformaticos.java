/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package productosinformaticos;

import java.sql.*;

/**
 *
 * @author alumno_2DAW
 */
public class ProductosInformaticos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/productosinformaticos";
        Connection con = null;
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, "root", "trebujena");
            Statement stmt = con.createStatement();
            String sql = "Select * from empresasmicros";
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData rsm = rs.getMetaData();
            
            String trimestre;
            int impresoras, micros;
            double VentaImpresoras, VentaMicros;
            String vendedores;
            int x = 1;
            
            while (rs.next()) {
                int y=1;
                trimestre = rs.getString("timestre");
                impresoras = Integer.parseInt(rs.getString("impresoras"));
                micros = Integer.parseInt(rs.getString("micros"));
                VentaImpresoras = Double.parseDouble(rs.getString("ventaImpresoras"));
                VentaMicros = Double.parseDouble(rs.getString("ventaMicros"));
                vendedores = rs.getString("vendedores");
                System.out.println("Fila"+x);
                System.out.println(rsm.getColumnName(y++)+": "+ trimestre + ","+ rsm.getColumnName(y++)+": " + impresoras +","+ rsm.getColumnName(y++)+": "  + VentaImpresoras + ","+ rsm.getColumnName(y++)+": "  + micros + ","+ rsm.getColumnName(y++)+": "  + VentaMicros + ","+ rsm.getColumnName(y++)+": "  + vendedores);
                x++;
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
