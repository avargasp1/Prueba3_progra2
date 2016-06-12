<%-- 
    Document   : index
    Created on : 08-jun-2016, 15:32:28
    Author     : alejandrovargas
--%>

<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba 3 - Programacion 2</title>
        <link rel="stylesheet" type="text/css" href="../template/calendar/tcal.css" />
	<script type="text/javascript" src="../template/calendar/tcal.js"></script>
        <link rel="stylesheet" type="text/css" href="../template/css/bootstrap.min.css" />
        <script src="../template/js/bootstrap.min.js"></script>
    </head>
    <body>
        <ul>
            <li><a href="../usuario/index.jsp">Usuarios</a> </li>
            <li><a href="../celular/index.jsp">Celulares</a> </li>
            <li><a href="../sistema_operativo/index.jsp">Sistemas Operativos</a> </li>
            <li><a href="index.jsp">Lenguajes de Programacion</a> </li>
        </ul>
        <h1>Lenguajes de Programacion</h1>
        <br>

        <a href="crear.jsp">CREAR UN LENGUAJE DE PROGRAMACION</a>
        <br>
        <form method="post" action="index.jsp">
            buscar: <input type="text" name="buscarNombre">
            <input type="submit" name="buscarNombre" value="Buscar">
            <%
                Conexion con = new Conexion();

                if (request.getParameter("buscarNombre") != null) {
                    if (request.getParameter("buscarNombre").isEmpty()) {

                        con.setConsulta("select * from lenguajes_programacion where estado='activo'");
                    } else {
                        String nombre = request.getParameter("buscarNombre");
                        con.setConsulta("select * from lenguajes_programacion  where nombre like '%" + nombre + "%' and estado='activo'");
                    }
                } else {
                    con.setConsulta("select * from lenguajes_programacion where estado='activo'");
                }
            %>
        </form>

        <h3>lista</h3>
        <table>
            <thead>
            <th>ID:</th>
            <th>NOMBRE:</th>
            <th>FECHA DE CREACION:</th>

        </thead>
        <tbody>
            <%
                while (con.getResult().next()) {
                    out.println("<tr>");
                    out.println("<td>" + con.getResult().getString("lenguaje_id") + "</td>");
                    out.println("<td>" + con.getResult().getString("nombre") + "</td>");
                    out.println("<td>" + con.getResult().getString("fecha_creacion") + "</td>");

                    out.println("<td>" + "<a href='/Prueba3/ServLenguaje_programacion?eliminar=" + con.getResult().getString("lenguaje_id") + "'>Eliminar</a>" + "</td>");
                    out.println("<td>" + "<a href='/Prueba3/lenguaje_programacion/editar.jsp?lenguaje_id=" + con.getResult().getString("lenguaje_id") + "'>Editar</a>" + "</td>");
                    out.println("</tr>");
                }
            %>
        </tbody>
    </table>


</body>
</html>
