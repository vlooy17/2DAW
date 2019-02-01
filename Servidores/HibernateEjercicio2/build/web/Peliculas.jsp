<%-- 
    Document   : Inicio
    Created on : 18-ene-2019, 9:46:41
    Author     : alumno_2DAW
--%>

<%@page import="Ayudante.FilmCategory"%>
<%@page import="Ayudante.Inventory"%>
<%@page import="Ayudante.Customer"%>
<%@page import="java.util.Iterator"%>
<%@page import="Ayudante.Store"%>
<%@page import="java.util.List"%>
<%@page import="Ayudante.Category"%>
<%@page import="Ayudante.Ayuda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Activos</title>
    </head>
    <body style="text-align: center;">
        <div>
            <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
        </div>
        <hr style="width: 50%;margin-left: 25%"></hr>
        
                    <%
                        int idC = Integer.parseInt(request.getParameter("peliculas"));
                        Ayuda fh = new Ayuda();
                        List<Category> lis = fh.getCategoria();
                        Category cat = null;
                        String titulo="";
                        for (int x = 0; x < lis.size(); x++) {
                            if (idC == (lis.get(x).getCategoryId())) {
                                cat = lis.get(x);
                                titulo = cat.getName();
                            }
                        }
                    %>
        <h1>Categoria : <%out.println(titulo);%> </h1>

        <hr style="width: 50%;margin-left: 25%"></hr>
        <table style="margin-left: 30%;">
            <thead>
                <tr>
                    <th>Película </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                </tr>         
                <%
                    ServletContext contexto = getServletContext();
                    RequestDispatcher rd;
                    List<Store> store = fh.getTienda();
                    Store nuevo = null;
                    String id = (String) contexto.getAttribute("videoclub");
                    int id2 = Integer.parseInt(id);

                    for (int x = 0; x < store.size(); x++) {
                        nuevo = store.get(x);
                        if (id2 == nuevo.getStoreId()) {
                            for (Iterator it = nuevo.getInventories().iterator();
                                    it.hasNext();) {
                                Inventory z = (Inventory) it.next();

                                for (Iterator it2 = cat.getFilmCategories().iterator(); it2.hasNext();) {
                                    FilmCategory z1 = (FilmCategory) it2.next();

                                    if (z.getFilm().getFilmId() == z1.getFilm().getFilmId()) {
                                        
                                        out.println("<tr>");
                                        out.println("<td>" + z.getFilm().getTitle() + "</td>");
                                        out.println("<td><a href='informacion.jsp?id="+z.getFilm().getFilmId()+"'><Mas informacion</a><td>");
                                        out.println("</tr>");
                                        
                                    
                                    }

                                }

                            }

                        }
                    }
                %>
            </tbody>
        </table>
        <hr style="width: 50%;margin-left: 25%"></hr>
    </body>
</html>
