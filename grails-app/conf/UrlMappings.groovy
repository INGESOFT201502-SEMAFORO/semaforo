class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/home"(view: "/home")
        "/equipo"(view: "/equipo")
        "/somos"(view: "/somos")
        "500"(view:'/error')
	}
}
