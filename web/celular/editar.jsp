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
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <ul>
            <li><a href="">Usuarios</a> </li>
            <li><a href="index.jsp">Celulares</a> </li>
            <li><a href="">Sistemas Operativos</a> </li>
            <li><a href="">Lenguajes de Programacion</a> </li>
        </ul>
        
        <form method="post" action="/Prueba3/ServCelular">
        <% 
            Conexion con = new Conexion ();
                String celular_id = request.getParameter("celular_id");
                con.setConsulta("select * from celulares where celular_id='"+celular_id+"'");
                while(con.getResult().next()){
        %>
        
        <h1>Editar</h1>
        <div class="form-group">
        <table>
            <tr>
                <td>ID:</td>
                <td><input type="text" name="celular_id" readonly value="<% out.println(con.getResult().getString("celular_id")); %>"></td>
            </tr>
            <tr>
                <td>CHIP:</td>
                <td><input type="text" name="chip" value="<% out.println(con.getResult().getString("tipo_chip")) ; %>"></td>
            </tr>
            <tr>
                <td>FECHA DE CREACION:</td>
                <td><input type="text" name="fecha_creacion" class="tcal" value="<% out.println(con.getResult().getString("fecha_creacion")) ; %>"></td>
                 
            </tr>
            <tr>
                <td>NUMERO:</td>
                <td><input type="text" name="numero" value="<% out.println(con.getResult().getString("numero")) ; %>"></td>
            </tr>
            <tr>
                <td>SISTEMA OPERATIVO:</td>
                <td><input type="text" name="sistema_id" value="<% out.println(con.getResult().getString("sistema_id")) ; %>"></td>
            </tr>
            <tr>
                <td>CREADO POR:</td>
                <td><input type="text" name="creador" value="<% out.println(con.getResult().getString("creado_por")) ; %>"></td>
            </tr>
        </table>
            <% }%>
            <input type="hidden" name="editar" value="1">
            <input type="submit" value="Actualizar">
            </div>        
        </form>
            
    </body>
</html>
