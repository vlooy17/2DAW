<%-- 
    Document   : Datos.jsp
    Created on : 15-feb-2019, 9:58:48
    Author     : alumno_2DAW
--%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos</h1>
         <bean:write name="FormularioForm" property="nombre"/>
         
    </body>
</html:html>
