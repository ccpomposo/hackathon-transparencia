package com.sigueme

class Partido {

    String nombre
    String descripcion

    static hasMany = [canditados: Canditado]

    static constraints = {
        descripcion nullable: true
    }
}
