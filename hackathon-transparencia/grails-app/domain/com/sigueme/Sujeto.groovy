package com.sigueme

class Sujeto {

	Candidato candidato
	Institucion institucion 

    static constraints = {
    	candidato nullable: true
		institucion nullable: true
    }
}
