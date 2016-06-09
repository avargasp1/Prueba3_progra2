<%-- 
    Document   : index
    Created on : 08-jun-2016, 15:13:09
    Author     : alejandrovargas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <h1>LOGIN</h1>
        <form  method="post" action="principal.jsp">
            <table class="">
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" name="user"></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input type="password" name="pass"></td>
                </tr>  
            </table>
            <input type="submit" value="Ingresar" name="login">
        </form>
        
        
    </body>
</html>
