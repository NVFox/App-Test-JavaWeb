<%-- 
    Document   : resultados
    Created on : 10/02/2022, 6:53:22 p. m.
    Author     : usuario
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tus resultados</title>
        <link rel="stylesheet" href="estilos-resultados.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String[] correctas = (String[]) sesion.getAttribute("correctas");

            if (correctas == null) {
                correctas = new String[0];
            }

            int totalPreguntas = 2;
            float porcentajeTotal = (float) correctas.length / totalPreguntas;
        %>
        <main>
            <form>
                <div>
                    <div>
                        <h1><%= (int) (porcentajeTotal * 100) + "%"%></h1>
                        <% if (correctas.length < (totalPreguntas * 0.75)) { %>
                        <h2>¡Qué mal! ¿Deseas reintentarlo?</h2>
                        <% } else { %>
                        <h2>¡Genial! Sabes mucho sobre cultura general.</h2>
                        <% }%>
                        <p><%= correctas.length + " de " + totalPreguntas + " respuestas correctas."%></p>
                        <input type="submit" name="btn" value="Volver al inicio">
                    </div>
                </div> 
            </form>
            <%
                if (request.getParameter("btn") != null) {
                    sesion.setAttribute("correctas", null);
                    response.sendRedirect("index.jsp");
                }
            %>
        </main>
    </body>
</html>
