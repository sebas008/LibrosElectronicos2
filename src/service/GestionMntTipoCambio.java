package service;

import java.util.ArrayList;

import beans.MntTipoCambio;
import dao.DAOFactory;
import interfaces.InterfaceMntTipoCambio;

public class GestionMntTipoCambio implements InterfaceMntTipoCambio{

	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	InterfaceMntTipoCambio dao = fabrica.getInterfaceMntTipoCambioDAO();
	
	@Override
	public ArrayList<MntTipoCambio> listado() {
		// TODO Auto-generated method stub
		return dao.listado();
	}

	@Override
	public int registrar(MntTipoCambio e) {
		// TODO Auto-generated method stub
		return dao.registrar(e);
	}

	@Override
	public int actualizar(MntTipoCambio e) {
		// TODO Auto-generated method stub
		return dao.actualizar(e);
	}

	@Override
	public int eliminar(MntTipoCambio e) {
		// TODO Auto-generated method stub
		return dao.eliminar(e);
	}

	@Override
	public int eliminar(String codigo) {
		// TODO Auto-generated method stub
		return dao.eliminar(codigo);
	}

	@Override
	public MntTipoCambio obtener(String codigo) {
		// TODO Auto-generated method stub
		return dao.obtener(codigo);
	}

}
