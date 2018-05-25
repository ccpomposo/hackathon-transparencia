package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import com.sigueme.*

@Secured('ROLE_ADMIN')
@Transactional(readOnly = false)
class ConceptoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Concepto.list(params), model:[conceptoCount: Concepto.count()]
    }

    def show(Concepto concepto) {
        respond concepto
    }

    def create() {
        respond new Concepto(params)
    }

    @Transactional
    def save(Concepto concepto) {
        if (concepto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (concepto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond concepto.errors, view:'create'
            return
        }

        concepto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'concepto.label', default: 'Concepto'), concepto.id])
                redirect concepto
            }
            '*' { respond concepto, [status: CREATED] }
        }
    }

    def edit(Concepto concepto) {
        respond concepto
    }

    @Transactional
    def update(Concepto concepto) {
        if (concepto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (concepto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond concepto.errors, view:'edit'
            return
        }

        concepto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'concepto.label', default: 'Concepto'), concepto.id])
                redirect concepto
            }
            '*'{ respond concepto, [status: OK] }
        }
    }

    @Transactional
    def delete(Concepto concepto) {

        if (concepto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        concepto.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'concepto.label', default: 'Concepto'), concepto.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'concepto.label', default: 'Concepto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
