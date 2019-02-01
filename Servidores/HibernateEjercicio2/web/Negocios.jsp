<%-- 
    Document   : Inicio
    Created on : 18-ene-2019, 9:46:41
    Author     : alumno_2DAW
--%>

<%@page import="Ayudante.Store"%>
<%@page import="java.util.List"%>
<%@page import="Ayudante.Category"%>
<%@page import="Ayudante.Ayuda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Negocios</title>
    </head>
    <body style="text-align: center;">
        <div>
            <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
        </div>
        <hr style="width: 50%;margin-left: 25%"></hr>
        <h1>DATOS NEGOCIOS</h1>
        <hr style="width: 50%;margin-left: 25%"></hr>
        <%Ayuda fh = new Ayuda();
            ServletContext contexto = getServletContext();
            RequestDispatcher rd;
            List<Store> store = fh.getTienda();
            Store nuevo = null;
            String id = (String) contexto.getAttribute("videoclub");
            int id2 = Integer.parseInt(id);
            for (int x = 0; x < store.size(); x++) {
                nuevo = store.get(x);
                if(id2==nuevo.getStoreId()){
                    out.println("<p'>Nombre: " + nuevo.getNombre() + "</p>");
                    out.println("<p'>Dirección: " + nuevo.getAddress().getAddress() + "</p>");
                    out.println("<p'>Ciudad: " + nuevo.getAddress().getCity().getCity() + "</p>");
                    out.println("<p'>País: " + nuevo.getAddress().getCity().getCountry().getCountry() + "</p>");
                }
            }
        %>
        <hr style="width: 50%;margin-left: 25%"></hr>
    </body>
</html>
