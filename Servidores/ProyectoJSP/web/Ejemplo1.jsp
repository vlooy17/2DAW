<%-- 
    Document   : Ejemplo1
    Created on : 04-oct-2018, 9:31:27
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primera página</title>
    </head>
    <body>
       
        <%
            
            String alumno = request.getParameter("nombre");
            if(alumno == null){
                alumno = "mundo";
            }

        %>
        Hola <font color="red"><b><%=alumno%></b></font>,cómo te va la vida?<p>
        <hr>
        <%out.println(getServletInfo());%>
        
    </body>
</html>
