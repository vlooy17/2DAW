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
    String categoria = request.getParameter("categoria");
    String videoclub = request.getParameter("videoclub");
    try {
        Class.forName(driver);
        conexion = DriverManager.getConnection(url, "root", "");
        String sentenciaSQL = "SELECT f.title FROM film_category fm,film f,inventory i where category_id = "+categoria+" AND fm.film_id = f.film_id AND i.store_id="+videoclub+" group by f.title;";
        Statement statement = conexion.createStatement();
        ResultSet rs = statement.executeQuery(sentenciaSQL);

        String pelicula = "";

        out.print("<categoria>");
        while (rs.next()) {
            pelicula = rs.getString("title");
            out.print("<tienda>"
                    + "<pelicula>" + pelicula + "</pelicula>"
                    + "</tienda>");
        }
        out.print("</categoria>");
        
    } catch (ClassNotFoundException e) {
        System.out.print("Controlador JDBC no encontrado" + e.toString());
    } catch (SQLException e) {
        System.out.print("Excepcion SQL" + e.toString());

    }

%>    