package semaforo
import groovy.json.*
class Cita {
	
	Date fecha
	String lugar

	static belongsTo = [cliente: Cliente]
	
    static constraints = {
		fecha nullable: false, date: true
		lugar blank: false, nullable: false
    }
	String toString() {
		return "Fecha: " + fecha + ", Lugar: " + lugar
	}
}
