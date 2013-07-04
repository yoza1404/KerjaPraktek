class MtRigType {
    String id
    String name
    String description
    String createdBy
    Date createdDate
    String updatedBy
    Date updatedDate
    int idx
    String defaultFlag

    static mapping = { 
        id type: 'string', generator: "assigned", name: 'id', length: 100
        name type: 'string', length: 40
        description type: 'string', length: 500
        createdBy type: 'string', length: 40
        updatedBy type: 'string', length: 40
        defaultFlag type: 'string', length: 1
    }

    static constraints = {
        id nullable: true
        name nullable: true
        description nullable: true
        createdBy nullable: true
        createdDate nullable: true
        updatedBy nullable: true
        updatedDate nullable: true
        idx nullable: true
        defaultFlag nullable: true
    }
}