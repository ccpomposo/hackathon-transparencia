<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'colaborador.label', default: 'Colaborador')}" />
        <title>Sigueme - Crear Usuario</title>
        <asset:link rel="icon" href="icon.ico" type="image/x-ico" />

        <style>
            footer {
                position:fixed;
            }

            .fieldcontain label, .fieldcontain .property-label {
                color: #ffffff;
                text-align: right;
                width: 25%;
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

<a href="#create-colaborador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>

<div id="create-colaborador" class="content scaffold-create" role="main">
            <h1> Añadir Colaborador. </h1>
            <g:form resource="${this.colaborador}" method="POST">
                <fieldset class="form">
                    <f:all bean="colaborador"/>
                </fieldset>
                <div style="float:left; margin: 5px 20px 0 50px;">
                   <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
            </g:form>
        </div>

        <footer>
            <center>
            <p>Copyright &copy; 2018, Corporación CesarMC96, S.A. de C.V.  All rights reserved. &middot; Programacion Web II</p>
                </center>
      </footer>
    </body>
</html>

