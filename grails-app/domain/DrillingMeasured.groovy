class DrillingMeasured {
    String id
    String name
    String description
    String createdBy
    Date createdDate
    String updatedBy
    Date updatedDate
    int idx

    static mapping = { 
        id type: 'string', generator: "assigned", name: 'id'
    }
    static constraints = {
        id nullable: false
        name nullable: true
        description nullable: true
        createdBy nullable: true
        createdDate nullable: true
        updatedBy nullable: true
        updatedDate nullable: true
        idx nullable: true
    }
}