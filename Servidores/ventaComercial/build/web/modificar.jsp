<%-- 
    Document   : modificar
    Created on : 07-nov-2018, 8:42:20
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
    <body>
        <%@include file="/index.html" %>
        <h1>MODIFICAR</h1>
        <form method="POST" action="TablaMod.jsp">
            <br></br>
            <select style="margin-left: 40%;" name="comercial">
                <%
                    ArrayList<venta> comerciales = new ArrayList<venta>();
                     
                    comerciales = BaseDatos.bd.Comerciales();
                    
                    out.println(comerciales.size());
                    for (int i = 0; i < comerciales.size(); i++) {
                        out.println("<option value='"+comerciales.get(i).getUsuario()+"'>" + comerciales.get(i).getUsuario()+ "</option>");
                    }

                %>        
            </select>
            <br></br>
            <input style="margin-left: 40%;"type="submit" value="Listado de ventas" />
        </form>
    </body>
</html>
