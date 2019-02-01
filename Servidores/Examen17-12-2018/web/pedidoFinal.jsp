<%-- 
    Document   : pedidoFinal
    Created on : 17-dic-2018, 12:51:33
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
        <div style="text-align: center;color: green;">
            <%

                HttpSession sesion = request.getSession();
                long fecha;
                fecha = sesion.getLastAccessedTime();
                Date fechaC = new Date(fecha);
                SimpleDateFormat format = new SimpleDateFormat("dd//MM/yyyy kk:mm:ss");
                String fechaF = format.format(fechaC);
                String usuario = (String) sesion.getAttribute("usuario");
            %>
            <p>Hola <%=usuario%></p>
            <p>Usted ha tramitado el pedido <%=fechaF%></p>
        </div>

        <div style="float: left; text-align: center;width: 40%;margin-top: 2%;color: green;margin-left: 30%;">
            <table border="0">
                <thead>
                    <tr>
                        <th>Cantidad</th>
                        <th>Pizza</th>
                        <th> Precio</th>
                    </tr>
                </thead>
                <tbody>


                    <%
                        String carnes = (String) sesion.getAttribute("carnes");
                        String quesos = (String) sesion.getAttribute("quesos");
                        String infantil = (String) sesion.getAttribute("infantil");
                        String gluten = (String) sesion.getAttribute("gluten");
                        String clasicos = (String) sesion.getAttribute("clasicos");
                        String cant1 = (String) sesion.getAttribute("cant1");
                        String cant2 = (String) sesion.getAttribute("cant2");
                        String cant3 = (String) sesion.getAttribute("cant3");
                        String cant4 = (String) sesion.getAttribute("cant4");
                        String cant5 = (String) sesion.getAttribute("cant5");
                        ArrayList<Pizzas> lista = new ArrayList<Pizzas>();
                        lista = BD.consultaPizzas();
                        String precio=null;
                        int mult = 0;
                        int pre=0;
                        int acu=0;
                        if (!carnes.equals("0")) {
                            
                            for (int i = 0; i < lista.size(); i++) {
                                if (lista.get(i).getNompizzas().equals(carnes)) {
                                    precio = lista.get(i).getPrecios();
                                }

                            }
                            out.println("<tr>");
                            out.println("<td>" + cant1 + "</td><td>" + carnes + "</td><td>" + precio + "</td>");
                            out.println("</tr>");
                            pre = Integer.parseInt(precio);
                            mult = Integer.parseInt(cant1);
                            acu = acu +(pre*mult);
                        }
                        if (!quesos.equals("0")) {
                             for (int i = 0; i < lista.size(); i++) {
                                if (lista.get(i).getNompizzas().equals(quesos)) {
                                    precio = lista.get(i).getPrecios();
                                }

                            }
                            out.println("<tr>");
                            out.println("<td>" + cant2 + "</td><td>" + quesos + "</td><td>" + precio + "</td>");
                            out.println("</tr>");
                            pre = Integer.parseInt(precio);
                            mult = Integer.parseInt(cant2);
                            acu = acu +(pre*mult);
                        }
                        if (!clasicos.equals("0")) {
                             for (int i = 0; i < lista.size(); i++) {
                                if (lista.get(i).getNompizzas().equals(clasicos)) {
                                    precio = lista.get(i).getPrecios();
                                }

                            }
                            out.println("<tr>");
                            out.println("<td>" + cant3 + "</td><td>" + clasicos + "</td><td>" + precio + "</td>");
                            out.println("</tr>");
                            pre = Integer.parseInt(precio);
                            mult = Integer.parseInt(cant3);
                            acu = acu +(pre*mult);
                        }
                        if (!infantil.equals("0")) {
                             for (int i = 0; i < lista.size(); i++) {
                                if (lista.get(i).getNompizzas().equals(infantil)) {
                                    precio = lista.get(i).getPrecios();
                                }

                            }
                            out.println("<tr>");
                            out.println("<td>" + cant4 + "</td><td>" + infantil + "</td><td>" + precio + "</td>");
                            out.println("</tr>");
                            pre = Integer.parseInt(precio);
                            mult = Integer.parseInt(cant4);
                            acu = acu +(pre*mult);
                        }
                        if (!gluten.equals("0")) {
                             for (int i = 0; i < lista.size(); i++) {
                                if (lista.get(i).getNompizzas().equals(gluten)) {
                                    precio = lista.get(i).getPrecios();
                                }

                            }
                            out.println("<tr>");
                            out.println("<td>" + cant5 + "</td><td>" + gluten + "</td><td>" + precio + "</td>");
                            out.println("</tr>");
                            pre = Integer.parseInt(precio);
                            mult = Integer.parseInt(cant5);
                            acu = acu +(pre*mult);
                        }

                    %>
                </tbody>
            </table>
            <p>GRACIAS CPOR CONFIAR EN NOSOTROS EN APROX 30 MIN TENDRA SU PEDIDO.</p>
            <p>EL TOTAL DE SU PEDIDO ES <%=acu%>.</p>
        </div>

        <div style="float:right;">
            <img src="gracias.gif" width="250" height="217" alt="gracias"/>

        </div>
        <div>
            <img src="pie.gif" width="1372" height="51" alt="pie"/>

        </div>
    </body>
</html>

