package semaforo
import groovy.json.*

class Cliente extends Usuario{

	String direccion
	String telefono
	
	static hasMany = [citas:Cita, vehiculos: Vehiculo]

    static constraints = { 
		direccion nullable:false, blank:false, unique: true
		telefono nullable: false, blank: false, unique: false
    }
	
	String toString() {
		return "Direccion: " + direccion
		return "Telefono:  " + telefono
	}
}
