<%-- 
    Document   : ejemplo6
    Created on : 05-oct-2018, 11:10:45
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comentarios</title>
    </head>
    <body>
        <h1>Comentarios en las paginas jsp</h1>
        <!-- comentario html que se ve en la respuesta (Ver/Código fuente) y en la jsp-->
        <%--comentario jsp que solo se ve en la jsp--%>

        <%// comentario de linea Java se ve en la jsp y en su servlet asociado %>
        <%

            /*comentario en Java.
            se ve donde el anterior.*/
            out.println("CUCU");
            //out.println("No se verá si no descomentas");
        %>
    </body>
</html>
