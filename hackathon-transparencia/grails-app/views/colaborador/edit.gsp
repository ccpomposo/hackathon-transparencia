<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'colaborador.label', default: 'Colaborador')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
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
            </ul>
          </div>
        </nav>
        <a href="#edit-colaborador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-colaborador" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.colaborador}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.colaborador}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.colaborador}" method="PUT">
                <g:hiddenField name="version" value="${this.colaborador?.version}" />
                <fieldset class="form">
                    <f:all bean="colaborador"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
