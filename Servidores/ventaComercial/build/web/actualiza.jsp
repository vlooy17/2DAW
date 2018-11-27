<%-- 
    Document   : actualiza
    Created on : 09-nov-2018, 12:01:29
    Author     : alumno_2DAW
--%>

<%@page import="BaseDatos.venta"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int cant;
            String fecha;
            String ref;
            String cod;
            boolean act=false;
            ServletContext contexto = getServletContext();
            ArrayList<venta> datos = new ArrayList<venta>();
            datos = (ArrayList) contexto.getAttribute("datos");
            for (int i = 0; i < datos.size(); i++) {
                  cant = Integer.parseInt(request.getParameter("cantidad"+i));
                  fecha = request.getParameter("fecha"+i);
                  ref  = request.getParameter("referencia"+i);
                  cod  = request.getParameter("cod"+i);
                  
                  if(cant!=(datos.get(i).getCantidad())){
                      act = BaseDatos.bd.Actualiza(cant, ref, fecha, cod);
                     
                  }
                }
            if(act){
                out.println("Campo modificado");
                
            }
        %>    

    </body>
</html>
