

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'witsWellSg.label', default: 'WitsWellSg')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-witsWellSg" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-witsWellSg" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list witsWellSg">
			
				<g:if test="${witsWellSgInstance?.wellName}">
				<li class="fieldcontain">
					<span id="wellName-label" class="property-label"><g:message code="witsWellSg.wellName.label" default="Well Name" /></span>
					
						<span class="property-value" aria-labelledby="wellName-label"><g:fieldValue bean="${witsWellSgInstance}" field="wellName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.customerName}">
				<li class="fieldcontain">
					<span id="customerName-label" class="property-label"><g:message code="witsWellSg.customerName.label" default="Customer Name" /></span>
					
						<span class="property-value" aria-labelledby="customerName-label"><g:fieldValue bean="${witsWellSgInstance}" field="customerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.rigName}">
				<li class="fieldcontain">
					<span id="rigName-label" class="property-label"><g:message code="witsWellSg.rigName.label" default="Rig Name" /></span>
					
						<span class="property-value" aria-labelledby="rigName-label"><g:fieldValue bean="${witsWellSgInstance}" field="rigName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.sgId}">
				<li class="fieldcontain">
					<span id="sgId-label" class="property-label"><g:message code="witsWellSg.sgId.label" default="Sg Id" /></span>
					
						<span class="property-value" aria-labelledby="sgId-label"><g:fieldValue bean="${witsWellSgInstance}" field="sgId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.sgIpAddress}">
				<li class="fieldcontain">
					<span id="sgIpAddress-label" class="property-label"><g:message code="witsWellSg.sgIpAddress.label" default="Sg Ip Address" /></span>
					
						<span class="property-value" aria-labelledby="sgIpAddress-label"><g:fieldValue bean="${witsWellSgInstance}" field="sgIpAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.rigContractor}">
				<li class="fieldcontain">
					<span id="rigContractor-label" class="property-label"><g:message code="witsWellSg.rigContractor.label" default="Rig Contractor" /></span>
					
						<span class="property-value" aria-labelledby="rigContractor-label"><g:fieldValue bean="${witsWellSgInstance}" field="rigContractor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="witsWellSg.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${witsWellSgInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="witsWellSg.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${witsWellSgInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.fieldName}">
				<li class="fieldcontain">
					<span id="fieldName-label" class="property-label"><g:message code="witsWellSg.fieldName.label" default="Field Name" /></span>
					
						<span class="property-value" aria-labelledby="fieldName-label"><g:fieldValue bean="${witsWellSgInstance}" field="fieldName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.stateOfProvince}">
				<li class="fieldcontain">
					<span id="stateOfProvince-label" class="property-label"><g:message code="witsWellSg.stateOfProvince.label" default="State Of Province" /></span>
					
						<span class="property-value" aria-labelledby="stateOfProvince-label"><g:fieldValue bean="${witsWellSgInstance}" field="stateOfProvince"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="witsWellSg.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${witsWellSgInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.wellSpudTime}">
				<li class="fieldcontain">
					<span id="wellSpudTime-label" class="property-label"><g:message code="witsWellSg.wellSpudTime.label" default="Well Spud Time" /></span>
					
						<span class="property-value" aria-labelledby="wellSpudTime-label"><g:formatDate date="${witsWellSgInstance?.wellSpudTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.permanentDatum}">
				<li class="fieldcontain">
					<span id="permanentDatum-label" class="property-label"><g:message code="witsWellSg.permanentDatum.label" default="Permanent Datum" /></span>
					
						<span class="property-value" aria-labelledby="permanentDatum-label"><g:link controller="permanentDatum" action="show" id="${witsWellSgInstance?.permanentDatum?.id}">${witsWellSgInstance?.permanentDatum?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.elevationOfPd}">
				<li class="fieldcontain">
					<span id="elevationOfPd-label" class="property-label"><g:message code="witsWellSg.elevationOfPd.label" default="Elevation Of Pd" /></span>
					
						<span class="property-value" aria-labelledby="elevationOfPd-label"><g:fieldValue bean="${witsWellSgInstance}" field="elevationOfPd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.kellyBushing}">
				<li class="fieldcontain">
					<span id="kellyBushing-label" class="property-label"><g:message code="witsWellSg.kellyBushing.label" default="Kelly Bushing" /></span>
					
						<span class="property-value" aria-labelledby="kellyBushing-label"><g:fieldValue bean="${witsWellSgInstance}" field="kellyBushing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.drillFloor}">
				<li class="fieldcontain">
					<span id="drillFloor-label" class="property-label"><g:message code="witsWellSg.drillFloor.label" default="Drill Floor" /></span>
					
						<span class="property-value" aria-labelledby="drillFloor-label"><g:fieldValue bean="${witsWellSgInstance}" field="drillFloor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.groundLevel}">
				<li class="fieldcontain">
					<span id="groundLevel-label" class="property-label"><g:message code="witsWellSg.groundLevel.label" default="Ground Level" /></span>
					
						<span class="property-value" aria-labelledby="groundLevel-label"><g:fieldValue bean="${witsWellSgInstance}" field="groundLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.waterDepth}">
				<li class="fieldcontain">
					<span id="waterDepth-label" class="property-label"><g:message code="witsWellSg.waterDepth.label" default="Water Depth" /></span>
					
						<span class="property-value" aria-labelledby="waterDepth-label"><g:fieldValue bean="${witsWellSgInstance}" field="waterDepth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.drillingMeasured}">
				<li class="fieldcontain">
					<span id="drillingMeasured-label" class="property-label"><g:message code="witsWellSg.drillingMeasured.label" default="Drilling Measured" /></span>
					
						<span class="property-value" aria-labelledby="drillingMeasured-label"><g:link controller="drillingMeasured" action="show" id="${witsWellSgInstance?.drillingMeasured?.id}">${witsWellSgInstance?.drillingMeasured?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.heightAbovePd}">
				<li class="fieldcontain">
					<span id="heightAbovePd-label" class="property-label"><g:message code="witsWellSg.heightAbovePd.label" default="Height Above Pd" /></span>
					
						<span class="property-value" aria-labelledby="heightAbovePd-label"><g:fieldValue bean="${witsWellSgInstance}" field="heightAbovePd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.airGap}">
				<li class="fieldcontain">
					<span id="airGap-label" class="property-label"><g:message code="witsWellSg.airGap.label" default="Air Gap" /></span>
					
						<span class="property-value" aria-labelledby="airGap-label"><g:fieldValue bean="${witsWellSgInstance}" field="airGap"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="witsWellSg.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${witsWellSgInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="witsWellSg.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${witsWellSgInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="witsWellSg.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${witsWellSgInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="witsWellSg.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${witsWellSgInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.finishedDate}">
				<li class="fieldcontain">
					<span id="finishedDate-label" class="property-label"><g:message code="witsWellSg.finishedDate.label" default="Finished Date" /></span>
					
						<span class="property-value" aria-labelledby="finishedDate-label"><g:formatDate date="${witsWellSgInstance?.finishedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.dhIpAddress}">
				<li class="fieldcontain">
					<span id="dhIpAddress-label" class="property-label"><g:message code="witsWellSg.dhIpAddress.label" default="Dh Ip Address" /></span>
					
						<span class="property-value" aria-labelledby="dhIpAddress-label"><g:fieldValue bean="${witsWellSgInstance}" field="dhIpAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.witsProject}">
				<li class="fieldcontain">
					<span id="witsProject-label" class="property-label"><g:message code="witsWellSg.witsProject.label" default="Wits Project" /></span>
					
						<span class="property-value" aria-labelledby="witsProject-label"><g:link controller="witsProject" action="show" id="${witsWellSgInstance?.witsProject?.id}">${witsWellSgInstance?.witsProject?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.dhId}">
				<li class="fieldcontain">
					<span id="dhId-label" class="property-label"><g:message code="witsWellSg.dhId.label" default="Dh Id" /></span>
					
						<span class="property-value" aria-labelledby="dhId-label"><g:fieldValue bean="${witsWellSgInstance}" field="dhId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.insertedDate}">
				<li class="fieldcontain">
					<span id="insertedDate-label" class="property-label"><g:message code="witsWellSg.insertedDate.label" default="Inserted Date" /></span>
					
						<span class="property-value" aria-labelledby="insertedDate-label"><g:formatDate date="${witsWellSgInstance?.insertedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.runningFlag}">
				<li class="fieldcontain">
					<span id="runningFlag-label" class="property-label"><g:message code="witsWellSg.runningFlag.label" default="Running Flag" /></span>
					
						<span class="property-value" aria-labelledby="runningFlag-label"><g:fieldValue bean="${witsWellSgInstance}" field="runningFlag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.dhDescription}">
				<li class="fieldcontain">
					<span id="dhDescription-label" class="property-label"><g:message code="witsWellSg.dhDescription.label" default="Dh Description" /></span>
					
						<span class="property-value" aria-labelledby="dhDescription-label"><g:fieldValue bean="${witsWellSgInstance}" field="dhDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.rigType}">
				<li class="fieldcontain">
					<span id="rigType-label" class="property-label"><g:message code="witsWellSg.rigType.label" default="Rig Type" /></span>
					
						<span class="property-value" aria-labelledby="rigType-label"><g:link controller="mtRigType" action="show" id="${witsWellSgInstance?.rigType?.id}">${witsWellSgInstance?.rigType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.rigPower}">
				<li class="fieldcontain">
					<span id="rigPower-label" class="property-label"><g:message code="witsWellSg.rigPower.label" default="Rig Power" /></span>
					
						<span class="property-value" aria-labelledby="rigPower-label"><g:fieldValue bean="${witsWellSgInstance}" field="rigPower"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.ptmd}">
				<li class="fieldcontain">
					<span id="ptmd-label" class="property-label"><g:message code="witsWellSg.ptmd.label" default="Ptmd" /></span>
					
						<span class="property-value" aria-labelledby="ptmd-label"><g:fieldValue bean="${witsWellSgInstance}" field="ptmd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.afeNumber}">
				<li class="fieldcontain">
					<span id="afeNumber-label" class="property-label"><g:message code="witsWellSg.afeNumber.label" default="Afe Number" /></span>
					
						<span class="property-value" aria-labelledby="afeNumber-label"><g:fieldValue bean="${witsWellSgInstance}" field="afeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.afeCost}">
				<li class="fieldcontain">
					<span id="afeCost-label" class="property-label"><g:message code="witsWellSg.afeCost.label" default="Afe Cost" /></span>
					
						<span class="property-value" aria-labelledby="afeCost-label"><g:fieldValue bean="${witsWellSgInstance}" field="afeCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.wellPurpose}">
				<li class="fieldcontain">
					<span id="wellPurpose-label" class="property-label"><g:message code="witsWellSg.wellPurpose.label" default="Well Purpose" /></span>
					
						<span class="property-value" aria-labelledby="wellPurpose-label"><g:link controller="mtWellPurpose" action="show" id="${witsWellSgInstance?.wellPurpose?.id}">${witsWellSgInstance?.wellPurpose?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.activityCodeFlag}">
				<li class="fieldcontain">
					<span id="activityCodeFlag-label" class="property-label"><g:message code="witsWellSg.activityCodeFlag.label" default="Activity Code Flag" /></span>
					
						<span class="property-value" aria-labelledby="activityCodeFlag-label"><g:fieldValue bean="${witsWellSgInstance}" field="activityCodeFlag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${witsWellSgInstance?.wellEnvironment}">
				<li class="fieldcontain">
					<span id="wellEnvironment-label" class="property-label"><g:message code="witsWellSg.wellEnvironment.label" default="Well Environment" /></span>
					
						<span class="property-value" aria-labelledby="wellEnvironment-label"><g:link controller="mtEnvironment" action="show" id="${witsWellSgInstance?.wellEnvironment?.id}">${witsWellSgInstance?.wellEnvironment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${witsWellSgInstance?.id}" />
					<g:link class="edit" action="edit" id="${witsWellSgInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
