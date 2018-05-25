package hackathon.transparencia

import com.sigueme.*;

class BootStrap {

    def init = { servletContext ->
    	def rolAdmin = new Rol(authority: 'ROLE_ADMIN').save()

    	def usuAdmin = new Usuario(username: 'admin', password: 'admin').save()

    	UsuarioRol.create usuAdmin, rolAdmin

    	UsuarioRol.withSession {
    		it.flush()
    		it.clear()
    	}
    }

    def destroy = {
    }
}
