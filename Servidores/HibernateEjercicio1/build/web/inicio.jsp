<%-- 
    Document   : inicio
    Created on : 17-ene-2019, 9:43:08
    Author     : alumno_2DAW
--%>

<%@page import="java.util.List"%>
<%@page import="Ayuda.Category"%>
<%@page import="Ayuda.Ayudante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <div class="container clearfix">
            <p class="titulo">Ejemplo 1 Hibernate. Listado de Peliculas segun la categoria</p>
            <form action="Listado.jsp" method="POST">
                <p class="text">Categoria</p>
                <select class="_select" name="idCategorias">
                    <%Ayudante fh = new Ayudante();
                        List<Category> categorias = fh.getCategoria();
                        Category nuevo = null;
                        for(int x = 0; x<categorias.size();x++){
                            nuevo = categorias.get(x);
                            out.println("<option value='"+nuevo.getCategoryId()+"'>"+nuevo.getName()+"</opton>");
                        }
                        
                        //SELECT *  FROM category c,film_category f,film fl WHERE c.category_id = f.category_id AND f.film_id = fl.film_id and c.category_id=6;
                    %>
                </select>
                <button class="mostrar">Mostrar Peliculas</button>
            </form>
        </div>
    </body>
</html>
