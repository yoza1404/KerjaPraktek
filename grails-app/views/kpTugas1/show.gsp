

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kpTugas1.label', default: 'Well')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-kpTugas1" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-Well" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list kpTugas1">
			
				<g:if test="${kpTugas1Instance?.dhId}">
				<li class="fieldcontain">
					<span id="dhId-label" class="property-label"><g:message code="kpTugas1.dhId.label" default="DH ID" /></span>
					
						<span class="property-value" aria-labelledby="dhId-label"><g:fieldValue bean="${kpTugas1Instance}" field="dhId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.dhComments}">
				<li class="fieldcontain">
					<span id="dhComments-label" class="property-label"><g:message code="kpTugas1.dhComments.label" default="DH Comments" /></span>
					
						<span class="property-value" aria-labelledby="dhComments-label"><g:fieldValue bean="${kpTugas1Instance}" field="dhComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.dhIpAddress}">
				<li class="fieldcontain">
					<span id="dhIpAddress-label" class="property-label"><g:message code="kpTugas1.dhIpAddress.label" default="DH IP Address" /></span>
					
						<span class="property-value" aria-labelledby="dhIpAddress-label"><g:fieldValue bean="${kpTugas1Instance}" field="dhIpAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.sgIpAddress}">
				<li class="fieldcontain">
					<span id="sgIpAddress-label" class="property-label"><g:message code="kpTugas1.sgIpAddress.label" default="SG IP Address" /></span>
					
						<span class="property-value" aria-labelledby="sgIpAddress-label"><g:fieldValue bean="${kpTugas1Instance}" field="sgIpAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.wellName}">
				<li class="fieldcontain">
					<span id="wellName-label" class="property-label"><g:message code="kpTugas1.wellName.label" default="Well Name" /></span>
					
						<span class="property-value" aria-labelledby="wellName-label"><g:fieldValue bean="${kpTugas1Instance}" field="wellName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.costumerName}">
				<li class="fieldcontain">
					<span id="costumerName-label" class="property-label"><g:message code="kpTugas1.costumerName.label" default="Costumer Name" /></span>
					
						<span class="property-value" aria-labelledby="costumerName-label"><g:fieldValue bean="${kpTugas1Instance}" field="costumerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.rigType}">
				<li class="fieldcontain">
					<span id="rigType-label" class="property-label"><g:message code="kpTugas1.rigType.label" default="Rig Type" /></span>
					
						<span class="property-value" aria-labelledby="rigType-label"><g:link controller="mtRigType" action="show" id="${kpTugas1Instance?.rigType?.id}">${kpTugas1Instance?.rigType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.rigName}">
				<li class="fieldcontain">
					<span id="rigName-label" class="property-label"><g:message code="kpTugas1.rigName.label" default="Rig Name" /></span>
					
						<span class="property-value" aria-labelledby="rigName-label"><g:fieldValue bean="${kpTugas1Instance}" field="rigName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.rigContractor}">
				<li class="fieldcontain">
					<span id="rigContractor-label" class="property-label"><g:message code="kpTugas1.rigContractor.label" default="Rig Contractor" /></span>
					
						<span class="property-value" aria-labelledby="rigContractor-label"><g:fieldValue bean="${kpTugas1Instance}" field="rigContractor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.rigPower}">
				<li class="fieldcontain">
					<span id="rigPower-label" class="property-label"><g:message code="kpTugas1.rigPower.label" default="Rig Power" /></span>
					
						<span class="property-value" aria-labelledby="rigPower-label"><g:fieldValue bean="${kpTugas1Instance}" field="rigPower"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.latitudeDeg}">
                    <g:if test="${kpTugas1Instance?.latitudeMin}">
                        <g:if test="${kpTugas1Instance?.latitudeSec}">
                            <g:if test="${kpTugas1Instance?.latitudeNs}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="kpTugas1.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label">
                            <g:fieldValue bean="${kpTugas1Instance}" field="latitudeNs"/>
                            <g:fieldValue bean="${kpTugas1Instance}" field="latitudeDeg"/>º
                            <g:fieldValue bean="${kpTugas1Instance}" field="latitudeMin"/>'
                            <g:fieldValue bean="${kpTugas1Instance}" field="latitudeSec"/>"
                        </span>
					
				</li>
                                </g:if>
                            </g:if>
                        </g:if>
				</g:if>

				<g:if test="${kpTugas1Instance?.longtitudeDeg}">
                    <g:if test="${kpTugas1Instance?.longtitudeMin}">
                        <g:if test="${kpTugas1Instance?.longtitudeSec}">
                            <g:if test="${kpTugas1Instance?.longtitudeEw}">
				<li class="fieldcontain">
					<span id="longtitude-label" class="property-label"><g:message code="kpTugas1.longtitude.label" default="Longtitude" /></span>
					
						<span class="property-value" aria-labelledby="longtitude-label">
                            <g:fieldValue bean="${kpTugas1Instance}" field="longtitudeEw"/>
                            <g:fieldValue bean="${kpTugas1Instance}" field="longtitudeDeg"/>º
                            <g:fieldValue bean="${kpTugas1Instance}" field="longtitudeMin"/>'
                            <g:fieldValue bean="${kpTugas1Instance}" field="longtitudeSec"/>"
                        </span>
					
				</li>
                            </g:if>
                        </g:if>
                    </g:if>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.fieldName}">
				<li class="fieldcontain">
					<span id="fieldName-label" class="property-label"><g:message code="kpTugas1.fieldName.label" default="Field Name" /></span>
					
						<span class="property-value" aria-labelledby="fieldName-label"><g:fieldValue bean="${kpTugas1Instance}" field="fieldName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.stateOfProvince}">
				<li class="fieldcontain">
					<span id="stateOfProvince-label" class="property-label"><g:message code="kpTugas1.stateOfProvince.label" default="State/Province" /></span>
					
						<span class="property-value" aria-labelledby="stateOfProvince-label"><g:fieldValue bean="${kpTugas1Instance}" field="stateOfProvince"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="kpTugas1.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${kpTugas1Instance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.wellSpudTime}">
				<li class="fieldcontain">
					<span id="wellSpudTime-label" class="property-label"><g:message code="kpTugas1.wellSpudTime.label" default="Well Spud Time" /></span>
					
						<span class="property-value" aria-labelledby="wellSpudTime-label"><g:fieldValue bean="${kpTugas1Instance}" field="wellSpudTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="kpTugas1.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:fieldValue bean="${kpTugas1Instance}" field="releaseDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.proposedTotalMeasuredDepth}">
				<li class="fieldcontain">
					<span id="proposedTotalMeasuredDepth-label" class="property-label"><g:message code="kpTugas1.proposedTotalMeasuredDepth.label" default="Proposed Total Measured Depth" /></span>
					
						<span class="property-value" aria-labelledby="proposedTotalMeasuredDepth-label"><g:fieldValue bean="${kpTugas1Instance}" field="proposedTotalMeasuredDepth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.permanentDatum}">
				<li class="fieldcontain">
					<span id="permanentDatum-label" class="property-label"><g:message code="kpTugas1.permanentDatum.label" default="Permanent Datum" /></span>
					
						<span class="property-value" aria-labelledby="permanentDatum-label"><g:link controller="permanentDatum" action="show" id="${kpTugas1Instance?.permanentDatum?.id}">${kpTugas1Instance?.permanentDatum?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.elevationOfPd}">
				<li class="fieldcontain">
					<span id="elevationOfPd-label" class="property-label"><g:message code="kpTugas1.elevationOfPd.label" default="Elevation Of PD" /></span>
					
						<span class="property-value" aria-labelledby="elevationOfPd-label"><g:fieldValue bean="${kpTugas1Instance}" field="elevationOfPd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.kellyBushing}">
				<li class="fieldcontain">
					<span id="kellyBushing-label" class="property-label"><g:message code="kpTugas1.kellyBushing.label" default="Kelly Bushing" /></span>
					
						<span class="property-value" aria-labelledby="kellyBushing-label"><g:fieldValue bean="${kpTugas1Instance}" field="kellyBushing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.drillFloor}">
				<li class="fieldcontain">
					<span id="drillFloor-label" class="property-label"><g:message code="kpTugas1.drillFloor.label" default="Drill Floor" /></span>
					
						<span class="property-value" aria-labelledby="drillFloor-label"><g:fieldValue bean="${kpTugas1Instance}" field="drillFloor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.groundLevel}">
				<li class="fieldcontain">
					<span id="groundLevel-label" class="property-label"><g:message code="kpTugas1.groundLevel.label" default="Ground Level" /></span>
					
						<span class="property-value" aria-labelledby="groundLevel-label"><g:fieldValue bean="${kpTugas1Instance}" field="groundLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.waterDepth}">
				<li class="fieldcontain">
					<span id="waterDepth-label" class="property-label"><g:message code="kpTugas1.waterDepth.label" default="Water Depth" /></span>
					
						<span class="property-value" aria-labelledby="waterDepth-label"><g:fieldValue bean="${kpTugas1Instance}" field="waterDepth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.drillingMeasured}">
				<li class="fieldcontain">
					<span id="drillingMeasured-label" class="property-label"><g:message code="kpTugas1.drillingMeasured.label" default="Drilling Measured" /></span>
					
						<span class="property-value" aria-labelledby="drillingMeasured-label"><g:link controller="drillingMeasured" action="show" id="${kpTugas1Instance?.drillingMeasured?.id}">${kpTugas1Instance?.drillingMeasured?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.heightAbovePd}">
				<li class="fieldcontain">
					<span id="heightAbovePd-label" class="property-label"><g:message code="kpTugas1.heightAbovePd.label" default="Height Above PD" /></span>
					
						<span class="property-value" aria-labelledby="heightAbovePd-label"><g:fieldValue bean="${kpTugas1Instance}" field="heightAbovePd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.airGap}">
				<li class="fieldcontain">
					<span id="airGap-label" class="property-label"><g:message code="kpTugas1.airGap.label" default="Air Gap" /></span>
					
						<span class="property-value" aria-labelledby="airGap-label"><g:fieldValue bean="${kpTugas1Instance}" field="airGap"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.tvdsReference}">
				<li class="fieldcontain">
					<span id="tvdsReference-label" class="property-label"><g:message code="kpTugas1.tvdsReference.label" default="TVDs Reference" /></span>
					
						<span class="property-value" aria-labelledby="tvdsReference-label"><g:fieldValue bean="${kpTugas1Instance}" field="tvdsReference"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.afeNumber}">
				<li class="fieldcontain">
					<span id="afeNumber-label" class="property-label"><g:message code="kpTugas1.afeNumber.label" default="AFE Number" /></span>
					
						<span class="property-value" aria-labelledby="afeNumber-label"><g:fieldValue bean="${kpTugas1Instance}" field="afeNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kpTugas1Instance?.afeCost}">
				<li class="fieldcontain">
					<span id="afeCost-label" class="property-label"><g:message code="kpTugas1.afeCost.label" default="AFE Cost" /></span>
					
						<span class="property-value" aria-labelledby="afeCost-label"><g:fieldValue bean="${kpTugas1Instance}" field="afeCost"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<center>
                        <g:hiddenField name="id" value="${kpTugas1Instance?.id}" />
                        <g:link class="edit" action="edit" id="${kpTugas1Instance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </center>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
