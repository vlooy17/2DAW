<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost/sakila";
    Connection conexion = null;
    try {
        Class.forName(driver);
        conexion = DriverManager.getConnection(url, "root", "");
        String sentenciaSQL = "SELECT * FROM store";
        Statement statement = conexion.createStatement();
        ResultSet rs = statement.executeQuery(sentenciaSQL);

        String codigo = "";
        String cate = "";

        out.print("<tiendas>");
        while (rs.next()) {
            codigo = rs.getString("store_id");
            cate = rs.getString("nombre");
            out.print("<tienda>"
                    + "<codigo>" + codigo + "</codigo>"
                    + "<nombre>" + cate + "</nombre>"
                    + "</tienda>");
        }
        out.print("</tiendas>");
    } catch (ClassNotFoundException e) {
        System.out.print("Controlador JDBC no encontrado" + e.toString());
    } catch (SQLException e) {
        System.out.print("Excepcion SQL" + e.toString());

    }

%>    

