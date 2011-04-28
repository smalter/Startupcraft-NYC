package startupcraft

class PlayerCandidate {

    String name
    String email
    String startup
    String league
    String bnetId
    String comments
    String twitter

    
    static constraints = {
        name(nullable:false)
        email(nullable:false)
        startup(nullable:true)
        league(nullable:true)
        bnetId(nullable:true)
        comments(nullable:true)
        twitter(nullable:true)
    }
}
