package semaforo
import groovy.json.*
class Vehiculo {
	
	String placa
	String tipoVehiculo
	String marca
	String referencia1
	String referencia2
	String referencia3
	String modelo
	double valor

	static belongsTo = [cliente: Cliente]
	static hasOne = [seguro: Seguro]

    static constraints = {
		seguro nullable: true
		placa unique: true, blank: false, nullable: false, matches: /[A-Z]{3}-\d{3}/
		marca blank: false, nullable: false
		tipoVehiculo blank: false, nullable: false
		referencia1 blank: false, nullable: false
		referencia2 blank: false, nullable: false
		referencia3 blank: false, nullable: false
		modelo blank: false, nullable: false
		valor nullable: false
    }

	public String toString() {
		return "Vehiculo{" +
				"placa='" + placa + '\'' +
				", tipoVehiculo='" + tipoVehiculo + '\'' +
				", marca='" + marca + '\'' +
				", referencia1='" + referencia1 + '\'' +
				", referencia2='" + referencia2 + '\'' +
				", referencia3='" + referencia3 + '\'' +
				", modelo='" + modelo + '\'' +
				", valor=" + valor +
				'}';
	}
}
