<%-- 
    Document   : a21
    Created on : 17/06/2021, 02:14:33 PM
    Author     : JeAnA
--%>

<%@page import="DTO.Municipios"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

    <head>
        <meta charset="utf-8">
        <title>Ejercicio DANE - 1151508</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
                integrity="sha512-RXf+QSDCUQs5uwRKaDoXt55jygZZm2V++WUZduaU/Ui/9EGp3f/2KZVahFZBKGH0s774sd3HmrhUy+SgOFQLVQ=="
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/styles.css"/>
        
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <div class="navbar-header">
                    <h1>EJERCICIO DANE</h1>
                </div>
            </div>
        </nav>
        <br>
        <!-- Registro -->
        <div class="container">
            <div class="float-end"><a href="../../index.html">
                    <h3><i class="fas fa-home"></i></h3>
                </a></div><br>
            <div class="card text-center">
                <div class="card-body">
                    <table class="table table-bordered table-hover bg-light">
                                <thead>
                                    <tr>
                                        <th>Municipio</th>
                                        <th>Cantidad de Personas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        List<Municipios> m = (List) request.getSession().getAttribute("municipios");
                                        for (Municipios mu : m) {
                                    %>
                                    <tr>
                                        <td width="30%"><%=mu.getNombre() %></td>
                                        <td width="40%"><%= request.getSession().getAttribute("cant") %></td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                </div>
            </div>
        </div>

        <footer>
            <div class="container">
                <div class="text-center">
                    <h5>Jefferson Alvarez - 1151508</h5>                   
                </div>
            </div>
        </footer>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
    crossorigin="anonymous"></script>

</html>
