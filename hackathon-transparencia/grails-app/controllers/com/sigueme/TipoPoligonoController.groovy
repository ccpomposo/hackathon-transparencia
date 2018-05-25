package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoPoligonoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoPoligono.list(params), model:[tipoPoligonoCount: TipoPoligono.count()]
    }

    def show(TipoPoligono tipoPoligono) {
        respond tipoPoligono
    }

    def create() {
        respond new TipoPoligono(params)
    }

    @Transactional
    def save(TipoPoligono tipoPoligono) {
        if (tipoPoligono == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tipoPoligono.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tipoPoligono.errors, view:'create'
            return
        }

        tipoPoligono.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoPoligono.label', default: 'TipoPoligono'), tipoPoligono.id])
                redirect tipoPoligono
            }
            '*' { respond tipoPoligono, [status: CREATED] }
        }
    }

    def edit(TipoPoligono tipoPoligono) {
        respond tipoPoligono
    }

    @Transactional
    def update(TipoPoligono tipoPoligono) {
        if (tipoPoligono == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tipoPoligono.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tipoPoligono.errors, view:'edit'
            return
        }

        tipoPoligono.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoPoligono.label', default: 'TipoPoligono'), tipoPoligono.id])
                redirect tipoPoligono
            }
            '*'{ respond tipoPoligono, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoPoligono tipoPoligono) {

        if (tipoPoligono == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        tipoPoligono.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoPoligono.label', default: 'TipoPoligono'), tipoPoligono.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoPoligono.label', default: 'TipoPoligono'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
