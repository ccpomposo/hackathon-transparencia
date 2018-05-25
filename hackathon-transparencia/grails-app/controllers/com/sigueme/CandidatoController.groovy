package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import com.sigueme.*

@Secured('ROLE_ADMIN')
@Transactional(readOnly = false)
class CandidatoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(params.max ? params.int('max') : 5, 100)
 
        
        def results = Candidato.findAllByPersona(Persona.findByNombreOrPaternoOrMaternoByLike("%${params.query}%".toString(),"%${params.query}%".toString(),"%${params.query}%".toString()))
 
        [results: results, totalResults: results.totalCount]
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 5, 100)
 
        
        def results = Candidato.findAllByPersona(Persona.findByNombreOrPaternoOrMaternoByLike("%${params.query}%".toString(),"%${params.query}%".toString(),"%${params.query}%".toString()))
 
        [results: results, totalResults: results.totalCount]
    }

    def show(Candidato candidato) {
        respond candidato
    }

    def create() {
        respond new Candidato(params)
    }

    @Transactional
    def save(Candidato candidato) {
        if (candidato == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (candidato.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond candidato.errors, view:'create'
            return
        }

        candidato.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candidato.label', default: 'Candidato'), candidato.id])
                redirect candidato
            }
            '*' { respond candidato, [status: CREATED] }
        }
    }

    def edit(Candidato candidato) {
        respond candidato
    }

    @Transactional
    def update(Candidato candidato) {
        if (candidato == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (candidato.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond candidato.errors, view:'edit'
            return
        }

        candidato.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'candidato.label', default: 'Candidato'), candidato.id])
                redirect candidato
            }
            '*'{ respond candidato, [status: OK] }
        }
    }

    @Transactional
    def delete(Candidato candidato) {

        if (candidato == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        candidato.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'candidato.label', default: 'Candidato'), candidato.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candidato.label', default: 'Candidato'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
