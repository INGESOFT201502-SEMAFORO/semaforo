package semaforo

import groovy.json.*

class Usuario {

	String nombre
	String usuario
	String correo
	int edad
	long cedula


	static constraints = {
		nombre  maxSize:50, blank: false, nullable: false
		usuario maxSize:50, blank: false, nullable: false
		correo maxSize:50, blank: false, nullable: false
		edad min: 18, blank: false, nullable: false
		cedula unique: true, blank: false, nullable: false
	}

	String toString() {
		return "Nombre: " + nombre +", Usuario: " + usuario +", Correo: " + correo +", Edad: " + edad +", Cedula: " + cedula
	}
}
