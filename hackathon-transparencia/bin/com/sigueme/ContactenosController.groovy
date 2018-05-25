package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import Objetos.*

@Secured('permitAll')
@Transactional(readOnly = true)
class ContactenosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Contactenos.list(params), model:[contactenosCount: Contactenos.count()]
    }

    def show(Contactenos contactenos) {
        respond contactenos
    }

    def create() {
        respond new Contactenos(params)
    }

    @Transactional
    def save(Contactenos contactenos) {
        if (contactenos == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (contactenos.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond contactenos.errors, view:'create'
            return
        }

        contactenos.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contactenos.label', default: 'Contactenos'), contactenos.id])
                redirect contactenos
            }
            '*' { respond contactenos, [status: CREATED] }
        }
    }

    def edit(Contactenos contactenos) {
        respond contactenos
    }

    @Transactional
    def update(Contactenos contactenos) {
        if (contactenos == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (contactenos.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond contactenos.errors, view:'edit'
            return
        }

        contactenos.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'contactenos.label', default: 'Contactenos'), contactenos.id])
                redirect contactenos
            }
            '*'{ respond contactenos, [status: OK] }
        }
    }

    @Transactional
    def delete(Contactenos contactenos) {

        if (contactenos == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        contactenos.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'contactenos.label', default: 'Contactenos'), contactenos.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contactenos.label', default: 'Contactenos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
