class WitsWellSg {
    public static final int STOP_STATUS = 0 //red
    public static final int RUNNING_STATUS = 1 //green
    public static final int FAILED_STATUS = 2 //yellow
    public static final int FINISHED_STATUS = 3 //blue
    public static final int AVAILABLE = 1
    public static final int UNAVAILABLE = 0

    String id
    String wellName
    String customerName
    String rigName
    String sgId
    String sgIpAddress
    String rigContractor
    String latitude
    String longitude
    String fieldName
    String stateOfProvince
    String country
    Date wellSpudTime
    PermanentDatum permanentDatum
    String elevationOfPd
    String kellyBushing
    String drillFloor
    String groundLevel
    String waterDepth
    DrillingMeasured drillingMeasured
    String heightAbovePd
    String airGap
    String createdBy
    Date createdDate
    String updatedBy
    Date updatedDate
    int runningFlag
    Date finishedDate
    String dhIpAddress
    WitsProject witsProject
    String dhId
    Date insertedDate
    String dhDescription
    MtRigType rigType
    String rigPower
    String ptmd
    String afeNumber
    String afeCost
    MtWellPurpose wellPurpose
    MtEnvironment wellEnvironment
    int activityCodeFlag

//    static hasMany=[witsJobSg:WitsJobSg,witsReportPlan:WitsReportPlan,witsAlert:WitsAlert]
//    static belongsTo=[witsProject:WitsProject]

    static mapping = {
        id type: 'string', generator: "assigned", name: 'id', length: 100
        wellName type: 'string', length: 40
        customerName type: 'string', length: 40
        rigName type: 'string', length: 40
        sgIpAddress type: 'string', length: 100
        sgId type: 'string', length: 40
        rigContractor type: 'string', length: 40
        latitude type: 'string', length: 20
        longitude type: 'string', length: 20
        fieldName type: 'string', length: 40
        stateOfProvince type: 'string', length: 40
        country type: 'string', length: 40
        permanentDatum type: 'string', length: 40
        elevationOfPd type: 'string', length: 20
        kellyBushing type: 'string', length: 20
        drillFloor type: 'string', length: 20
        groundLevel type: 'string', length: 20
        waterDepth type: 'string', length: 20
        drillingMeasured type: 'string', length: 40
        heightAbovePd type: 'string', length: 20
        airGap type: 'string', length: 20
        createdBy type: 'string', length: 40
        updatedBy type: 'string', length: 40
        dhIpAddress type: 'string', length: 40
        witsProject type: 'string', length: 40
        dhId type: 'string', length: 40
        dhDescription type: 'string', length: 200
        rigType type: 'string', length: 40
        wellEnvironment type: 'string', length: 40
        rigPower type: 'string', length: 20
        ptmd type: 'string', length: 20
        afeCost type: 'string', length: 20
        afeNumber type: 'string', length: 20
    }
    static constraints = {
        id nullable: true
        wellName nullable: true
        customerName nullable: true
        rigName nullable: true
        sgId nullable: true
        sgIpAddress nullable: true
        rigContractor nullable: true
        latitude nullable: true
        longitude nullable: true
        fieldName nullable: true
        stateOfProvince nullable: true
        country nullable: true
        wellSpudTime nullable: true
        permanentDatum nullable: true
        elevationOfPd nullable: true
        kellyBushing nullable: true
        drillFloor nullable: true
        groundLevel nullable: true
        waterDepth nullable: true
        drillingMeasured nullable: true
        heightAbovePd nullable: true
        airGap nullable: true
        createdBy nullable: true
        createdDate nullable: true
        updatedBy nullable: true
        updatedDate nullable: true
        finishedDate nullable: true
        dhIpAddress nullable: true
        witsProject nullable: true
        dhId nullable: true
        insertedDate nullable: true
        runningFlag nullable: true
        dhDescription nullable: true
        rigType nullable: true
        rigPower nullable: true
        ptmd nullable: true
        afeNumber nullable: true
        afeCost nullable: true
        wellPurpose nullable: true
        activityCodeFlag nullable: true
        wellEnvironment nullable: true
    }
}