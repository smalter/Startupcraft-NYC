package startupcraft

import grails.converters.JSON

class HomeController {

    def index = { }

    def saveinfo = {
        def retmap = [:]
        if (params.name && params.email) {
            (new startupcraft.PlayerCandidate(
                name:params.name
                ,email:params.email
                ,startup:params.startup
                ,league:params.league
                ,bnetId:params.bnetId
                ,comments:params.comments
                ,twitter:params.twitter
            )).save();
            retmap['success'] = 1;
        } else {
            retmap['success'] = 0;
        }
        render retmap as JSON;
    }
}
