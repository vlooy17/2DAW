<%-- 
    Document   : TotalAlquiladas
    Created on : 01-feb-2019, 13:11:16
    Author     : alumno_2DAW
--%>

<%@page import="java.util.List"%>
<%@page import="Ayudante.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center">
        <div>
            <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
        </div>

        <hr style="width: 50%;margin-left: 25%"></hr>
        <%

            Ayuda consulta = new Ayuda();

            Film nuevo1;
            String pelicula = request.getParameter("pelis8");
            List<Film> store7 = consulta.getFilm2();
            Film nuevo7 = null;
            String titulo;
            String idPeli;
            for (int x = 0; x < store7.size(); x++) {
                nuevo7 = store7.get(x);
                idPeli = "" + nuevo7.getFilmId();
                if (idPeli.equals(pelicula)) {
                    out.println("<h1>Actores de la pelicula: " + nuevo7.getTitle() + "</h1>");
                }

            }
        %>
        <hr style="width: 50%;margin-left: 25%">
        <%
            List<Actor> actores = consulta.getActores(pelicula);
            Actor ac = null;
            for (int x = 0; x < actores.size(); x++) {
                ac = actores.get(x);
                out.println(ac.getFirstName()+" "+ac.getLastName()+"<br></br>");
                
            }

        %>
        <hr style="width: 50%;margin-left: 25%">
    </body>
</html>
