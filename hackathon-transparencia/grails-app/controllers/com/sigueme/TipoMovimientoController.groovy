package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import com.sigueme.*

@Secured('ROLE_ADMIN')
@Transactional(readOnly = false)
class TipoMovimientoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoMovimiento.list(params), model:[tipoMovimientoCount: TipoMovimiento.count()]
    }

    def show(TipoMovimiento tipoMovimiento) {
        respond tipoMovimiento
    }

    def create() {
        respond new TipoMovimiento(params)
    }

    @Transactional
    def save(TipoMovimiento tipoMovimiento) {
        if (tipoMovimiento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tipoMovimiento.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tipoMovimiento.errors, view:'create'
            return
        }

        tipoMovimiento.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoMovimiento.label', default: 'TipoMovimiento'), tipoMovimiento.id])
                redirect tipoMovimiento
            }
            '*' { respond tipoMovimiento, [status: CREATED] }
        }
    }

    def edit(TipoMovimiento tipoMovimiento) {
        respond tipoMovimiento
    }

    @Transactional
    def update(TipoMovimiento tipoMovimiento) {
        if (tipoMovimiento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (tipoMovimiento.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond tipoMovimiento.errors, view:'edit'
            return
        }

        tipoMovimiento.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'tipoMovimiento.label', default: 'TipoMovimiento'), tipoMovimiento.id])
                redirect tipoMovimiento
            }
            '*'{ respond tipoMovimiento, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoMovimiento tipoMovimiento) {

        if (tipoMovimiento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        tipoMovimiento.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'tipoMovimiento.label', default: 'TipoMovimiento'), tipoMovimiento.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoMovimiento.label', default: 'TipoMovimiento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
