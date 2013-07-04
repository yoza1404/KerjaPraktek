class KpTugas1 {
    public static final int STOP_STATUS = 0 //red
    public static final int RUNNING_STATUS = 1 //green
    public static final int FAILED_STATUS = 2 //yellow
    public static final int FINISHED_STATUS = 3 //blue
    public static final int AVAILABLE = 1
    public static final int UNAVAILABLE = 0


    String dhId
    String dhComments
    String dhIpAddress
    String sgIpAddress
    String wellName
    String costumerName
    MtRigType rigType
    String rigName
    String rigContractor
    String rigPower
    String latitude
    String longtitude
    String fieldName
    String stateOfProvince
    String country

    Date wellSpudTime
    Date releaseDate
    String proposedTotalMeasuredDepth
    PermanentDatum permanentDatum
    String elevationOfPd
    String kellyBushing
    String drillFloor
    String groundLevel
    String waterDepth
    DrillingMeasured drillingMeasured
    String heightAbovePd
    String airGap
    String tvdsReference
    String afeNumber
    String afeCost

    String latitudeDeg
    String latitudeMin
    String latitudeSec
    String latitudeNs

    String longtitudeDeg
    String longtitudeMin
    String longtitudeSec
    String longtitudeEw

    //static hasMany=[witsJobSg:WitsJobSg,witsReportPlan:WitsReportPlan,witsAlert:WitsAlert]
    //static belongsTo=[witsProject:WitsProject]

    static mapping = {
        dhId type: 'string', length: 40
        dhComments type: 'string', length: 200
        dhIpAddress type: 'string', length: 40
        sgIpAddress type: 'string', length: 100
        wellName type: 'string', length: 40
        customerName type: 'string', length: 40
        rigType type: 'string', length: 40
        rigName type: 'string', length: 40
        rigContractor type: 'string', length: 40
        rigPower type: 'string', length: 20
        latitude type: 'string', length: 20
        longitude type: 'string', length: 20
        fieldName type: 'string', length: 40
        stateOfProvince type: 'string', length: 40
        country type: 'string', length: 40

        proposedTotalMeasuredDepth type: 'string', length: 40
        permanentDatum type: 'string', length: 40
        elevationOfPd type: 'string', length: 20
        kellyBushing type: 'string', length: 20
        drillFloor type: 'string', length: 20
        groundLevel type: 'string', length: 20
        waterDepth type: 'string', length: 20
        drillingMeasured type: 'string', length: 40
        heightAbovePd type: 'string', length: 20
        airGap type: 'string', length: 20
        tvdsReference type: 'string', length: 40
        afeCost type: 'string', length: 20
        afeNumber type: 'string', length: 20

        latitudeDeg type: 'string', length: 5
        latitudeMin type: 'string', length: 5
        latitudeSec type: 'string', length: 5
        latitudeNs type: 'string', length: 5
        longtitudeDeg type: 'string', length: 5
        longtitudeMin type: 'string', length: 5
        longtitudeSec type: 'string', length: 5
        longtitudeEw type: 'string', length: 5
    }
    static constraints = {
        dhId nullable: true
        dhComments nullable: true
        dhIpAddress nullable: true
        sgIpAddress  nullable: true
        wellName nullable: true
        costumerName nullable: true
        rigType nullable: true
        rigName nullable: true
        rigContractor nullable: true
        rigPower nullable: true
        latitude nullable: true
        longtitude nullable: true
        fieldName nullable: true
        stateOfProvince nullable: true
        country nullable: true
        wellSpudTime nullable: true
        releaseDate nullable: true
        proposedTotalMeasuredDepth nullable: true
        permanentDatum nullable: true
        elevationOfPd  nullable: true
        kellyBushing nullable: true
        drillFloor  nullable: true
        groundLevel nullable: true
        waterDepth  nullable: true
        drillingMeasured  nullable: true
        heightAbovePd nullable: true
        airGap nullable: true
        tvdsReference nullable: true
        afeNumber nullable: true
        afeCost nullable: true
        latitudeDeg nullable: true
        latitudeMin nullable: true
        latitudeSec nullable: true
        latitudeNs nullable: true
        longtitudeDeg nullable: true
        longtitudeMin nullable: true
        longtitudeSec nullable: true
        longtitudeEw nullable: true
    }
}
