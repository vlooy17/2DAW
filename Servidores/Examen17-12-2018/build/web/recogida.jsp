<%-- 
    Document   : recogida
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
        <div style="text-align: right;color: red;">
            <%
                HttpSession sesion = request.getSession();
                long fecha;
                fecha = sesion.getCreationTime();
                Date fechaC = new Date(fecha);
                SimpleDateFormat format = new SimpleDateFormat("dd//MM/yyyy kk:mm:ss");
                String fechaF = format.format(fechaC);
                String usuario = (String) sesion.getAttribute("usuario");
            %>
            <p>Hola <%=usuario%></p>
            <p>Usted ha iniciado sesion a <%=fechaF%></p>
        </div>
        <div style="color: green;">
            <form action="ServletRecogida" method="POST">
                <div style="float: left;margin-left: 20%;">
                    <img src="domicilio.gif" width="209" height="167" alt="domicilio"/>
                    <p>Llevar a domicilio<input style="color: greenyellow;" type="radio" name="recoger" value="domicilio" /></p>
                </div>
                <div style="float: right;text-align: center;margin-right: 20%;">
                    <img src="tienda.gif" width="209" height="167" alt="tienda"/>
                    <p> Recoger en tienda<input type="radio" name="recoger" value="tienda" /></p>
                    
                </div>
                <div style="float: left;margin-top: 17%;margin-left: 10%;"><input type="submit" value="Aceptar" /></div>
            </form>  
            
        </div>
        <div>
            <img src="pie.gif" width="1372" height="51" alt="pie"/>
        </div>
    </body>
</html>


