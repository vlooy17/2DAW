<%-- 
    Document   : pedido
    Created on : 17-dic-2018, 12:06:27
    Author     : DOCENTRO
--%>

<%@page import="Controlador.BD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Pizzas"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div style="float: left; text-align: center;width: 40%;margin-top: 2%;color: red;">
            <form action="ServletPedido" method="POST">
                <p>
                    Amantes de la carne: <select name="carne">
                        <option value="0">**********</option>
                        <%
                            ArrayList<Pizzas> lista = new ArrayList<Pizzas>();
                            lista = BD.consultaPizzas();
                            for (int i = 0; i < lista.size(); i++) {
                                if(lista.get(i).getIdpizza().equals("2")){
                                    out.println("<option>"+lista.get(i).getNompizzas()+"</option>");
                                }
                                    
                                }
                        %>
                    </select>
                    <select name="cantidad1">
                        <option value="0">*</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </p>
                <p>
                    Lo más queseros: <select name="queso">
                        <option value="0">**********</option>
                        <%
                            lista = BD.consultaPizzas();
                            for (int i = 0; i < lista.size(); i++) {
                                if(lista.get(i).getIdpizza().equals("3")){
                                    out.println("<option>"+lista.get(i).getNompizzas()+"</option>");
                                }
                                    
                                }
                        %>
                    </select>
                    <select name="cantidad2">
                        <option value="0">*</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </p>
                <p>

                    Los clasicos: <select name="clasicos">
                        <option value="0">**********</option>
                        <%
                            lista = BD.consultaPizzas();
                            for (int i = 0; i < lista.size(); i++) {
                                if(lista.get(i).getIdpizza().equals("4")){
                                    out.println("<option>"+lista.get(i).getNompizzas()+"</option>");
                                }
                                    
                                }
                        %>
                    </select>
                    <select name="cantidad3">
                        <option value="0">*</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </p>
                <p>
                    infantil: <select name="infantil">
                        <option value="0">**********</option>
                        <%
                            lista = BD.consultaPizzas();
                            for (int i = 0; i < lista.size(); i++) {
                                if(lista.get(i).getIdpizza().equals("6")){
                                    out.println("<option>"+lista.get(i).getNompizzas()+"</option>");
                                }
                                    
                                }
                        %>
                    </select>
                    <select name="cantidad4">
                        <option value="0">*</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </p>
                <p>
                    Sin gluten: <select name="gluten">
                        <option value="0">**********</option>
                        <%
                            lista = BD.consultaPizzas();
                            for (int i = 0; i < lista.size(); i++) {
                                if(lista.get(i).getIdpizza().equals("5")){
                                    out.println("<option>"+lista.get(i).getNompizzas()+"</option>");
                                }
                                    
                                }
                        %>
                    </select>
                    <select name="cantidad5">
                        <option value="0">*</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </p>
                <input type="submit" value="Confirmar Pedido" />
                <br></br>
            </form>
        </div>
        <div style="float:right;">
            <img src="kk.gif" width="644" height="300" alt="grupo"/>
        </div>
        <div>
            <img src="pie.gif" width="1372" height="51" alt="pie"/>

        </div>
    </body>
</html>

