<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <html:base/>
    </head>
    <body style="background-color: white">
        
        <div id="imagen"><html:img srcKey="login.imagen" titleKey="login.imagen.alt"/></div>
        <table>
            <tr>
                <td><h4><bean:message key="login.identificacion"/></h4></td>
            </tr>
                <tr>
                    
                    <td>
                        <bean:message key="login.email"/><br>
                        <html:text property="email"/>
                    </td>
                    <td>
                        <bean:message key="login.contrasena"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <bean:message key="login.email.confirmacion"/><br>
                    </td>
                    <td>
                        <bean:message key="login.contrasena.confirmacion"/><br>
                    </td>
                </tr>
                <td><h4><bean:message key="login.personales"/></h4></td>
                <tr>
                    <td>
                        <bean:message key="login.nombre"/><br>
                    </td>
                    <td>
                        <bean:message key="login.provincia"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <bean:message key="login.apellidos"/><br>
                    </td>
                    <td>
                        <bean:message key="login.municipio"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <bean:message key="login.nif"/><br>
                    </td>
                    <td>
                        <bean:message key="login.telefono"/><br>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html:html>
