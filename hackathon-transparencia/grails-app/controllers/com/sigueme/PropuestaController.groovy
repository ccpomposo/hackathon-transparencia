package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import com.sigueme.*

@Secured('ROLE_USUARIO')
@Transactional(readOnly = false)
class PropuestaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Propuesta.list(params), model:[propuestaCount: Propuesta.count()]
    }

    def show(Propuesta propuesta) {
        respond propuesta
    }

    def create() {
        respond new Propuesta(params)
    }

    @Transactional
    def save(Propuesta propuesta) {
        if (propuesta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (propuesta.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond propuesta.errors, view:'create'
            return
        }

        propuesta.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'propuesta.label', default: 'Propuesta'), propuesta.id])
                redirect propuesta
            }
            '*' { respond propuesta, [status: CREATED] }
        }
    }

    def edit(Propuesta propuesta) {
        respond propuesta
    }

    @Transactional
    def update(Propuesta propuesta) {
        if (propuesta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (propuesta.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond propuesta.errors, view:'edit'
            return
        }

        propuesta.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'propuesta.label', default: 'Propuesta'), propuesta.id])
                redirect propuesta
            }
            '*'{ respond propuesta, [status: OK] }
        }
    }

    @Transactional
    def delete(Propuesta propuesta) {

        if (propuesta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        propuesta.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'propuesta.label', default: 'Propuesta'), propuesta.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'propuesta.label', default: 'Propuesta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
