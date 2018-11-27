<%-- 
    Document   : Datos
    Created on : 25-oct-2018, 9:56:53
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Datos</title>
    </head>
    <body>
        <h1>Introduzca usuario y clave para dar de alta un nuevo libro</h1>
        <form action="/Libros_Libreria/kk" method="POST">
            <input type="text" name="usuario" value="">  Introduzca usuario</input>
            <br></br>
            <input type="password" name="clave" value="">   Introduzca clave</input>
            <br></br>
            <input type="submit" value="Enviar"></input>
        </form>
        


    </body>
</html>
