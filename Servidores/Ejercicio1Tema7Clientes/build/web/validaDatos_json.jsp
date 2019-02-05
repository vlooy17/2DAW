<%-- 
    Document   : validaDatos_json
    Created on : 05-feb-2019, 13:19:48
    Author     : alumno_2DAW
--%>

<%@page contentType="text/json" pageEncoding="UTF-8"%>
<%
    String fecha = request.getParameter("fecha_nacimiento");
    String cos = request.getParameter("codigo_postal");
    String tel = request.getParameter("telefono");
    
    
    String datos = "{telefono: '"+tel+"' , codigo_postal: '"+cos+"' , fecha_nacimiento:'"+fecha+"' }";
    
    out.println(datos);
    
%>
