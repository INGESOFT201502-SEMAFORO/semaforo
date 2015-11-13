package semaforo
import groovy.json.*
class Seguro {

	Date fechaCompra
	Date fechaVencimiento
	Double valor

	static belongsTo = [vehiculo: Vehiculo, empresa: Empresa]

    static constraints = {
		fechaCompra blank: false, nullable: false, date: true
		fechaVencimiento blank: false, nullable: false, date: true
		valor blank: false, nullable: false
    }
	String toString() {
		return "Fecha de Compra: " + fechaCompra +", Fecha de vencimiento: " + fechaVencimiento +", Valor: " + valor
	}
}
