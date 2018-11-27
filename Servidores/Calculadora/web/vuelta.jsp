<%-- 
    Document   : vuelta
    Created on : 05-oct-2018, 12:03:26
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%

            ServletContext contexto = getServletContext();
            String num1 = (String) contexto.getAttribute("venta");
            String num2 = (String) contexto.getAttribute("entrega");

            double venta = Double.parseDouble(num1);
            double entrega = Double.parseDouble(num2);
            double resto = 0;
            int cambio[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
            double vuelta = 0;
            resto = entrega - venta;
            vuelta = resto;
            vuelta = Math.round(vuelta * 100d) / 100d;
            resto = vuelta;
            if (resto >= 50) {
                cambio[0] = (int) resto / 50;
                resto = (resto % 50);
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 20) {
                cambio[1] = (int) resto / 20;
                resto = resto % 20;
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 10) {
                cambio[2] = (int) resto / 10;
                resto = resto % 10;
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 5) {
                cambio[3] = (int) resto / 5;
                resto = resto % 5;
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 2) {
                cambio[4] = (int) resto / 2;
                resto = resto % 2;
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 1) {
                cambio[5] = (int) resto / 1;
                resto = resto % 1;
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 0.5) {
                cambio[6] = (int) (resto / (0.5));
                resto = resto % (0.5);
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 0.2) {
                cambio[7] = (int) (resto / (0.2));
                resto = resto % (0.2);
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 0.1) {
                cambio[8] = (int) (resto / (0.1));
                resto = resto % (0.1);
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 0.05) {
                cambio[9] = (int) (resto / (0.05));
                resto = resto % (0.05);
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 0.02) {
                cambio[10] = (int) (resto / (0.02));
                resto = resto % (0.02);
                resto = Math.round(resto * 100d) / 100d;
            }
            if (resto >= 0) {
                cambio[11] = (int) (resto / (0.01));
                resto = resto % (0.01);
                resto = Math.round(resto * 100d) / 100d;

            }


        %>
        <h1>Datos de entada</h1>
        <h4>Importe venta: <%=num1%></h4>
        <h4>Cantidad entregada: <%=num2%></h4>

        <h1>Datos de salida</h1>

        <h4>El cambio seria <%=vuelta%></h4>
        <%
            if (cambio[0] > 0) {
                out.println(cambio[0] + " billetes de 50 euros");
                out.println("<br>");
            }
            if (cambio[1] > 0) {
                out.println(cambio[1] + " billetes de 20 euros");
                out.println("<br>");
            }
            if (cambio[2] > 0) {
                out.println(cambio[2] + " billetes de 10 euros");
                out.println("<br>");
            }
            if (cambio[3] > 0) {
                out.println(cambio[3] + " billetes de 5 euros");
                out.println("<br>");
            }
            if (cambio[4] > 0) {
                out.println(cambio[4] + " monedas de 2 euros");
                out.println("<br>");
            }
            if (cambio[5] > 0) {
                out.println(cambio[5] + " monedas de 1 euro");
                out.println("<br>");
            }
            if (cambio[6] > 0) {
                out.println(cambio[6] + " monedas de 50 centimos");
                out.println("<br>");
            }
            if (cambio[7] > 0) {
                out.println(cambio[7] + " monedas de 20 centimos");
                out.println("<br>");
            }
            if (cambio[8] > 0) {
                out.println(cambio[8] + " monedas de 10 centimos");
                out.println("<br>");
            }
            if (cambio[9] > 0) {
                out.println(cambio[9] + " monedas de 5 centimos");
                out.println("<br>");
            }
            if (cambio[10] > 0) {
                out.println(cambio[10] + " monedas de 2 centimos");
                out.println("<br>");
            }
            if (cambio[11] > 0) {
                out.println(cambio[11] + " monedas de 1 centimo");
                out.println("<br>");
            }

        %>
    </body>
</html>
