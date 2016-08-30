<%-- 
    Document   : formulario
    Created on : 29-08-2016, 21:01:08
    Author     : cetecom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso al Sistema</title>
    </head>
    <body>
        <%
  
        String user = (String) session.getAttribute("user");

        if (user != null){
            
            response.sendRedirect("index.jsp");
        }

        %>
        <form action="formServ" method="POST">
            <table>
                <tr>
                    <td>Usuario: </td>
                    <td><input type="text" name="user" id="user" required="true"</td>
                </tr>
                <tr>
                    <td>Clave: </td>
                    <td><input type="password" name="pass" id="pass" required="true"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><input type="submit" name="btnAceptar" value="Ingresar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
