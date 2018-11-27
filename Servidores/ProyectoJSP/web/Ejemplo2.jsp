

<%@page import="java.util.Locale"%>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segunda página</title>
    </head>
    <body>
        <%
            Date hoy = new Date();
            DateFormat df = DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.MEDIUM, Locale.getDefault());
        %>
        Fecha en castellano y con formato medio: <%=df.format(hoy)%><p>
        <hr>
        <%
            String alumno = request.getParameter("nombre");
            if (alumno == null) {
                alumno = "mundo";
            }

        %>
        Hola <font color="red"><b><%=alumno%></b></font>,cómo te va la vida?<p>
        <hr>
        <%out.println(getServletInfo());%>
    </body>
</html>
