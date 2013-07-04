<g:set var="sgIP" value="${[0, 0, 0, 0]}" scope="page"/>
<g:set var="dhIP" value="${[0, 0, 0, 0]}" scope="page"/>
<g:set var="longtitudeSplit" value="${[0, 0, 0, 0]}" scope="page"/>
<g:set var="langtitudeSplit" value="${[0, 0, 0, 0]}" scope="page"/>
<g:set var="linkIP" value=" " scope="page"/>

<g:javascript library="jquery"/>

<div id="firstColumn" style="width:50%; float:left;" xmlns="http://www.w3.org/1999/html">

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'dhId', 'error')} ">
        <label for="dhId">
            <g:message code="kpTugas1.dhId.label" default="DH ID:"/>

        </label>
        <g:textField name="dhId" value="${kpTugas1Instance?.dhId}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'dhComments', 'error')} ">
        <label for="dhComments">
            <g:message code="kpTugas1.dhComments.label" default="DH Comments:"/>

        </label>
        <g:textField name="dhComments" value="${kpTugas1Instance?.dhComments}" readonly="yes"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'dhIpAddress', 'error')} ">
        <label for="dhIpAddress">
            <g:message code="kpTugas1.dhIpAddress.label" default="DH IP Address:"/>

        </label>
        <g:textField name="dhIpAddress0" style="width:1.75em;" maxlength="3" value="${dhIP[0]}" readonly="yes"/>.
        <g:textField name="dhIpAddress1" style="width:1.75em;" maxlength="3" value="${dhIP[1]}" readonly="yes"/>.
        <g:textField name="dhIpAddress2" style="width:1.75em;" maxlength="3" value="${dhIP[2]}" readonly="yes"/>.
        <g:textField name="dhIpAddress3" style="width:1.75em;" maxlength="3" value="${dhIP[3]}" readonly="yes"/>
        <g:set var="kpTugas1Instance.dhIpAddress"
               value="${dhIP[0].toString() + '.' + dhIP[1].toString() + '.' + dhIP[2].toString() + '.' + dhIP[3].toString()}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'sgIpAddress', 'error')} ">

        <label for="sgIpAddress">
            <g:message code="kpTugas1.sgIpAddress.label" default="SG IP Address:"/>

        </label>


        <script>
            var urlTestConnection = '${g.createLink(controller: "kpTugas1", action: "sgIpPing")}';
            function fungsi() {
                var data = $("#sgIpAddress").val();
                alert(data);
                var paramData = $.param(data);
                /*$.get("sgIpPing", paramData, function(data)
                 {
                 alert(paramData+' '+ data.kembali);
                 });*/

                $.get(urlTestConnection, {ipAddress: data})
                        .success(function (output) {
                            alert(output.kembali);
                        })
                        .error(function () {
                            alert(strInvalidIpMessage);
                        })
                        .complete(function () {
                        })

            }
        </script>

        <input type="text" id="sgIpAddress" name="sgIpAddress" placeholder="xxx.xxx.xxx.xxx"
               value="${kpTugas1Instance?.sgIpAddress}"/>
        <!-- <g:remoteLink action="sgIpPing" ip="document.getElementById('textbox_id').value"
                           update="message">Test</g:remoteLink> -->

        <a onclick="fungsi()">test</a>
        <g:if test="${flash.message}">
            <div class="message" style="display: block">${flash.message}</div>
        </g:if>
    <!-- <a href="sgIpPing?ip=${"google.com".toString()}" onclick="showAndClearField(this.form)">Test</a>     -->
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'wellName', 'error')} ">
        <label for="wellName">
            <g:message code="kpTugas1.wellName.label" default="Well Name:"/>

        </label>
        <g:textField name="wellName" value="${kpTugas1Instance?.wellName}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'costumerName', 'error')} ">
        <label for="costumerName">
            <g:message code="kpTugas1.costumerName.label" default="Costumer Name:"/>

        </label>
        <g:textField name="costumerName" value="${kpTugas1Instance?.costumerName}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'rigType', 'error')} ">
        <label for="rigType">
            <g:message code="kpTugas1.rigType.label" default="Rig Type:"/>

        </label>
        <g:select id="rigType" name="rigType.id" from="${MtRigType.list()}" optionKey="id"
                  value="${kpTugas1Instance?.rigType?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'rigName', 'error')} ">
        <label for="rigName">
            <g:message code="kpTugas1.rigName.label" default="Rig Name:"/>

        </label>
        <g:textField name="rigName" value="${kpTugas1Instance?.rigName}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'rigContractor', 'error')} ">
        <label for="rigContractor">
            <g:message code="kpTugas1.rigContractor.label" default="Rig Contractor"/>

        </label>
        <g:textField name="rigContractor" value="${kpTugas1Instance?.rigContractor}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'rigPower', 'error')} ">
        <label for="rigPower">
            <g:message code="kpTugas1.rigPower.label" default="Rig Power"/>

        </label>
        <g:textField name="rigPower" value="${kpTugas1Instance?.rigPower}"/>
        <span class="label2">hp</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'latitude', 'error')} ">
        <label for="latitude">
            <g:message code="kpTugas1.latitude.label" default="Latitude:"/>

        </label>
        <g:textField name="latitudeDeg" style="width:1em;" maxlength="4" value="${kpTugas1Instance?.latitudeDeg}"
                     placeholder="0"/>
        <span class="label2">deg</span>
        <g:textField name="latitudeMin" style="width:1em;" maxlength="4" value="${kpTugas1Instance?.latitudeMin}"
                     placeholder="0"/>
        <span class="label2">min</span>
        <g:textField name="latitudeSec" style="width:1em;" maxlength="6" value="${kpTugas1Instance?.latitudeSec}"
                     placeholder="0"/>
        <span class="label2">sec</span>
        <g:textField name="latitudeNs" style="width:1em;" maxlength="1" value="${kpTugas1Instance?.latitudeNs}"
                     placeholder="N"/>
        <span class="label2">N/S</span>

    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'longtitude', 'error')} ">
        <label for="longtitude">
            <g:message code="kpTugas1.longtitude.label" default="Longtitude:"/>

        </label>
        <g:textField name="longtitudeDeg" style="width:1em;" maxlength="4" value="${kpTugas1Instance?.longtitudeDeg}"
                     placeholder="0"/>
        <span class="label2">deg</span>
        <g:textField name="longtitudeMin" style="width:1em;" maxlength="4" value="${kpTugas1Instance?.longtitudeMin}"
                     placeholder="0"/>
        <span class="label2">min</span>
        <g:textField name="longtitudeSec" style="width:1em;" maxlength="6" value="${kpTugas1Instance?.longtitudeSec}"
                     placeholder="0"/>
        <span class="label2">sec</span>
        <g:textField name="longtitudeEw" style="width:1em;" maxlength="1" value="${kpTugas1Instance?.longtitudeEw}"
                     placeholder="E"/>
        <span class="label2">E/W</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'fieldName', 'error')} ">
        <label for="fieldName">
            <g:message code="kpTugas1.fieldName.label" default="Field Name:"/>

        </label>
        <g:textField name="fieldName" value="${kpTugas1Instance?.fieldName}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'stateOfProvince', 'error')} ">
        <label for="stateOfProvince">
            <g:message code="kpTugas1.stateOfProvince.label" default="State/Province:"/>

        </label>
        <g:textField name="stateOfProvince" value="${kpTugas1Instance?.stateOfProvince}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'country', 'error')} ">
        <label for="country">
            <g:message code="kpTugas1.country.label" default="Country:"/>

        </label>
        <g:textField name="country" value="${kpTugas1Instance?.country}"/>
    </div>

