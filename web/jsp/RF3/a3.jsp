<%-- 
    Document   : a3
    Created on : 17/06/2021, 02:14:41 PM
    Author     : JeAnA
--%>

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
        <div class="container">
            <div class="float-end"><a href="../../index.html">
                    <h3><i class="fas fa-home"></i></h3>
                </a>
            </div><br>
            <div class="card text-center">
                <div class="card-body">
                    <div class="col-md-3"></div>
                    <form class="form-horizontal" action="ReadPer.do" method="POST">
                        <div class="row">
                            <div class="col-md-5"><p>Por favor digite el nombre de la persona a consultar:</p></div>
                            <div class="form-group col-md-3">
                                <input type="text" name="nombre" placeholder="Alguien" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <button type="submit" class="btn btn-primary">Consultar</button>
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
