<div id="firstColumn" style="width:50%; float:left;">
    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'dhId', 'error')} ">
        <label for="dhId">
            <g:message code="witsWellSg.dhId.label" default="Dh Id" />

        </label>
        <g:textField name="dhId" value="${witsWellSgInstance?.dhId}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'dhIpAddress', 'error')} ">
        <label for="dhIpAddress">
            <g:message code="witsWellSg.dhIpAddress.label" default="Dh Comments" />

        </label>
        <g:textField name="dhIpAddress" value="${witsWellSgInstance?.dhIpAddress}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'dhIpAddress', 'error')} ">
        <label for="dhIpAddress">
            <g:message code="witsWellSg.dhIpAddress.label" default="Dh Ip Address" />

        </label>
        <g:textField name="dhIpAddress" value="${witsWellSgInstance?.dhIpAddress}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'sgIpAddress', 'error')} ">
        <label for="sgIpAddress">
            <g:message code="witsWellSg.sgIpAddress.label" default="Sg Ip Address" />

        </label>
        <g:textField name="sgIpAddress" value="${witsWellSgInstance?.sgIpAddress}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'wellName', 'error')} ">
        <label for="wellName">
            <g:message code="witsWellSg.wellName.label" default="Well Name" />

        </label>
        <g:textField name="wellName" value="${witsWellSgInstance?.wellName}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'customerName', 'error')} ">
        <label for="customerName">
            <g:message code="witsWellSg.customerName.label" default="Customer Name" />

        </label>
        <g:textField name="customerName" value="${witsWellSgInstance?.customerName}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'rigType', 'error')} ">
        <label for="rigType">
            <g:message code="witsWellSg.rigType.label" default="Rig Type" />

        </label>
        <g:select id="rigType" name="rigType.id" from="${MtRigType.list()}" optionKey="id" value="${witsWellSgInstance?.rigType?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>



    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'rigName', 'error')} ">
        <label for="rigName">
            <g:message code="witsWellSg.rigName.label" default="Rig Name" />

        </label>
        <g:textField name="rigName" value="${witsWellSgInstance?.rigName}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'rigContractor', 'error')} ">
        <label for="rigContractor">
            <g:message code="witsWellSg.rigContractor.label" default="Rig Contractor" />

        </label>
        <g:textField name="rigContractor" value="${witsWellSgInstance?.rigContractor}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'rigPower', 'error')} ">
        <label for="rigPower">
            <g:message code="witsWellSg.rigPower.label" default="Rig Power" />

        </label>
        <g:textField name="rigPower" value="${witsWellSgInstance?.rigPower}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'latitude', 'error')} ">
        <label for="latitude">
            <g:message code="witsWellSg.latitude.label" default="Latitude" />

        </label>
        <g:textField name="latitude" value="${witsWellSgInstance?.latitude}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'longitude', 'error')} ">
        <label for="longitude">
            <g:message code="witsWellSg.longitude.label" default="Longitude" />

        </label>
        <g:textField name="longitude" value="${witsWellSgInstance?.longitude}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'fieldName', 'error')} ">
        <label for="fieldName">
            <g:message code="witsWellSg.fieldName.label" default="Field Name" />

        </label>
        <g:textField name="fieldName" value="${witsWellSgInstance?.fieldName}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'stateOfProvince', 'error')} ">
        <label for="stateOfProvince">
            <g:message code="witsWellSg.stateOfProvince.label" default="State Of Province" />

        </label>
        <g:textField name="stateOfProvince" value="${witsWellSgInstance?.stateOfProvince}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'country', 'error')} ">
        <label for="country">
            <g:message code="witsWellSg.country.label" default="Country" />

        </label>
        <g:textField name="country" value="${witsWellSgInstance?.country}"/>
    </div>
</div>


<div id="firstColumn" style="width:50%; float:left;">
    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'wellSpudTime', 'error')} ">
        <label for="wellSpudTime">
            <g:message code="witsWellSg.wellSpudTime.label" default="Well Spud Time" />

        </label>
        <g:datePicker name="wellSpudTime" precision="day"  value="${witsWellSgInstance?.wellSpudTime}" default="none" noSelection="['': '']" />
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'waterDepth', 'error')} ">
        <label for="waterDepth">
            <g:message code="witsWellSg.waterDepth.label" default="Water Depth" />

        </label>
        <g:textField name="waterDepth" value="${witsWellSgInstance?.waterDepth}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'permanentDatum', 'error')} ">
        <label for="permanentDatum">
            <g:message code="witsWellSg.permanentDatum.label" default="Permanent Datum" />

        </label>
        <g:select id="permanentDatum" name="permanentDatum.id" from="${PermanentDatum.list()}" optionKey="id" value="${witsWellSgInstance?.permanentDatum?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'elevationOfPd', 'error')} ">
        <label for="elevationOfPd">
            <g:message code="witsWellSg.elevationOfPd.label" default="Elevation Of Pd" />

        </label>
        <g:textField name="elevationOfPd" value="${witsWellSgInstance?.elevationOfPd}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'kellyBushing', 'error')} ">
        <label for="kellyBushing">
            <g:message code="witsWellSg.kellyBushing.label" default="Kelly Bushing" />

        </label>
        <g:textField name="kellyBushing" value="${witsWellSgInstance?.kellyBushing}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'drillFloor', 'error')} ">
        <label for="drillFloor">
            <g:message code="witsWellSg.drillFloor.label" default="Drill Floor" />

        </label>
        <g:textField name="drillFloor" value="${witsWellSgInstance?.drillFloor}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'heightAbovePd', 'error')} ">
        <label for="heightAbovePd">
            <g:message code="witsWellSg.heightAbovePd.label" default="Height Above Pd" />

        </label>
        <g:textField name="heightAbovePd" value="${witsWellSgInstance?.heightAbovePd}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'airGap', 'error')} ">
        <label for="airGap">
            <g:message code="witsWellSg.airGap.label" default="Air Gap" />

        </label>
        <g:textField name="airGap" value="${witsWellSgInstance?.airGap}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'afeNumber', 'error')} ">
        <label for="afeNumber">
            <g:message code="witsWellSg.afeNumber.label" default="Afe Number" />

        </label>
        <g:textField name="afeNumber" value="${witsWellSgInstance?.afeNumber}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'afeCost', 'error')} ">
        <label for="afeCost">
            <g:message code="witsWellSg.afeCost.label" default="Afe Cost" />

        </label>
        <g:textField name="afeCost" value="${witsWellSgInstance?.afeCost}"/>
    </div>
