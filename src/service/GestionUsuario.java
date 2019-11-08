package service;

import beans.UsuarioDTO;
import interfaces.UsuarioDAO;
import dao.DAOFactory;

public class GestionUsuario {

	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	UsuarioDAO objUsuarioDAO=fabrica.getUsuarioDAO();
	
	public UsuarioDTO validarLogueo(String cod_usu, String clave_usu){
		return objUsuarioDAO.validarLogueo(cod_usu, clave_usu);
	}
}
