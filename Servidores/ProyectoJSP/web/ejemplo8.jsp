<%-- 
    Document   : ejemplo8
    Created on : 05-oct-2018, 11:27:50
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo del uso de la acción forward</title>
    </head>
    <body>
        <h1>Este texto no se va a ver</h1>
        <!--
        Se observara que lo que esta por encima y por debajo de la linea que contine
        a la accion forward, no se muestra en la respuesta al mcliente. esta accion suele aparecer varias veces en una jsp
        convenientemente combinada con scriplets que captura parámeteos d ela petición y delegan
        en la jsp,servlet o página html adecuada, en funcion del valor de los parámetroa
        -->
        <jsp:forward page="/Delegada.jsp"/>

        <!-- tambien valido -->
        <%-- <jsp:forward pages="Delegada.jso"/> --%>

        ESTE TAMPOCO
    </body>

</html>