</div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'sgId', 'error')} ">
        <label for="sgId">
            <g:message code="witsWellSg.sgId.label" default="Sg Id" />

        </label>
        <g:textField name="sgId" value="${witsWellSgInstance?.sgId}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'groundLevel', 'error')} ">
        <label for="groundLevel">
            <g:message code="witsWellSg.groundLevel.label" default="Ground Level" />

        </label>
        <g:textField name="groundLevel" value="${witsWellSgInstance?.groundLevel}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'drillingMeasured', 'error')} ">
        <label for="drillingMeasured">
            <g:message code="witsWellSg.drillingMeasured.label" default="Drilling Measured" />

        </label>
        <g:select id="drillingMeasured" name="drillingMeasured.id" from="${DrillingMeasured.list()}" optionKey="id" value="${witsWellSgInstance?.drillingMeasured?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>



    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'createdBy', 'error')} ">
        <label for="createdBy">
            <g:message code="witsWellSg.createdBy.label" default="Created By" />

        </label>
        <g:textField name="createdBy" value="${witsWellSgInstance?.createdBy}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'createdDate', 'error')} ">
        <label for="createdDate">
            <g:message code="witsWellSg.createdDate.label" default="Created Date" />

        </label>
        <g:datePicker name="createdDate" precision="day"  value="${witsWellSgInstance?.createdDate}" default="none" noSelection="['': '']" />
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'updatedBy', 'error')} ">
        <label for="updatedBy">
            <g:message code="witsWellSg.updatedBy.label" default="Updated By" />

        </label>
        <g:textField name="updatedBy" value="${witsWellSgInstance?.updatedBy}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'updatedDate', 'error')} ">
        <label for="updatedDate">
            <g:message code="witsWellSg.updatedDate.label" default="Updated Date" />

        </label>
        <g:datePicker name="updatedDate" precision="day"  value="${witsWellSgInstance?.updatedDate}" default="none" noSelection="['': '']" />
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'finishedDate', 'error')} ">
        <label for="finishedDate">
            <g:message code="witsWellSg.finishedDate.label" default="Finished Date" />

        </label>
        <g:datePicker name="finishedDate" precision="day"  value="${witsWellSgInstance?.finishedDate}" default="none" noSelection="['': '']" />
    </div>


    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'witsProject', 'error')} ">
        <label for="witsProject">
            <g:message code="witsWellSg.witsProject.label" default="Wits Project" />

        </label>
        <g:select id="witsProject" name="witsProject.id" from="${WitsProject.list()}" optionKey="id" value="${witsWellSgInstance?.witsProject?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>



    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'insertedDate', 'error')} ">
        <label for="insertedDate">
            <g:message code="witsWellSg.insertedDate.label" default="Inserted Date" />

        </label>
        <g:datePicker name="insertedDate" precision="day"  value="${witsWellSgInstance?.insertedDate}" default="none" noSelection="['': '']" />
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'runningFlag', 'error')} required">
        <label for="runningFlag">
            <g:message code="witsWellSg.runningFlag.label" default="Running Flag" />
            <span class="required-indicator">*</span>
        </label>
        <g:field name="runningFlag" type="number" value="${witsWellSgInstance.runningFlag}" required=""/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'dhDescription', 'error')} ">
        <label for="dhDescription">
            <g:message code="witsWellSg.dhDescription.label" default="Dh Description" />

        </label>
        <g:textField name="dhDescription" value="${witsWellSgInstance?.dhDescription}"/>
    </div>



    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'ptmd', 'error')} ">
        <label for="ptmd">
            <g:message code="witsWellSg.ptmd.label" default="Ptmd" />

        </label>
        <g:textField name="ptmd" value="${witsWellSgInstance?.ptmd}"/>
    </div>



    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'wellPurpose', 'error')} ">
        <label for="wellPurpose">
            <g:message code="witsWellSg.wellPurpose.label" default="Well Purpose" />

        </label>
        <g:select id="wellPurpose" name="wellPurpose.id" from="${MtWellPurpose.list()}" optionKey="id" value="${witsWellSgInstance?.wellPurpose?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'activityCodeFlag', 'error')} required">
        <label for="activityCodeFlag">
            <g:message code="witsWellSg.activityCodeFlag.label" default="Activity Code Flag" />
            <span class="required-indicator">*</span>
        </label>
        <g:field name="activityCodeFlag" type="number" value="${witsWellSgInstance.activityCodeFlag}" required=""/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: witsWellSgInstance, field: 'wellEnvironment', 'error')} ">
        <label for="wellEnvironment">
            <g:message code="witsWellSg.wellEnvironment.label" default="Well Environment" />

        </label>
        <g:select id="wellEnvironment" name="wellEnvironment.id" from="${MtEnvironment.list()}" optionKey="id" value="${witsWellSgInstance?.wellEnvironment?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>
