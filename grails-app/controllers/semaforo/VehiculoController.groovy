package semaforo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VehiculoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE", saveApp: "POST", updateApp: "PUT"]

    def indexApp(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vehiculo.list(params), model:[vehiculoInstanceCount: Vehiculo.count()]
        // accion por defecto render index view con la lista de instancias
    }

    def createApp(){
        respond new Vehiculo(params)
    }

    def showApp(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
    }

    @Transactional
    def saveApp(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'createApp'
            return
        }

        vehiculoInstance.save flush:true

        //respond vehiculoInstance, view: 'showApp'
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action: "showApp", id: vehiculoInstance.id //vehiculoInstance
            }
            '*' { respond vehiculoInstance, [status: CREATED] }
        }
    }

    def editApp(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
    }

    @Transactional
    def updateApp(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'editApp'
            return
        }

        vehiculoInstance.save flush:true

        //respond vehiculoInstance, view: 'editApp'
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action: "showApp", id: vehiculoInstance.id //vehiculoInstance
            }
            '*'{ respond vehiculoInstance, [status: OK] }
        }
    }

    @Transactional
    def deleteApp(Vehiculo vehiculoInstance) {

        if (vehiculoInstance == null) {
            notFound()
            return
        }

        vehiculoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action:"indexApp", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }


    //************************************************************************************
    //scaffold
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vehiculo.list(params), model:[vehiculoInstanceCount: Vehiculo.count()]
        // accion por defecto render index view con la lista de instancias
    }

    def show(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
        // grails busca un id en la peticion y buca el objeto con ese id y lo trae
        //respond  retorna esta instancia y luego renderiza la vista show
    }

    def create() {
        respond new Vehiculo(params)
        // crea la instancia con los parametros, luego rendre la vista create
    }

    @Transactional
    def save(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'create'
            return
        }

        vehiculoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect vehiculoInstance
            }
            '*' { respond vehiculoInstance, [status: CREATED] }
        } //esta accion es llamada desde create view
        // busca una instancia con id provisto si no la hay..
        // si la hay verifica en busca de errores de validacion, si hay re-render la vista create
        //form es usado en el caso de envio de formularios, cuando el formulario en la create view
        // es enviado y se guarda el resultado en la instancia vehiculo se usa el tag message como metodos
        // para almacenar un mensaje de exito en el flash, luego llamamos redirigir que no manda a show action
    }

    def edit(Vehiculo vehiculoInstance) {
        respond vehiculoInstance
    }

    @Transactional
    def update(Vehiculo vehiculoInstance) {
        if (vehiculoInstance == null) {
            notFound()
            return
        }

        if (vehiculoInstance.hasErrors()) {
            respond vehiculoInstance.errors, view:'edit'
            return
        }

        vehiculoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect vehiculoInstance
            }
            '*'{ respond vehiculoInstance, [status: OK] }
        }
    }// response redirige a editview,

    @Transactional
    def delete(Vehiculo vehiculoInstance) {

        if (vehiculoInstance == null) {
            notFound()
            return
        }

        vehiculoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vehiculo.label', default: 'Vehiculo'), vehiculoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehiculo.label', default: 'Vehiculo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
