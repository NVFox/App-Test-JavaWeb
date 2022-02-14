<%-- 
    Document   : test1
    Created on : 7/02/2022, 8:15:53 p. m.
    Author     : usuario
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test de Cultura General | Página 2</title>
        <link rel="stylesheet" href="estilos-test.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="full-content">
            <header>
                <nav>
                    <ul>
                        <li><h2>TEST DE CULTURAL GENERAL</h2></li>
                        <li><a href="index.jsp">Página de Inicio</a></li>
                    </ul>
                </nav>
            </header>
            <main>
                <article>
                    <form>
                        <section>
                            <h3>5. Pregunta Cinco</h3>
                            <ul>
                                <li>
                                    <label for="unoa">Opción a</label>
                                    <input type="checkbox" id="unoa" name="a" class="p1">
                                </li>
                                <li>
                                    <label for="unob">Opción b</label>
                                    <input type="checkbox" id="unob" name="b" class="p1">
                                </li>
                                <li>
                                    <label for="unoc">Opción Correcta</label>
                                    <input type="checkbox" id="unoc" name="correcta" value="c-0" class="p1">
                                </li>
                                <li>
                                    <label for="unod">Opción d</label>
                                    <input type="checkbox" id="unod" name="d" class="p1">
                                </li>
                            </ul>
                        </section>
                        <section>
                            <h3>6. Pregunta Seis</h3>
                            <ul>
                                <li>
                                    <label for="dosa">Opción a</label>
                                    <input type="checkbox" id="dosa" name="a" class="p2">
                                </li>
                                <li>
                                    <label for="dosb">Opción b</label>
                                    <input type="checkbox" id="dosb" name="b" class="p2">
                                </li>
                                <li>
                                    <label for="dosc">Opción c</label>
                                    <input type="checkbox" id="dosc" name="c" class="p2">
                                </li>
                                <li>
                                    <label for="dosd">Opción Correcta</label>
                                    <input type="checkbox" id="dosd" name="correcta" value="c-1" class="p2">
                                </li>
                            </ul>
                        </section>
                        <section>
                            <h3>7. Pregunta Siete</h3>
                            <ul>
                                <li>
                                    <label for="tresa">Opción Correcta</label>
                                    <input type="checkbox" id="tresa" name="correcta" value="c-2" class="p3">
                                </li>
                                <li>
                                    <label for="tresb">Opción b</label>
                                    <input type="checkbox" id="tresb" name="b" class="p3">
                                </li>
                                <li>
                                    <label for="tresc">Opción c</label>
                                    <input type="checkbox" id="tresc" name="c" class="p3">
                                </li>
                                <li>
                                    <label for="tresd">Opción d</label>
                                    <input type="checkbox" id="tresd" name="d" class="p3">
                                </li>
                            </ul>
                        </section>
                        <section>
                            <h3>8. Pregunta Ocho</h3>
                            <ul>
                                <li>
                                    <label for="cuatroa">Opción a</label>
                                    <input type="checkbox" id="cuatroa" name="a" class="p4">
                                </li>
                                <li>
                                    <label for="cuatrob">Opcion Correcta</label>
                                    <input type="checkbox" id="cuatrob" name="correcta" value="c-3" class="p4">
                                </li>
                                <li>
                                    <label for="cuatroc">Opción c</label>
                                    <input type="checkbox" id="cuatroc" name="c" class="p4">
                                </li>
                                <li>
                                    <label for="cuatrod">Opción d</label>
                                    <input type="checkbox" id="cuatrod" name="d" class="p4">
                                </li>
                            </ul>
                        </section>
                        <section class="btn-submit">
                            <input type="submit" id="btn" name="btn" value="Enviar">
                            <p>Este test está hecho para pruebas y no deberia utilizarse bajo ningún motivo para otro propósito. Tampoco mide conocimientos reales sobre algunas áreas en concreto</p>
                        </section>
                    </form>
                    <%
                        HttpSession sesion = request.getSession();
                        
                        if (request.getParameter("btn") != null) {
                            String[] oldValues = (String[]) sesion.getAttribute("correctas");
                            String[] newValues = request.getParameterValues("correcta");
                            
                            if (newValues == null) {
                                newValues = new String[0];
                            }
                            
                            int valuesLength = oldValues.length + newValues.length;
                            
                            String[] totalValues = new String[valuesLength];
                            
                            int indexTotal = 0;
                            
                            for (int i = 0; i < oldValues.length; i++) {
                                totalValues[indexTotal] = oldValues[i];
                                indexTotal++;
                            }
                            
                            for (int i = 0; i < newValues.length; i++) {
                                totalValues[indexTotal] = newValues[i];
                                indexTotal++;
                            }
                            
                            if (newValues != null && newValues.length > 0) {
                                sesion.setAttribute("correctas", totalValues);
                            }
                            
                            response.sendRedirect("test3.jsp");
                        }
                    %>
                </article>
            </main>
        </div>
        <script src="valueChanger.js"></script>
    </body>
</html>
