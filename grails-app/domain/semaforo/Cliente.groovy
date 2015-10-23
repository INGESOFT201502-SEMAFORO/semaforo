package semaforo
import groovy.json.*

class Cliente extends Usuario{
	
	String tarjetaCredito
	
	//static hasMany = [citas:Cita]
    static constraints = { 
		tarjetaCredito maxSize: 50 , nullable:false
    }
	
	String toString() {
		return "TarjetaCredito: " + tarjetaCredito
	}
}
