<%-- 
    Document   : DelegadaParametros
    Created on : 05-oct-2018, 11:42:17
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página jsp en la que delega la de inicio de aplicación pasandole parámetros</title>
    </head>
    <body>
        <h2>Página jsp en la qie delega FordwardParametros.jsp</h2>
        Podias haberlo hecho a un servlet o a una pagina html estática, pero me has elegido a mi u eso implica muchas cosas jejeje<p>
        <font color="blue">Observa que se mantiene el url de la jsp de inicio</font><p> 
            <font color="red">Bienvenido</font>    
            <%=request.getParameter("nombre")%><%=request.getParameter("apellidos")%>
    </body>
</html>
