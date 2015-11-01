package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Cita)
class CitaSpec extends Specification {

    void "el dia no puede ser null"() {
        when :
        def cita = new Cita(
            dia: null,
            hora: '11:58:00',
            lugar: "Centro Andino"
        )
        then:
        !cita.validate()
    }

    void "el dia no puede ser vacio"() {
        when :
        def cita = new Cita(
                dia: "",
                hora: "11:58:00",
                lugar: "Centro Andino"
        )
        then:
        !cita.validate()
    }

    void "el hora no puede ser null"() {
        when :
        def cita = new Cita(
                dia: new Date(),
                hora: null,
                lugar: "Centro Andino"
        )
        then:
        !cita.validate()
    }

    void "la hora no puede ser vacia"() {
        when :
        def cita = new Cita(
                dia: new Date(),
                hora: "" ,
                lugar: "Centro Andino"
        )
        then:
        !cita.validate()
    }

    void "el lugar no puede ser null"() {
        when :
        def cita = new Cita(
                dia: new Date(),
                hora: "11:58:00",
                lugar: null
        )
        then:
        !cita.validate()
    }


    void "el lugar no puede ser vacio"() {
        when :
        def cita = new Cita(
                dia: new Date(),
                hora: "11:58:00",
                lugar:"Centro Andino"
        )
        then:
        !cita.validate()
    }

}
