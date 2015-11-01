package semaforo
import groovy.json.*
class Cita {
	
	Date dia
	Date hora
	String lugar

	static belongsTo = [cliente: Cliente]
	
    static constraints = {
		dia blank: false, nullable: false, date: true, validator: { val -> validateDate(val) }
		hora blank: false, nullable: false, date: true, validator: { val -> validateDate(val) }	
		lugar blank: false, nullable: false
    }
	String toString() {
		return "Dia: " + dia +" ,Hora: " + hora + ", Lugar: " + lugar
	}
}
