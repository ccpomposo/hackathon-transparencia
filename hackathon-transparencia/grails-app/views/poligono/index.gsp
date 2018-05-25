<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'poligono.label', default: 'Poligono')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-poligono" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-poligono" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${poligonoList}" />

            <div class="pagination">
                <g:paginate total="${poligonoCount ?: 0}" />
            </div>
        </div>
        <button type="button" id="btnTest">Test</button>
        <div id="test"></div>
        <script>
                $(document).ready(function() {
                    
                    $("#btnTest").on('click', function(){
                        $.ajax({
                            url: "${createLink(uri: '/Poligono/getPuntos')}",
                            type: "GET",
                            data: {
                                estado: "oaxaca"
                            },
                            success: function(data) {
                                var myJSON = JSON.stringify(data);
                                console.log("Ahí va el data datito" + " " + myJSON);             
                                for(datito in data) {
                                    console.log(datito);
                                    console.log(data[datito]);
                                    for(datitito in datito) {
                                        console.log(datitito);
                                        console.log(data[datito][datitito]);
                                    }
                                }
                                console.log('Ya llegó el datito')
                            },
                            error: function() {
                                console.log('No, nada, nel');
                            }
                        })    
                    })
                });
                </script>
    </body>    
</html>

