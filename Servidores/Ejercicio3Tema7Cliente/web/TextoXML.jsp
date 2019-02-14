<%-- 
    Document   : TextoXML
    Created on : 07-feb-2019, 8:24:24
    Author     : alumno_2DAW
--%>


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
        String sentenciaSQL = "SELECT * FROM category";
        Statement statement = conexion.createStatement();
        ResultSet rs = statement.executeQuery(sentenciaSQL);

        String codigo = "";
        String cate = "";

        out.print("<categorias>");
        while (rs.next()) {
            codigo = rs.getString("category_id");
            cate = rs.getString("name");
            out.print("<categoria>"
                    + "<codigo>" + codigo + "</codigo>"
                    + "<nombre>" + cate + "</nombre>"
                    + "</categoria>");
        }
        out.print("</categorias>");
    } catch (ClassNotFoundException e) {
        System.out.print("Controlador JDBC no encontrado" + e.toString());
    } catch (SQLException e) {
        System.out.print("Excepcion SQL" + e.toString());

    }

%>    
