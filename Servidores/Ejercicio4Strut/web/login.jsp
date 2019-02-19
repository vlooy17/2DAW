<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
    </head>
    <body style="background-color: white">
        <h2><bean:message key="login.title"/></h2>
        <html:form action="loginAction" focus="nombre" styleId="formulario" method="post">
            <table >
                <tr>
                    <td>

                        <html:errors property="nombre"></html:errors><br>
                        <bean:message key="login.nombre"></bean:message><br>
                        <html:text property="nombre"/><br>
                    </td>
                    <td>
                        <html:errors property="apellidos"></html:errors><br>
                        <bean:message key="login.apellidos"></bean:message><br>
                        <html:text property="apellidos"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <html:errors property="email"></html:errors><br>
                        <bean:message key="login.email"></bean:message><br>
                        <html:text property="email"/><br>
                    </td>
                    <td>
                        <html:errors property="codigoPostal"></html:errors><br>
                        <bean:message key="login.codigoPostal"></bean:message><br>
                        <html:text property="codigoPostal"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <html:errors property="login"></html:errors><br>
                        <bean:message key="login.login"></bean:message><br>
                        <html:text property="login"/><br>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <html:errors property="password"></html:errors><br>
                        <bean:message key="login.password"></bean:message><br>
                        <html:text property="password"/><br>
                    </td>
                    <td>
                        <html:errors property="confPasw"></html:errors><br>
                        <bean:message key="login.confPassword"></bean:message><br>
                        <html:text property="confPasw"/><br>
                    </td>
                </tr>

            </table>
            <bean:message key="titulo.titulo"/>
            <table>
                <tbody>
                    <tr>
                        <td>
                            <html:checkbox property="musical">
                                <bean:message key="titulo.musical"/>
                            </html:checkbox>
                        </td>
                        <td>
                            <html:checkbox property="aventura">
                                <bean:message key="titulo.aventura"/>
                            </html:checkbox>
                        </td>
                        <td>
                            <html:checkbox property="comedia">
                                <bean:message key="titulo.comedia"/>
                            </html:checkbox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <html:checkbox property="melodrama">
                                <bean:message key="titulo.melodrama"/>
                            </html:checkbox>
                        </td>
                        <td>
                            <html:checkbox property="clasicos">
                                <bean:message key="titulo.clasicos"/>
                            </html:checkbox>
                        </td>
                        <td>
                            <html:checkbox property="policialco">
                                <bean:message key="titulo.policialco"/>
                            </html:checkbox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <bean:message key="login.info"/>
            <html:radio value="SI" property="info">
                <bean:message key="info.si"/>
            </html:radio>
            <html:radio value="NO" property="info">
                <bean:message key="info.no"/>
            </html:radio>
            <br>
            <html:reset styleClass="boton" value="Restaurar"/>
            <html:submit styleClass="boton" value="enviar"/>
            
        </html:form>
    </body>
</html:html>