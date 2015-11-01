package semaforo

import groovy.json.*

class Vendedor extends Usuario {
	
	double salario
	
	static hasMany = [cita:Cita, seguro:Seguro]

	static belongsTo = [empresa: Empresa]

    static constraints = { 
		
		salario blank:false
    }
	String toString() {
		return "Salario: " + salario
	}
}