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
        <title>Prueba 3 - Programacion 2</title>
        <link rel="stylesheet" type="text/css" href="template/css/bootstrap.min.css" />
        <script src="template/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="template/calendar/tcal.js"></script>
    </head>
    <body>
        <h1>LOGIN</h1>
        <div class="form-group">
            <form method="post" action="/Prueba3/ServLogin">
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
                <input class="btn btn-primary" type="submit" value="Ingresar" name="login">
            </form>
        </div>
        
        
        
    </body>
</html>
