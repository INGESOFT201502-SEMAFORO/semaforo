package semaforo

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Usuario)
class UsuarioSpec extends Specification {

    void "El nombre no puede ser null"() {
        when :
        def user = new Usuario(
                nombre : null,
                usuario : "Silva",
                correo : "asd",
                password: "fghdf",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "El nombre no puede ser vacio"() {
        when :
        def user = new Usuario(
                nombre : '',
                usuario : "Silva",
                correo : "asd",
                password: "fghdf",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "El nombre no puede tener mas de 50 caracteres"() {
        when :
        def user = new Usuario(
                nombre : "012345678901234567890123456789012345678901234567890",
                usuario : "Silva",
                correo : "asd",
                password: "fghdf",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "El user no puede ser null"() {
        when :
        def user = new Usuario(
                nombre : "cesar",
                usuario : null,
                correo : "asd",
                password: "fghdf",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "El user no puede ser vacio"() {
        when :
        def user = new Usuario(
                nombre : "Juan",
                usuario : "",
                correo : "asd",
                password: "fghdf",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "El user no puede tener mas de 50 caracteres"() {
        when :
        def user = new Usuario(
                nombre : "012345678901234567890123456789012345678901234567890",
                usuario : "Silva",
                correo : "asd",
                password: "fghdf",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "El correo es valido"() {
        when :
        def user = new Usuario(
                nombre : "Samuel",
                usuario : "Silva",
                correo : "davalexer93gmail.com",
                password: "fghdf",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "La contraseña no puede ser nula"() {
        when :
        def user = new Usuario(
                nombre : "Samuel",
                usuario : "Silva",
                correo : "davalexer93gmail.com",
                password: null,
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "La contraseña no puede ser vacia"() {
        when :
        def user = new Usuario(
                nombre : "Samuel",
                usuario : "Silva",
                correo : "davalexer93gmail.com",
                password: "",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "La contrasena debe ser valida"() {
        when :
        def user = new Usuario(
                nombre : "Samuel",
                usuario : "Silva",
                correo : "davalexer93gmail.com",
                password: "12w",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }

    void "La edad no puede ser null"() {
        when :
        def user = new Usuario(
                nombre : "Samuel",
                usuario : "Silva",
                correo : "davalexer93gmail.com",
                password: "",
                edad : 24,
                genero : "F",
                cedula : 1,
        )
        then :
        user.validate()
    }
}
