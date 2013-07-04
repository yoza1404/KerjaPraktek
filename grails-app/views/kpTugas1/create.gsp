
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kpTugas1.label', default: 'Well')}" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-kpTugas1" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-kpTugas1" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${kpTugas1Instance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${kpTugas1Instance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
                <fieldset class="form">
                    <legend>Well Information</legend>

                    <g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
                    <center>
                        <g:submitButton  name="Save" class="save" value="Save" />
                        <g:link class="Cancel" action="cancel">Cancel</g:link>
                    </center>
                </fieldset>
			</g:form>
		</div>
	</body>
</html>
