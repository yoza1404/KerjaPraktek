

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kpTugas1.label', default: 'Well')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-kpTugas1" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-kpTugas1" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dhId" title="${message(code: 'kpTugas1.dhId.label', default: 'DH ID')}" />
					
						<g:sortableColumn property="dhComments" title="${message(code: 'kpTugas1.dhComments.label', default: 'DH Comments')}" />
					
						<g:sortableColumn property="dhIpAddress" title="${message(code: 'kpTugas1.dhIpAddress.label', default: 'DH IP Address')}" />
					
						<g:sortableColumn property="sgIpAddress" title="${message(code: 'kpTugas1.sgIpAddress.label', default: 'SG IP Address')}" />
					
						<g:sortableColumn property="wellName" title="${message(code: 'kpTugas1.wellName.label', default: 'Well Name')}" />
					
						<g:sortableColumn property="costumerName" title="${message(code: 'kpTugas1.costumerName.label', default: 'Costumer Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${kpTugas1InstanceList}" status="i" var="kpTugas1Instance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${kpTugas1Instance.id}">${fieldValue(bean: kpTugas1Instance, field: "dhId")}</g:link></td>
					
						<td>${fieldValue(bean: kpTugas1Instance, field: "dhComments")}</td>
					
						<td>${fieldValue(bean: kpTugas1Instance, field: "dhIpAddress")}</td>
					
						<td>${fieldValue(bean: kpTugas1Instance, field: "sgIpAddress")}</td>
					
						<td>${fieldValue(bean: kpTugas1Instance, field: "wellName")}</td>
					
						<td>${fieldValue(bean: kpTugas1Instance, field: "costumerName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${kpTugas1InstanceTotal}" />
			</div>
		</div>
	</body>
</html>
