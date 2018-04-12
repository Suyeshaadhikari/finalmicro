class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/")
        "/"(controller: 'login',action: 'beforeLogin')
        "500"(view:'/error')
	}



}
