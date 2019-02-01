<%-- 
    Document   : Inicio
    Created on : 18-ene-2019, 9:46:41
    Author     : alumno_2DAW
--%>

<%@page import="Ayudante.Store"%>
<%@page import="java.util.List"%>
<%@page import="Ayudante.Category"%>
<%@page import="Ayudante.Ayuda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center;">
        <form method="GET" action="/HibernateEjercicio2/ComprobarServlet">
            <div>
                <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
            </div>
            <div>
                <hr style="width: 50%;margin-left: 25%"></hr>
                VideoClub:<select name="videoclub">
                    <%Ayuda fh = new Ayuda();
                        List<Store> store = fh.getTienda();
                        Store nuevo = null;
                        for (int x = 0; x < store.size(); x++) {
                            nuevo = store.get(x);
                            out.println("<option value='" + nuevo.getStoreId() + "'>" + nuevo.getNombre()+ "</opton>");
                        }
                    %>
                </select>
                <hr style="width: 50%;margin-left: 25%"></hr>
            </div>
            <div>
                <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">DATOS DEL NEGOCIO</p>
                <input type="radio" name="Datos" value="DatosNegocios" />Datos del negocio
                <br></br>
                <input type="radio" name="Datos" value="DatosEmpleado" />Datos del empleado
                <br></br>
                <input type="submit" value="Mostrar" name="M1" />
            </div>
            <div>
                <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">GESTIÓN DEL CLIENTE:</p>
                <input type="radio" name="Lista" value="Activos" />Listado de clientes activos
                <br></br>
                <input type="radio" name="Lista" value="Inactivos" />Listado de clientes inactivos
                <br></br>
                <input type="submit" value="Mostrar" name="M2" />
            </div>
            <div>
                <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">GESTIÓN DE INVENTARIO:</p>
                Categorias de películas:<select name="peliculas">
                    <%
                        List<Category> categorias = fh.getCategoria();
                        Category nuevo1 = null;
                        for (int x = 0; x < categorias.size(); x++) {
                            nuevo1 = categorias.get(x);
                            out.println("<option value='" + nuevo1.getCategoryId() + "'>" + nuevo1.getName() + "</opton>");
                        }
                    %>
                </select>
                <br></br>
                <input type="submit" value="Mostrar" name="M3" />
            </div>
        </form>
    </body>
</html>
