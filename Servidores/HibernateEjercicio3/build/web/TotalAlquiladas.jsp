<%-- 
    Document   : TotalAlquiladas
    Created on : 01-feb-2019, 13:11:16
    Author     : alumno_2DAW
--%>

<%@page import="java.util.List"%>
<%@page import="Ayudante.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center">
        <div>
            <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
        </div>
        
            <hr style="width: 50%;margin-left: 25%"></hr>
        <%

            Ayuda consulta = new Ayuda();
            
            Film nuevo1;
            String videoclub = request.getParameter("videoclub6");
            int tramo = Integer.parseInt(request.getParameter("t"));
            //long totalC = consulta.getTotalClientes(videoclub);
            Ayuda fh1 = new Ayuda();
            List<Film> pelis = consulta.getFilm(tramo);
            out.println("<table style='width: 50%;margin-left: 25%'>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Titulo Pelicula</th>");
            out.println("<th>Total Alquiladas</th>");
            out.println("</tr>");
      
            out.println("</thead><tbody>");
            for (int i = 0; i < pelis.size(); i++) {
                nuevo1 = pelis.get(i);
                String id = "" + pelis.get(i).getFilmId();
                long total = fh1.getAlquiladas(id,videoclub);
                
                    out.println("<tr>");
                    out.println("<td>"+nuevo1.getTitle()+"</td>");
                    out.println("<td>"+total+"</td>");
                    out.println("</tr>");
                    
                

            }
            out.println("</tbody>");
            out.println("</table>");
            if (tramo >= 10) {
                out.println("<a href='TotalAlquiladas.jsp?t=" + (tramo - 10) + "&videoclub6=" + videoclub + "'>Anterior</a>");
            }
            if (pelis.size() == 10) {
                out.println("<a href='TotalAlquiladas.jsp?t=" + (tramo + 10) + "&videoclub6=" + videoclub + "'>Siguiente</a>");
            }
        
        %>
         <hr style="width: 50%;margin-left: 25%">
    </body>
</html>
