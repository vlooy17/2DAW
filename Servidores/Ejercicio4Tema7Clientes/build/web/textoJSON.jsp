<%-- 
    Document   : textoJSON
    Created on : 08-feb-2019, 9:52:01
    Author     : alumno_2DAW
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/json" pageEncoding="UTF-8"%>
<%
    String usuario = request.getParameter("usuario");
    usuario = usuario.trim();
    String usu1 = "";
    //String usuario = "vlooy";
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost/macdonals";
    Connection conexion = null;
    String datos="";
    try {
        Class.forName(driver);
        conexion = DriverManager.getConnection(url, "root", "");
        String sentenciaSQL = "SELECT * FROM usuario u;";
        Statement statement = conexion.createStatement();
        ResultSet rs = statement.executeQuery(sentenciaSQL);
         while (rs.next()) {
            usu1 = rs.getString("usuario");
            if(usu1.equals(usuario)){
                 datos = "{disponible: 'NO' , alternativas: ['" + usuario + "123', '123" + usuario + "','" + usuario + "NUEVO'] }";
            }else{
                 datos = "{disponible: 'SI'}";
            }
        }
    } catch (ClassNotFoundException e) {
        System.out.print("Controlador JDBC no encontrado" + e.toString());
    } catch (SQLException e) {
        System.out.print("Excepcion SQL" + e.toString());

    }
    

    out.println(datos);

%>