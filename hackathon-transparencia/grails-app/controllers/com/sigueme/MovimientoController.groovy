package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import com.sigueme.*

@Secured('ROLE_ADMIN')
@Transactional(readOnly = false)
class MovimientoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Movimiento.list(params), model:[movimientoCount: Movimiento.count()]
    }

    def show(Movimiento movimiento) {
        respond movimiento
    }

    def create() {
        respond new Movimiento(params)
    }

    @Transactional
    def save(Movimiento movimiento) {
        if (movimiento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (movimiento.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond movimiento.errors, view:'create'
            return
        }

        movimiento.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), movimiento.id])
                redirect movimiento
            }
            '*' { respond movimiento, [status: CREATED] }
        }
    }

    def edit(Movimiento movimiento) {
        respond movimiento
    }

    @Transactional
    def update(Movimiento movimiento) {
        if (movimiento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (movimiento.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond movimiento.errors, view:'edit'
            return
        }

        movimiento.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), movimiento.id])
                redirect movimiento
            }
            '*'{ respond movimiento, [status: OK] }
        }
    }

    @Transactional
    def delete(Movimiento movimiento) {

        if (movimiento == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        movimiento.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), movimiento.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'movimiento.label', default: 'Movimiento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
