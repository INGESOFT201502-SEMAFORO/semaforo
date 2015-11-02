package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Operario)
class OperarioSpec extends Specification {

    void "Especialidad no puede ser vacia"() {
        def user = new Operario(
                especialidad: "",
                nombre: "David",
                //direccion: "carrera 31c # 1H- 61"
        )


    }
}
