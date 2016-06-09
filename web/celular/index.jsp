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
        <title>JSP Page</title>
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <h1>celular</h1>
        <br>
        
        <a href="crear.jsp">crear Celular</a>
        <br>
        <form method="post" action="index.jsp">
            buscar: <input type="text" name="buscarNumero">
            <input type="submit" name="buscarNumero" value="Buscar">
            <%
                Conexion con = new Conexion();
                
                if (request.getParameter("buscarNumero") != null) {
                    if (request.getParameter("buscarNumero").isEmpty()) {

                        con.setConsulta("select * from celulares where estado='activo'");
                    } else {
                        int numero = Integer.parseInt(request.getParameter("buscarNumero"));
                        con.setConsulta("select * from celulares where numero = '" + numero + "' and estado='activo'");
                    }
                } else {
                    con.setConsulta("select * from celulares where estado='activo'");
                }
            %>
        </form>
             
        <h3>lista</h3>
        <table>
            <thead>
                <th>ID</th>
                <th>CHIP</th>
                <th>FECHA DE CREACION</th>
                <th>NUMERO</th>
                <th>SISTEMA OPERATIVO</th>
                <th>CREADO POR</th>
            </thead>
            <tbody>
                <%
                    while(con.getResult().next()){
                        out.println("<tr>");
                        out.println("<td>"+con.getResult().getString("celular_id")+"</td>");
                        out.println("<td>"+con.getResult().getString("tipo_chip")+"</td>");
                        out.println("<td>"+con.getResult().getString("fecha_creacion")+"</td>");
                        out.println("<td>"+con.getResult().getString("numero")+"</td>");
                        out.println("<td>"+con.getResult().getString("sistema_id")+"</td>");
                        out.println("<td>"+con.getResult().getString("creado_por")+"</td>");
                        out.println("<td>" + "<a href='/Prueba3/ServCelular?eliminar=" + con.getResult().getString("celular_id") + "'>Eliminar</a>" + "</td>");
                        out.println("<td>" + "<a href='/Prueba3/celular/editar.jsp?celular_id=" + con.getResult().getString("celular_id") + "'>Editar</a>" + "</td>");
                        out.println("</tr>");
                    }
                %>
            </tbody>
        </table>
            
            <ul>
            <li><a href="">Usuarios</a> </li>
            <li><a href="celular/index.jsp">Celulares</a> </li>
            <li><a href="">Sistemas Operativos</a> </li>
            <li><a href="">Lenguajes de Programacion</a> </li>
        </ul>
    </body>
</html>
