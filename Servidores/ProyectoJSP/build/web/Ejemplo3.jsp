<%-- 
    Document   : Ejemplo3
    Created on : 04-oct-2018, 10:04:48
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estudia de la directiva include</title>
    </head>
    <body>
        <h1>Ejemplo de uso de la directiva include</h1>
        <font color="red"><b>
            <%@include file="/Ejemplo2.jsp" %><p> 
        </b></font>
        <font color="blue"><b> 
            <%@include file = "/index.html" %><p>
        </b></font>
        <b><i>Curriculum Paloma</i></b>
    </body>
</html>
