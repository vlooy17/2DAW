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
        <html:form action="FormAction" focus="email" styleId="formulario" method="post">
            <table>
                <tr>
                    <td><h4><bean:message key="login.identificacion"/></h4></td>
                <tr>

                    <td>
                        <span style="color:red"><html:errors property="email"/></span><br>
                        <bean:message key="login.email"/><br>
                        <html:text property="email"/>
                    </td>
                    <td>
                        <span style="color:red"><html:errors property="clave"/></span><br>
                        <bean:message key="login.contrasena"/><br>
                        <html:text property="clave"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red"><html:errors property="email2"/></span><br>
                        <bean:message key="login.email.confirmacion"/><br>
                        <html:text property="email2"/>
                    </td>
                    <td>
                        <span style="color:red"><html:errors property="clave2"/></span><br>
                        <bean:message key="login.contrasena.confirmacion"/><br>
                        <html:text property="clave2"/>
                    </td>
                </tr>
                <td><h4><bean:message key="login.personales"/></h4></td>
                <tr>
                    <td>
                        <span style="color:red"><html:errors property="nombre"/></span><br>
                        <bean:message key="login.nombre"/><br>
                        <html:text property="nombre"/>
                    </td>
                    <td>
                        <span style="color:red"><html:errors property="provincia"/></span><br>
                        <bean:message key="login.provincia"/><br>
                        <html:text property="provincia"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red"><html:errors property="apellidos"/></span><br>
                        <bean:message key="login.apellidos"/><br>
                        <html:text property="apellidos"/>
                    </td>
                    <td>
                        <span style="color:red"><html:errors property="municipio"/></span><br>
                        <bean:message key="login.municipio"/><br>
                        <html:text property="municipio"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="color:red"><html:errors property="nif"/></span><br>
                        <bean:message key="login.nif"/><br>
                        <html:text property="nif"/>
                    </td>
                    <td>
                        <span style="color:red"><html:errors property="telefono"/></span><br>
                        <bean:message key="login.telefono"/><br>
                        <html:text property="telefono"/>
                    </td>
                </tr>
            </tbody>
        </table>
        <html:submit styleClass="boton" value="enviar"/>
    </html:form>

</body>
</html:html>
