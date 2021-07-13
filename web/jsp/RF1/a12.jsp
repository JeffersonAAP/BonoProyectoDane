<%--
    Document   : a12
    Created on : 17/06/2021, 02:13:27 PM
    Author     : JeAnA
--%>

<%@page import="java.util.List"%>
<%@page import="DTO.Municipios"%>
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
            <div class="card">
                <div class="card-body">
                    <jsp:include page="ShowMun.do"/>
                    <form class="form-horizontal" action="CreatePer.do" method="POST">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-4"></div>
                                <div class="col-2">
                                    <label for="cedula">Cédula:</label>
                                </div>
                                <div class="col-3">
                                    <input name="cedula" type="number" class="form-control" id="cedula" min="0" value="0">
                                </div>
                              <div class="col-3"></div>
                            </div>
                            <div class="row my-2">
                                <div class="col-4"></div>
                                <div class="col-2">
                                    <label for="nombre">Nombre:</label>
                                </div>
                                <div class="col-3">
                                    <input name="nombre" type="text" class="form-control" id="nombre">
                                </div>
                                <div class="col-3"></div>
                            </div>
                            <div class="row my-2">
                                <div class="col-4"></div>
                                <div class="col-2">
                                    <label for="email">E-mail:</label>
                                </div>
                                <div class="col-3">
                                    <input name="email" type="email" class="form-control" id="email">
                                </div>
                                <div class="col-3"></div>
                            </div>
                            <div class="row my-2">
                                <div class="col-4"></div>
                                <div class="col-2">
                                    <label for="direccion">Dirección:</label>
                                </div>
                                <div class="col-3">
                                    <input name="direccion" type="text" class="form-control" id="direccion">
                                </div>
                                <div class="col-3"></div>
                            </div>
                            <div class="row my-2">
                                <div class="col-4"></div>
                                <div class="col-2">
                                  <label for="municipios">Municipio:</label>
                                </div>
                                <div class="col-3">
                                    <select class="form-select form-select-sm" aria-label=".form-select-sm example"
                                            name="municipios" id="municipios">
                                        <%
                                            List<Municipios> mun = (List) request.getSession().getAttribute("municipios");
                                            for(Municipios m: mun){
                                        %>
                                        <option><%=m.getNombre()%></option>

                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                              <div class="col-3"></div>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col-4"></div>
                            <div class="col-2">
                                <button type="submit" class="btn btn-primary">Registrar</button>
                            </div>
                        </div>
                    </form>
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
