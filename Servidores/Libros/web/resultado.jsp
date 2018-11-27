<%-- 
    Document   : resultado
    Created on : 22-oct-2018, 13:54:37
    Author     : alumno_2DAW
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="md.Libro"%>
<%@page import="md.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado busqueda</h1>
        <%
            ServletContext contexto = getServletContext();
            String cad = (String) contexto.getAttribute("busca"); 
            ArrayList<Libro> lista = new ArrayList<Libro>();
            lista = md.Bd.consultaTitulos(cad);

        %>
        <p><h1>El resultado de la busqueda es</h1></p>
        <%
            out.println("<table border = \"3\">");
            
        for (int i = 0; i < lista.size(); i++) {
            
            out.println("<tr><td>"+lista.get(i).getTitulo()+"</td><td>"+
                    "<td>"+lista.get(i).getIsbn()+"</td><td>"+
                    "<td>"+lista.get(i).getAutor()+"</td><td>"
                    + "<td>"+lista.get(i).getEditorial()+"</td><td>"+
                    "<td>"+lista.get(i).getDescripcion()+"</td></tr>");
                    
            
        }
        out.println("</table>");


        %>

</body>
</html>
