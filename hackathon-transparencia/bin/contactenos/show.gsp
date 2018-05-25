<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Sigueme - Contáctanos</title>
        <asset:link rel="icon" href="icon.ico" type="image/x-ico" />

        <style>
            body{
               background-image: url('${resource(dir: "images", file: "banner.jpg")}');

            }

            footer {
                position:fixed;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
          <g:img dir="images" file="iconn.png" width="30" height="30" /> 
          <div style="width: 20px">
          </div>
          <a class="navbar-brand" href="${createLink(uri: '/')}"> Sigueme  |</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/')}">Inicio<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/reservar/create')}">Buscar Candidato<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/reservar/create')}">Buscar Institucion<span class="sr-only">(current)</span></a>
              </li>
            </ul>
          </div>
        </nav>

        <div class="container marketing">
            <h1> Contáctanos </h1>
            <p> ¿Dudas o comentarios? ¡Contáctanos! Utiliza nuestro formulario en línea o ponte en contacto con nuestros ejecutivos. </p>
            <p> Teléfono: 01 (951) 178 1634 <br> Lada Sin Costo: 01 (800) 717 9050 <br> Correo electrónico: reservacionestiahuanaca@gmail.com </p>
            <br> <br> <br>
            <center> <h2> Mensaje Enviado Correctamente. </h2> </center>
        </div>
    <footer>
        <center>
        <p>Copyright &copy; 2018, Corporación Sigueme, S.A. de C.V.  All rights reserved. &middot; Hackathon 2018</p>
            </center>
    </footer>
</body>
</html>
