<%-- 
    Document   : telefono
    Created on : 17-dic-2018, 12:59:54
    Author     : DOCENTRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.BD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Pizzas"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div style="background-color: red; width: 100%;height: 75px;"><img style="margin-top: 1%;" src="logo_telepizza.gif" width="209" height="43" alt="logo_telepizza"/>
        </div>
        <div style="text-align: center;color: red;">
            <%
                HttpSession sesion = request.getSession();
                long fecha;
                fecha = sesion.getCreationTime();
                Date fechaC = new Date(fecha);
                SimpleDateFormat format = new SimpleDateFormat("dd//MM/yyyy kk:mm:ss");
                String fechaF = format.format(fechaC);
                String usuario = (String) sesion.getAttribute("usuario");
            %>
            <p><%=usuario%> Para terminar su pedido ingrese su numero de telefono</p>

        </div>
            <div style="text-align: center;">
            <form action="ServletTelefono" method="POST">
                Introduzca su telefono <input type="number" name="telefono"/>
                <br></br>
                <input type="submit"value="Enviar"/>
            </form>
            <div>
                <img src="pie.gif" width="1372" height="51" alt="pie"/>
            </div>
    </body>
</html>


