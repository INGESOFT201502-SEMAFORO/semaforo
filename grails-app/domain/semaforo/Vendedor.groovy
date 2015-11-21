package semaforo

import groovy.json.*

class Vendedor extends Usuario {

	static belongsTo = [empresa: Empresa]
	static hasMany = [cita:Cita]

}