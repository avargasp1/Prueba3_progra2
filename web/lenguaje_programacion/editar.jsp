<%-- 
    Document   : editar
    Created on : 08-jun-2016, 16:17:12
    Author     : alejandrovargas
--%>

<%@page import="accesodato.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../template/calendar/tcal.css" />
	<script type="text/javascript" src="../template/calendar/tcal.js"></script>
    </head>
    <body>
        <ul>
            <li><a href="index.jsp">Usuarios</a> </li>
            <li><a href="../celular/index.jsp">Celulares</a> </li>
            <li><a href="">Sistemas Operativos</a> </li>
            <li><a href="">Lenguajes de Programacion</a> </li>
        </ul>
        <form method="post" action="/Prueba3/ServCelular">
        <% 
            Conexion con = new Conexion ();
                String usuario_id = request.getParameter("usuario_id");
                con.setConsulta("select * from usuarios where usuario_id='"+usuario_id+"'");
                while(con.getResult().next()){
        %>
        
        <h1>Editar</h1>
        <table>
            <tr>
                <td>ID:</td>
                <td><input type="text" name="usuario_id" readonly value="<% out.println(con.getResult().getString("lenguaje_id")); %>"></td>
            </tr>
            <tr>
                <td>NOMBRE:</td>
                <td><input type="text" name="nombre" value="<% out.println(con.getResult().getString("nombre")) ; %>"></td>
            </tr>
            <tr>
                <td>FECHA DE CREACION:</td>
                <td> <input type="text" name="fecha" class="tcal" value="<% out.println(con.getResult().getString("fecha_creacion")) ; %>"></td>
            </tr>
            
            
        </table>
            <% }%>
            <input type="hidden" name="editar" value="1">
            <input type="submit" value="Actualizar">
        </form>
    </body>
</html>
