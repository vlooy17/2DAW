<%-- 
    Document   : alta
    Created on : 07-nov-2018, 8:41:54
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@include file="/index.html" %>
        <br>
        <h1>Introduzca sus datos para dar de alta</h1>
        <form method="POST" action="Usuario"><table border="0" cellspacing="4">
                <tbody>
                    <tr>
                        <td>Usuario</td>
                        <td><input type="text" name="usuario" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="password" name="clave" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
