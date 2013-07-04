

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'witsWellSg.label', default: 'WitsWellSg')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-witsWellSg" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-witsWellSg" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="wellName" title="${message(code: 'witsWellSg.wellName.label', default: 'Well Name')}" />
					
						<g:sortableColumn property="customerName" title="${message(code: 'witsWellSg.customerName.label', default: 'Customer Name')}" />
					
						<g:sortableColumn property="rigName" title="${message(code: 'witsWellSg.rigName.label', default: 'Rig Name')}" />
					
						<g:sortableColumn property="sgId" title="${message(code: 'witsWellSg.sgId.label', default: 'Sg Id')}" />
					
						<g:sortableColumn property="sgIpAddress" title="${message(code: 'witsWellSg.sgIpAddress.label', default: 'Sg Ip Address')}" />
					
						<g:sortableColumn property="rigContractor" title="${message(code: 'witsWellSg.rigContractor.label', default: 'Rig Contractor')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${witsWellSgInstanceList}" status="i" var="witsWellSgInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${witsWellSgInstance.id}">${fieldValue(bean: witsWellSgInstance, field: "wellName")}</g:link></td>
					
						<td>${fieldValue(bean: witsWellSgInstance, field: "customerName")}</td>
					
						<td>${fieldValue(bean: witsWellSgInstance, field: "rigName")}</td>
					
						<td>${fieldValue(bean: witsWellSgInstance, field: "sgId")}</td>
					
						<td>${fieldValue(bean: witsWellSgInstance, field: "sgIpAddress")}</td>
					
						<td>${fieldValue(bean: witsWellSgInstance, field: "rigContractor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${witsWellSgInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
