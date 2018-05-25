package com.sigueme

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import groovy.sql.Sql
import groovy.json.JsonBuilder
import grails.converters.JSON

@Secured(['permitAll'])
@Transactional(readOnly = true)
class PoligonoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def getPuntos() {
        String tipo = params.tipo
        Integer estado = params.estado
        Integer clave = params.clave
        System.out.println(estado)
        def db = [url:'jdbc:postgresql://localhost:25565/transparencia_db', user:'administrador', password:'administrador', driver:'org.postgresql.Driver']
        def sql = Sql.newInstance(db.url, db.user, db.password, db.driver)   
        String query
        def resultSet
        if (tipo.compareTo("estado") == 0) {
            query = 'select punto_id, x, y, polygonnumber from entidades where idd = ?'
            resultSet = sql.rows(query, estado)
        } else if(tipo.compareTo("distrito local") == 0) {
            query = 'select id punto_id, x, y, (select 0) polygonnumber from distritoslocales where entidad = ? and distrito = ?'
            resultSet = sql.rows(query, estado, clave)
        } else if(tipo.compareTo("distrito federal") == 0) {
            query = 'select idpunto punto_id, x, y, (select 0) polygonnumber from distritoslocales where entidad = ? and distrito = ?'
            resultSet = sql.rows(query, estado, clave)
        } else if(tipo.compareTo("municipio") == 0) {
            query = 'select id punto_id, x, y, polygonnumber from distritoslocales where entidad = ? and municipio = ?'
            resultSet = sql.rows(query, estado, clave)
        } else if(tipo.compareTo("seccion") == 0) {
            query = 'select id punto_id, x, y, polygonnumber from distritoslocales where entidad = ? and seccion = ?'
            resultSet = sql.rows(query, estado, clave)
        }
        sql.close()
        render resultSet as JSON
    }

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
