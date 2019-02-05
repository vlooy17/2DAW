<%-- 
    Document   : inicio
    Created on : 28-ene-2019, 13:35:04
    Author     : alumno_2DAW
--%>

<%@page import="Ayudante.Film"%>
<%@page import="Ayudante.Customer"%>
<%@page import="Ayudante.Category"%>
<%@page import="Ayudante.Ayuda"%>
<%@page import="java.util.List"%>
<%@page import="Ayudante.Store"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center;">
        <div>
            <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
        </div>
        <div>
            <hr style="width: 50%;margin-left: 25%"></hr>
            <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">Listado de peliculas alquiladas por un cliente</p>
            <form method="GET" action="ListadoClientes.jsp">
                VideoClub:<select name="videoclub">
                    <%Ayuda fh = new Ayuda();
                        List<Store> store = fh.getTienda();
                        Store nuevo = null;
                        for (int x = 0; x < store.size(); x++) {
                            nuevo = store.get(x);
                            out.println("<option value='" + nuevo.getStoreId() + "'>" + nuevo.getNombre() + "</option>");
                        }
                    %>
                </select>
                Cliente:<select name="cliente">
                    <%Ayuda fh1 = new Ayuda();
                        List<Customer> store1 = fh1.getClientes();
                        Customer nuevo1 = null;
                        for (int x = 0; x < store1.size(); x++) {
                            nuevo1 = store1.get(x);
                            out.println("<option value='" + nuevo1.getCustomerId() + "'>" + nuevo1.getFirstName() + "</option>");
                        }
                    %>
                    <input  type="hidden" value="0" name="t">
                    <input type="submit" value="Mostrar" name="M" />
            </form>

        </select>
    </div>
    <div>
        <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">Total de dinero gastado por un cliente en un mes</p>
        <form method="GET" action="TotalGastado.jsp">
            VideoClub:<select name="videoclub2">
                <%Ayuda fh3 = new Ayuda();
                    List<Store> store3 = fh3.getTienda();
                    Store nuevo3 = null;
                    for (int x = 0; x < store3.size(); x++) {
                        nuevo3 = store3.get(x);
                        out.println("<option value='" + nuevo3.getStoreId() + "'>" + nuevo3.getNombre() + "</option>");
                    }
                %>
            </select>
            Cliente:<select name="cliente2">
                <%Ayuda fh2 = new Ayuda();
                    List<Customer> store2 = fh2.getClientes();
                    Customer nuevo2 = null;
                    for (int x = 0; x < store2.size(); x++) {
                        nuevo2 = store2.get(x);
                        out.println("<option value='" + nuevo2.getCustomerId() + "'>" + nuevo2.getFirstName() + "</option>");
                    }
                %>
            </select>
            <br></br>
            Mes desde:<select name="mesDesde">
                <option value="2005-05-01">MAYO</option>
                <option value="2005-06-01">JUNIO</option>
                <option value="2005-07-01">JULIO</option>
                <option value="2005-08-01">AGOSTO</option>
            </select>
            Mes hasta:<select name="mesHasta">
                <option value="2005-05-31">MAYO</option>
                <option value="2005-06-30">JUNIO</option>
                <option value="2005-07-31">JULIO</option>
                <option value="2005-08-30">AGOSTO</option>
            </select>
            <input  type="hidden" value="0" name="t">
            <input type="submit" value="Mostrar" name="M1" />
        </form>

    </div>
    <div>
        <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">TOTAL GASTADO:</p>
        <form method="GET" action="TotalClientes.jsp">
            VideoClub:<select name="videoclub5">
                <%Ayuda fh5 = new Ayuda();
                    List<Store> store5 = fh5.getTienda();
                    Store nuevo5 = null;
                    for (int x = 0; x < store5.size(); x++) {
                        nuevo5 = store5.get(x);
                        out.println("<option value='" + nuevo5.getStoreId() + "'>" + nuevo5.getNombre() + "</option>");
                    }
                %>
            </select>
            <input  type="hidden" value="0" name="t">
            <input type="submit" value="Mostrar" name="M2" />
        </form>
    </div>
    <div>
        <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">GESTIÓN DE INVENTARIO:</p>
        <form method="GET" action="TotalAlquiladas.jsp">
            VideoClub:<select name="videoclub6">
                <%Ayuda fh6 = new Ayuda();
                    List<Store> store6 = fh6.getTienda();
                    Store nuevo6 = null;
                    for (int x = 0; x < store6.size(); x++) {
                        nuevo6 = store6.get(x);
                        out.println("<option value='" + nuevo6.getStoreId() + "'>" + nuevo6.getNombre() + "</option>");
                    }
                %>
                <input  type="hidden" value="0" name="t">
                <input type="submit" value="Mostrar" name="M3" />
        </form>
    </select>
    <br></br>

</div>
<div>
    <p style="background-color:#3871AF;color:white;width: 50%;margin-left: 25%;">GESTIÓN DE INVENTARIO:</p>
    <form method="GET" action="Actores.jsp">
        Peliculas:<select name="pelis8">
            <%Ayuda fh7 = new Ayuda();
                List<Film> store7 = fh7.getFilm2();
                Film nuevo7 = null;
                for (int x = 0; x < store7.size(); x++) {
                    nuevo7 = store7.get(x);
                    out.println("<option value='" + nuevo7.getFilmId() + "'>" + nuevo7.getTitle() + "</option>");
                }
            %>
            <input type="submit" value="Mostrar" name="M3" />
    </form>
</select>
<br></br>

</div>
</body>
</html>

