package semaforo
import groovy.json.*
class Empresa {
	String nombre
	String direccion
	long telefono
	
	static hasMany = [vendedores: Vendedor, seguros: Seguro]
	
    static constraints = {
		nombre blank: false, nullable: false, maxSize: 50
		telefono size: 7..25, blank: false, nullable: false
		direccion  maxSize: 50
    }
	String toString() {
		return "Nombre: " + nombre +", Telefono: " + telefono +", Direción: " + direcion 
	}
}
