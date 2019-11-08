package interfaces;

import beans.UsuarioDTO;

public interface UsuarioDAO {
	
	public UsuarioDTO validarLogueo(String cod_usu, String clave_usu);
}
