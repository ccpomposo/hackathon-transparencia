<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Sigueme - Contáctanos</title>
        <asset:link rel="icon" href="icon.ico" type="image/x-ico" />

        <style>
            body{
               background-image: url('${resource(dir: "images", file: "banner1.jpg")}');

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
                <a class="nav-link" href="${createLink(uri: '/reservar/create')}">Buscar<span class="sr-only">(current)</span></a>
              </li>
            </ul>
          </div>
        </nav>


        <div class="container marketing">
            <h1> Contáctanos </h1>
            <p> ¿Dudas o comentarios? ¡Contáctanos! Utiliza nuestro formulario en línea o ponte en contacto con nuestros ejecutivos. </p>
            <p> Teléfono: 01 (951) 178 1634 <br> Lada Sin Costo: 01 (800) 515 5625 <br> Correo electrónico: siguemeoficial@gmail.com </p>

            <div class="container">
                <g:form class="form-signin" controller="contactenos" action="show">
                <p>
                  <h6> Nombre </h6>
                  <input type="text" class="form-control" placeholder="Ej. C&eacute;sar" required >
                </p>

                <p>
                  <h6> Direccion de Correo </h6>
                  <label for="inputEmail" class="sr-only">Dirreccion de Correo</label>
                      <input type="email" id="inputEmail" class="form-control" placeholder="Ej. Cesarmc96@hotmail.com" required >
                </p>

                <p>
                  <h6> Mensaje </h6>
                  <textarea class="form-control" required > </textarea>
                    <br>
                </p>
                    
                
                <div class="checkbox">
                        <label>
                            <input type="checkbox"> Acepto Terminos y Condiciones
                        </label>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Enviar</button>
                </g:form>
            </div>
        </div>

    <footer>
        <center>
        <p>Copyright &copy; 2018, Corporación Sigueme, S.A. de C.V.  All rights reserved. &middot; Hackathon 2018</p>
            </center>
    </footer>
</body>
</html>
