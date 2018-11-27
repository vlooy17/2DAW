<%-- 
    Document   : ejemplo9
    Created on : 05-oct-2018, 11:39:06
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo del uso de la acción forward con parámetros</title>
    </head>
    <body>
        <!-- Delegar pasando parametros -->
        <jsp:forward page="/DelegadaParametros.jsp">
            <jsp:param name="nombre" value=" Jose "/>
            <jsp:param name="apellidos" value="Fernandez cucu"/>
        </jsp:forward>
    </body>
</html>
