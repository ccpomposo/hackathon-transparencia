package com.sigueme

class Candidato {

	static hasMany = [partido:Partido]
	Persona persona
	Date fechaRegistro
	String puesto
	Poligono poligono


    static constraints = {
    }
}
