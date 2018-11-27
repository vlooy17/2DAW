<%-- 
    Document   : ejemplo7
    Created on : 05-oct-2018, 11:16:21
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boletín de noticias</title>
    </head>
    <body>
        <h1>Boletin de noticias que precisa una constante actualización</h1>
        Resumen de noticias:<p> 
        <ol>
            <li><jsp:include page="/Noticia1.html"/><hr><p>
            <li><jsp:include page="/Noticia2.html"/><hr><p>

                    <!-- Se pasa un parametro que capturará la jsp objetivo noticia2.jsp -->
            <li><jsp:include page="/Noticia3.jsp">
                    <jsp:param name="origen" value="El Pais"/>
                </jsp:include><hr><p> 
        </ol>    
    </body>
</html>
