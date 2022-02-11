<%-- 
    Document   : index
    Created on : 7/02/2022, 6:59:02 p. m.
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test de Cultura General</title>
        <link rel="stylesheet" href="estilos-index.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <main>
            <div>
                <div>
                    <h1>TEST SOBRE CULTURA GENERAL</h1>
                    <h2>Averigua cuanto sabes sobre el mundo</h2>
                    <p>Este test está hecho para pruebas y no deberia utilizarse bajo ningún motivo para otro propósito. Tampoco mide conocimientos reales sobre algunas áreas en concreto</p>
                    <a href="test1.jsp">Empezar Test</a>
                </div>
            </div>            
        </main>
        <%
            HttpSession sesion = request.getSession();
            sesion.setAttribute("correctas", null);
        %>
    </body>
</html>
