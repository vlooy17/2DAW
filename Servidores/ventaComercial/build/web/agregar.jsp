<%-- 
    Document   : agregar
    Created on : 08-nov-2018, 10:47:33
    Author     : alumno_2DAW
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BaseDatos.venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin-left: 2% !important">
        <%@include file="/index.html" %>
        <br>
        <h1 >AGREGAR VENTA</h1>
        <form method="POST" action="anadir.jsp">
            
            Comercial  <select name="comercial">
                <%
                    ArrayList<venta> comerciales = new ArrayList<venta>();
                     
                    comerciales = BaseDatos.bd.Comerciales();
                    for (int i = 0; i < comerciales.size(); i++) {
                        out.println("<option value='"+comerciales.get(i).getClave()+"'>" + comerciales.get(i).getUsuario()+ "</option>");
                    }

                %> 
            </select>
            <br></br>
             Producto <select name="producto">
                <%
                   
                  ArrayList<venta> producto = new ArrayList<venta>();
                     
                    producto = BaseDatos.bd.Productos();
                   for (int i = 0; i < producto.size(); i++) {
                        out.println("<option value='"+producto.get(i).getClave()+"'>" + producto.get(i).getUsuario()+ "</option>");
                   }

                %> 
            </select>
            <br></br>
            Cantidad <input required type="number" name="cantidad" value="" />
            <br></br>
            Fecha <input required type="Date" name="fecha" value="" />
             <br></br>
            <input type="submit" value="Alta" />
        </form>
    </body>
</html>
