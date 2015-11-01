package semaforo
import groovy.json.*

class Cliente extends Usuario{

	String tarjetaCredito
	
	static hasMany = [citas:Cita, vehiculos: Vehiculo]

    static constraints = { 
		tarjetaCredito maxSize: 50
    }
	
	String toString() {
		return "TarjetaCredito: " + tarjetaCredito
	}
}
