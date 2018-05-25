package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import Objetos.*

@Secured('ROLE_ADMIN')
@Transactional(readOnly = false)
class PantallaSujetoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PantallaSujeto.list(params), model:[pantallaSujetoCount: PantallaSujeto.count()]
    }

    def show(PantallaSujeto pantallaSujeto) {
        respond pantallaSujeto
    }

    def create() {
        respond new PantallaSujeto(params)
    }

    @Transactional
    def save(PantallaSujeto pantallaSujeto) {
        if (pantallaSujeto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (pantallaSujeto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond pantallaSujeto.errors, view:'create'
            return
        }

        pantallaSujeto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pantallaSujeto.label', default: 'PantallaSujeto'), pantallaSujeto.id])
                redirect pantallaSujeto
            }
            '*' { respond pantallaSujeto, [status: CREATED] }
        }
    }

    def edit(PantallaSujeto pantallaSujeto) {
        respond pantallaSujeto
    }

    @Transactional
    def update(PantallaSujeto pantallaSujeto) {
        if (pantallaSujeto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (pantallaSujeto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond pantallaSujeto.errors, view:'edit'
            return
        }

        pantallaSujeto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'pantallaSujeto.label', default: 'PantallaSujeto'), pantallaSujeto.id])
                redirect pantallaSujeto
            }
            '*'{ respond pantallaSujeto, [status: OK] }
        }
    }

    @Transactional
    def delete(PantallaSujeto pantallaSujeto) {

        if (pantallaSujeto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        pantallaSujeto.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'pantallaSujeto.label', default: 'PantallaSujeto'), pantallaSujeto.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pantallaSujeto.label', default: 'PantallaSujeto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
