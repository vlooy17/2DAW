<%-- 
    Document   : pedido
    Created on : 12-dic-2018, 9:19:29
    Author     : alumno_2DAW
--%>

<%@page import="Controlador.Alimentos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String nombre = (String) sesion.getAttribute("nombre");
            long fecha = sesion.getCreationTime();
            Date fechaC = new Date(fecha);
            SimpleDateFormat formatoFecha = new SimpleDateFormat("dd//MM/yyyy kk:mm:ss");
            fecha = sesion.getLastAccessedTime();
            String fechaF = formatoFecha.format(fechaC);
        %>
        <div style="float: left">
            <img src="images/img-logo-head.gif" width="69" height="68" alt="img-logo-head"/>
        </div>
        <div style="text-align: right;color: #004411;">
            <p>Bienvenido <%=nombre%></p>
            <p>Usted ha accedido a nuestra pagina web a las <%=fechaF%> </p>
        </div>
        <div style="margin-left: 10%;">
            <form>

                <table border="0">
                    <tbody>
                        <tr>
                            <td><img src="images/menus.gif" width="286" height="64" alt="menus"/></td>
                            <td><select name="menu">
                                    <option>********************</option>
                                    <%
                                        ArrayList<Alimentos> lista;
                                        lista = BaseDatos.Base.consultaAlimentos("SELECT * FROM menus m;");
                                        for (int i = 0; i < lista.size(); i++) {
                                            out.println("<option>" + lista.get(i).getDescripcion() + "</option>");
                                        }
                                    %>

                                </select></td>
                        </tr>
                        <tr>
                            <td><img src="images/sandwis.gif" width="293" height="67" alt="sandwis"/></td>
                            <td><select name="sandiwis">
                                    <option>********************</option>
                                    <%
                                        ArrayList<Alimentos> lista1;
                                        lista1 = BaseDatos.Base.consultaAlimentos("SELECT * FROM sandwiches s;");
                                        for (int i = 0; i < lista1.size(); i++) {
                                            out.println("<option>" + lista1.get(i).getDescripcion() + "</option>");
                                        }
                                    %>
                                </select></td>
                        </tr>
                        <tr>
                            <td><img src="images/complementos.gif" width="293" height="67" alt="complementos"/></td>
                            <td><select name="completmentos">
                                    <option>********************</option>
                                    <%
                                        ArrayList<Alimentos> lista2;
                                        lista2 = BaseDatos.Base.consultaAlimentos("SELECT * FROM complementos c;");
                                        for (int i = 0; i < lista2.size(); i++) {
                                            out.println("<option>" + lista2.get(i).getDescripcion() + "</option>");
                                        }
                                    %>
                                </select></td>
                        </tr>
                        <tr>
                            <td><img src="images/ensaladas.gif" width="293" height="67" alt="ensaladas"/></td>
                            <td><select name="ensaladas">
                                    <option>********************</option>
                                    <%
                                        ArrayList<Alimentos> lista3;
                                        lista3 = BaseDatos.Base.consultaAlimentos("SELECT * FROM ensaladas e;");
                                        for (int i = 0; i < lista3.size(); i++) {
                                            out.println("<option>" + lista3.get(i).getDescripcion() + "</option>");
                                        }
                                    %>
                                </select></td>
                        </tr>
                        <tr>
                            <td><img src="images/bebidas.gif" width="293" height="67" alt="bebidas"/></td>
                            <td><select name="bebidas">
                                    <option>********************</option>
                                    <%
                                        ArrayList<Alimentos> lista4;
                                        lista4 = BaseDatos.Base.consultaAlimentos("SELECT * FROM bebidas b;");
                                        for (int i = 0; i < lista4.size(); i++) {
                                            out.println("<option>" + lista4.get(i).getDescripcion() + "</option>");
                                        }
                                    %>
                                </select></td>
                        </tr>
                    </tbody>
                </table>    

            </form>
        </div>


    </body>
</html>