</div>


<div id="secondColumn" style="width:50%; float:left;">

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'wellSpudTime', 'error')} ">
        <label for="wellSpudTime">
            <g:message code="kpTugas1.wellSpudTime.label" default="Well Spud Time:"/>

        </label>

        <div class="well">
            <div id="datetimepicker2" class="input-append">
                <input data-format="MM/dd/yyyy HH:mm:ss PP" type="text"></input>
                <span class="add-on">
                    <i data-time-icon="icon-time" data-date-icon="icon-calendar">
                    </i>
                </span>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    language: 'en',
                    pick12HourFormat: true
                });
            });
        </script>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'releaseDate', 'error')} ">
        <label for="releaseDate">
            <g:message code="kpTugas1.releaseDate.label" default="Release Date:"/>

        </label>

        <div class="well2">
            <div id="datetimepicker3" class="input-append">
                <input data-format="MM/dd/yyyy HH:mm:ss PP" type="text"/>
                <span class="add-on">
                    <i data-time-icon="icon-time" data-date-icon="icon-calendar">
                    </i>
                </span>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    language: 'en',
                    pick12HourFormat: true
                });
            });
        </script>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'proposedTotalMeasuredDepth', 'error')} ">
        <label for="proposedTotalMeasuredDepth">
            <g:message code="kpTugas1.proposedTotalMeasuredDepth.label" default="Proposed Total Measured Depth:"/>

        </label>
        <g:textField name="proposedTotalMeasuredDepth" value="${kpTugas1Instance?.proposedTotalMeasuredDepth}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'permanentDatum', 'error')} ">
        <label for="permanentDatum">
            <g:message code="kpTugas1.permanentDatum.label" default="Permanent Datum (PD):"/>

        </label>
        <g:select id="permanentDatum" name="permanentDatum.id" from="${PermanentDatum.list()}" optionKey="id"
                  value="${kpTugas1Instance?.permanentDatum?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'elevationOfPd', 'error')} ">
        <label for="elevationOfPd">
            <g:message code="kpTugas1.elevationOfPd.label" default="Elevation Of PD:"/>

        </label>
        <g:textField name="elevationOfPd" value="${kpTugas1Instance?.elevationOfPd}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'kellyBushing', 'error')} ">
        <label for="kellyBushing">
            <g:message code="kpTugas1.kellyBushing.label" default="Kelly Bushing:"/>

        </label>
        <g:textField name="kellyBushing" value="${kpTugas1Instance?.kellyBushing}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'drillFloor', 'error')} ">
        <label for="drillFloor">
            <g:message code="kpTugas1.drillFloor.label" default="Drill Floor:"/>

        </label>
        <g:textField name="drillFloor" value="${kpTugas1Instance?.drillFloor}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'groundLevel', 'error')} ">
        <label for="groundLevel">
            <g:message code="kpTugas1.groundLevel.label" default="Ground Level (Land Rigs Only):"/>

        </label>
        <g:textField name="groundLevel" value="${kpTugas1Instance?.groundLevel}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'waterDepth', 'error')} ">
        <label for="waterDepth">
            <g:message code="kpTugas1.waterDepth.label" default="Water Depth (Offshore Rigs Only):"/>

        </label>
        <g:textField name="waterDepth" value="${kpTugas1Instance?.waterDepth}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'drillingMeasured', 'error')} ">
        <label for="drillingMeasured">
            <g:message code="kpTugas1.drillingMeasured.label" default="Drilling Measured from:"/>

        </label>
        <g:select id="drillingMeasured" name="drillingMeasured.id" from="${DrillingMeasured.list()}" optionKey="id"
                  value="${kpTugas1Instance?.drillingMeasured?.id}" class="many-to-one" noSelection="['null': '']"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'heightAbovePd', 'error')} ">
        <label for="heightAbovePd">
            <g:message code="kpTugas1.heightAbovePd.label" default="Height Above PD:"/>

        </label>
        <g:textField name="heightAbovePd" value="${kpTugas1Instance?.heightAbovePd}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'airGap', 'error')} ">
        <label for="airGap">
            <g:message code="kpTugas1.airGap.label" default="Air Gap:"/>

        </label>
        <g:textField name="airGap" value="${kpTugas1Instance?.airGap}"/>
        <span class="label2">feet</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'tvdsReference', 'error')} ">
        <label for="tvdsReference">
            <g:message code="kpTugas1.tvdsReference.label" default="TVDs Reference:"/>
        </label>
        <g:textField name="tvdsReference" value="${kpTugas1Instance?.tvdsReference}" readonly="yes"/>
        <span class="label2">feet</span>
        <br/><span class="label2">TVDs Reference = Elevation of PD + Height above PD</span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'afeNumber', 'error')} ">
        <label for="afeNumber">
            <g:message code="kpTugas1.afeNumber.label" default="AFE Number:"/>

        </label>
        <g:textField name="afeNumber" value="${kpTugas1Instance?.afeNumber}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: kpTugas1Instance, field: 'afeCost', 'error')} ">
        <label for="afeCost">
            <g:message code="kpTugas1.afeCost.label" default="AFE Cost:"/>

        </label>
        <g:textField name="afeCost" value="${kpTugas1Instance?.afeCost}"/>
        <span class="label2">usd</span>
    </div>

</div>
