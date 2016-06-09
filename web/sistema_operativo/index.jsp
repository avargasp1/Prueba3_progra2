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
    </head>
    <body>
        <h1>Sistema Operativos</h1>
        <br>
        
        <a href="crear.jsp">CREAR UN SISTEMA OPERATIVO</a>
        <br>
        <form method="post" action="index.jsp">
            buscar: <input type="text" name="buscarNombre">
            <input type="submit" name="buscarNombre" value="Buscar">
            <%
                Conexion con = new Conexion();
                
                if (request.getParameter("buscarNombre") != null) {
                    if (request.getParameter("buscarNombre").isEmpty()) {

                        con.setConsulta("select * from sistemas_operativos where estado='activo'");
                    } else {
                        String nombre = request.getParameter("buscarNombre");
                        con.setConsulta("select * from sistemas_operativos where nombre like '%" + nombre + "%' and estado='activo'");
                    }
                } else {
                    con.setConsulta("select * from sistemas_operativos where estado='activo'");
                }
            %>
        </form>
             
        <h3>lista</h3>
        <table>
            <thead>
                <th>ID:</th>
                <th>NOMBRE:</th>
                <th>FECHA DE CREACION:</th>
                <th>PRGRAMADO E:N</th>
                
            </thead>
            <tbody>
                <%
                    while(con.getResult().next()){
                        out.println("<tr>");
                        out.println("<td>"+con.getResult().getString("sistema_ope_id")+"</td>");
                        out.println("<td>"+con.getResult().getString("nombre")+"</td>");
                        out.println("<td>"+con.getResult().getString("fecha_creacion")+"</td>");
                        out.println("<td>"+con.getResult().getString("lenguaje_id")+"</td>");
                        out.println("<td>" + "<a href='/Prueba3/ServSistema_Op?eliminar=" + con.getResult().getString("sistema_ope_id") + "'>Eliminar</a>" + "</td>");
                        out.println("<td>" + "<a href='/Prueba3/sistema_operativo/editar.jsp?sistema_ope_id=" + con.getResult().getString("sistema_ope_id") + "'>Editar</a>" + "</td>");
                        out.println("</tr>");
                    }
                %>
            </tbody>
        </table>
            
            <ul>
            <li><a href="index.jsp">Usuarios</a> </li>
            <li><a href="../celular/index.jsp">Celulares</a> </li>
            <li><a href="index.jsp">Sistemas Operativos</a> </li>
            <li><a href="">Lenguajes de Programacion</a> </li>
        </ul>
    </body>
</html>
