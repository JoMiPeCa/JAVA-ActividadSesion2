<%-- 
    Document   : index
    Created on : 29-08-2016, 21:39:22
    Author     : cetecom
--%>


<%@page import="Entidad.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
            try{
            if(session.getAttribute("user")==null){
                response.sendRedirect("formulario.jsp");
                
            }
            else{
                Usuario user =(Usuario) session.getAttribute("user");
            
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        
        <h1>Bienvenido <% user.getUsuario(); }%></h1>
        <br>
        <br>
        <br>
        <input type="button" value="Salir" onclick="<% session.removeAttribute("user"); %>">
    </body>
    <%
        }catch(Exception ex){
        out.println("INICIO: "+ex.getMessage()+"..FIN");
}
    %>
</html>
