package com.sigueme

class Partido {

    String nombre
    String descripcion

    static hasMany = [candidato: Candidato]

    static constraints = {
        descripcion nullable: true
    }
}
