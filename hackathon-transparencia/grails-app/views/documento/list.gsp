<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Document List</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul><li><g:link class="create" action="create">Agregar nuevo documento</g:link></li></ul>
		</div>
		<div class="content scaffold-list" role="main">
			<h1>Lista de documentos</h1>
			<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="nombre" title="Nombre del archivo" />
						<g:sortableColumn property="fechaSubida" title="Fecha de subida" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${documentInstanceList}" status="i" var="documentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="download" id="${documentInstance.id}">${documentInstance.nombre}</g:link></td>
						<td><g:formatDate date="${documentInstance.fechaSubida}" /></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${documentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>