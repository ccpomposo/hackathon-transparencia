package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SujetoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sujeto.list(params), model:[sujetoCount: Sujeto.count()]
    }

    def show(Sujeto sujeto) {
        respond sujeto
    }

    def create() {
        respond new Sujeto(params)
    }

    @Transactional
    def save(Sujeto sujeto) {
        if (sujeto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (sujeto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond sujeto.errors, view:'create'
            return
        }

        sujeto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sujeto.label', default: 'Sujeto'), sujeto.id])
                redirect sujeto
            }
            '*' { respond sujeto, [status: CREATED] }
        }
    }

    def edit(Sujeto sujeto) {
        respond sujeto
    }

    @Transactional
    def update(Sujeto sujeto) {
        if (sujeto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (sujeto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond sujeto.errors, view:'edit'
            return
        }

        sujeto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sujeto.label', default: 'Sujeto'), sujeto.id])
                redirect sujeto
            }
            '*'{ respond sujeto, [status: OK] }
        }
    }

    @Transactional
    def delete(Sujeto sujeto) {

        if (sujeto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        sujeto.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sujeto.label', default: 'Sujeto'), sujeto.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sujeto.label', default: 'Sujeto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
