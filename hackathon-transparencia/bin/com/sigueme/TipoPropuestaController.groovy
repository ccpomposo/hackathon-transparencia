package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoPropuestaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoPropuesta.list(params), model:[tipoPropuestaCount: TipoPropuesta.count()]
    }

    def show(TipoPropuesta tipoPropuesta) {
        respond tipoPropuesta
    }

    def create() {
        respond new TipoPropuesta(params)
    }

    @Transactional
    def save(TipoPropuesta tipoPropuesta) {
        if (tipoPropuesta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tipoPropuesta.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tipoPropuesta.errors, view:'create'
            return
        }

        tipoPropuesta.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoPropuesta.label', default: 'TipoPropuesta'), tipoPropuesta.id])
                redirect tipoPropuesta
            }
            '*' { respond tipoPropuesta, [status: CREATED] }
        }
    }

    def edit(TipoPropuesta tipoPropuesta) {
        respond tipoPropuesta
    }

    @Transactional
    def update(TipoPropuesta tipoPropuesta) {
        if (tipoPropuesta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tipoPropuesta.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tipoPropuesta.errors, view:'edit'
            return
        }

        tipoPropuesta.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoPropuesta.label', default: 'TipoPropuesta'), tipoPropuesta.id])
                redirect tipoPropuesta
            }
            '*'{ respond tipoPropuesta, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoPropuesta tipoPropuesta) {

        if (tipoPropuesta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        tipoPropuesta.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoPropuesta.label', default: 'TipoPropuesta'), tipoPropuesta.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoPropuesta.label', default: 'TipoPropuesta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
