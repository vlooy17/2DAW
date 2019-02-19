<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
    </head>
    <body style="background-color: white">
        <h2><bean:message key="datos.title"/></h2>
        <table 
            <tr>
                <td>
                    <bean:message key="datos.nombre"/>
                    <span style="color: blue"><bean:write name="FormularioForm" property="nombre"/></span>
                </td>
                <td>
                    <bean:message key="datos.apellidos"/>
                    <span style="color: blue"><bean:write name="FormularioForm" property="apellidos"/></span>
                </td>
            </tr>
            <tr>
                <td>
                    <bean:message key="datos.email"/>
                    <span style="color: blue"><bean:write name="FormularioForm" property="email"/></span>
                </td>
                <td>
                    <bean:message key="datos.cp"/>
                    <span style="color: blue"><bean:write name="FormularioForm" property="codigoPostal"/></span>
                </td>
            </tr>
        </tr>
    </table>
    <bean:message key="datos.genero"/>
    <span style="color: blue"><bean:write name="FormularioForm" property="losSeleccionados"/></span><br>
    <bean:message key="datos.info"/>
    <span style="color: blue"><bean:write name="FormularioForm" property="info"/></span>
</body>
</html:html>
