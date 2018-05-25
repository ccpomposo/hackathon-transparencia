package com.sigueme

class Documento {

    String nombre
    byte[] datos
    Date fechaSubida = new Date()
    static constraints = {
        nombre(blank:false,nullable:false)
        datos(blank: true, nullable:true, maxSize:1073741824)
    }
}
