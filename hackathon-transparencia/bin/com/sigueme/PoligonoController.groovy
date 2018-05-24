package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PoligonoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Poligono.list(params), model:[poligonoCount: Poligono.count()]
    }

    def show(Poligono poligono) {
        respond poligono
    }

    def create() {
        respond new Poligono(params)
    }

    @Transactional
    def save(Poligono poligono) {
        if (poligono == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (poligono.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond poligono.errors, view:'create'
            return
        }

        poligono.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'poligono.label', default: 'Poligono'), poligono.id])
                redirect poligono
            }
            '*' { respond poligono, [status: CREATED] }
        }
    }

    def edit(Poligono poligono) {
        respond poligono
    }

    @Transactional
    def update(Poligono poligono) {
        if (poligono == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (poligono.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond poligono.errors, view:'edit'
            return
        }

        poligono.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'poligono.label', default: 'Poligono'), poligono.id])
                redirect poligono
            }
            '*'{ respond poligono, [status: OK] }
        }
    }

    @Transactional
    def delete(Poligono poligono) {

        if (poligono == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        poligono.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'poligono.label', default: 'Poligono'), poligono.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'poligono.label', default: 'Poligono'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
