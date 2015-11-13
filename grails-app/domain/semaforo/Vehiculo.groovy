package semaforo
import groovy.json.*
class Vehiculo {
	
	String placa
	int modelo
	String color
	String marca

	static belongsTo = [cliente: Cliente]
	static hasOne = [seguro: Seguro]

    static constraints = {
		seguro nullable: true
		placa unique: true, blank: false, nullable: false, matches: /[A-Z]{3}-\d{3}/
		modelo blank: false, nullable: false
		color blank: false, nullable: false
		marca blank: false, nullable: false
    }
	String toString() {
		return "Placa: " + placa +", Modelo: " + modelo +", Color: " + color +", Marca: " + marca
	}
}
