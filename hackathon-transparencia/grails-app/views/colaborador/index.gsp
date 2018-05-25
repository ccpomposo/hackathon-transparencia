
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:link rel="icon" href="icon.ico" type="image/x-ico" />
        <g:set var="entityName" value="${message(code: 'colaborador.label', default: 'Colaborador')}" />
        <title>Sigueme - Colaboradores</title>

        <style>
            footer {
                position:fixed;
            }

            td, th {
                line-height: 1.5em;
                padding: 0.5em 0.6em;
                text-align: left;
                vertical-align: top;
                color: black;
            }

            a {
                color: black;
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
                <a class="nav-link" href="${createLink(uri: '/pantallaSujeto/index')}">Inicio<span class="sr-only">(current)</span></a>
              </li>
            </ul>
          </div>
        </nav>

        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>

        <div id="list-colaborador" class="content scaffold-list" role="main">
            <h1>Colaboradores.</h1>

            <f:table collection="${colaboradorList}" />

        </div>

        <footer>
            <center>
            <p>Copyright &copy; 2018, Corporación CesarMC96, S.A. de C.V.  All rights reserved. &middot; Programacion Web II</p>
                </center>
          </footer>
    </body>
</html>