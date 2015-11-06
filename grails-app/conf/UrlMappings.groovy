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
        "/ingresar"(view: "/ingresar")
        "500"(view:'/error')
	}
}
