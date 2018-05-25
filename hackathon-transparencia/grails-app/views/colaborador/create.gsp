<!DOCTYPE html>
<html>
    <head>
        <g:set var="entityName" value="${message(code: 'propuesta.label', default: 'Propuesta')}" />
        <meta name="layout" content="main" />
<<<<<<< HEAD
        <title>Sigueme - Crear Colaborador</title>
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
=======
        <g:set var="entityName" value="${message(code: 'colaborador.label', default: 'Colaborador')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
>>>>>>> d7b19cf23061d81459f7d0aa8510abe60eb882d3
    </head>
    <body>
        <a href="#create-colaborador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-colaborador" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
            <g:form resource="${this.colaborador}" method="POST">
                <fieldset class="form">
                    <f:all bean="colaborador"/>
                </fieldset>
                  <div style="float:left; margin: 5px 20px 0 50px;">
                   <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
            </g:form>
        </div>
    </body>
</html>
