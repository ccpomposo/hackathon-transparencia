package com.sigueme

class Persona {

	String nombre
	String apPaterno
	String apMaterno
	String telefono
	String email
	Date fechaNacimiento

    static constraints = {
		telefono nullable: true
		email nullable: true
    }
}
