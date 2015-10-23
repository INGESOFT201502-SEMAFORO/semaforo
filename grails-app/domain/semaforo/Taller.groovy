package semaforo
import groovy.json.*
class Taller {
	
	String nombre
	String direccion
	String especialidad
	
	//static belongsTo = [operario: Operario]
	
    static constraints = {
		nombre blank: false, nullable: false, maxSize: 50
		especialidad blank: false, nullable: false
		direccion  maxSize: 50	
	}
	String toString() {
		return "Nombre: " + nombre +", Especialidad: " + especialidad +", Direción: " + direcion
	}
    
}
