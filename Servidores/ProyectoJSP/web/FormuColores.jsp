<%-- 
    Document   : FormuColores
    Created on : 05-oct-2018, 10:58:22
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <titleformuColores</title>
</head>
<body>
    <h2>Formulario de nombres y colores</h2>
    <h3>Rellena los datos indicados y pulsa Enviar</h3>

    <form action="/ProyectoJSP/ejemplo5.jsp">

        <table>
            <tr><td>Introduce tu nombre</td><td><input type="text" name="nombre" size="10"></td></tr>
            <tr><td>Color de fondo en ingles</td><td><input type="text" name="color" size="10"></td></tr>
        </table><p>
            <input type="submit" value="Enviar">    

    </form>

</body>
</html>
