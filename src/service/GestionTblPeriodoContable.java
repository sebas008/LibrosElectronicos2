package service;

import java.util.ArrayList;
import beans.TblPeriodoContable;
import dao.DAOFactory;
import interfaces.InterfaceTblPeriodoCon;

public class GestionTblPeriodoContable  implements InterfaceTblPeriodoCon{

	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	InterfaceTblPeriodoCon dao = fabrica.getInterfaceTblPeriodoConDAO();
	
	@Override
	public ArrayList<TblPeriodoContable> lista() {
		// TODO Auto-generated method stub
		return dao.lista();
	}

	@Override
	public int registrar(TblPeriodoContable p) {
		// TODO Auto-generated method stub
		return dao.registrar(p);
	}

	@Override
	public TblPeriodoContable consultaPeriodo(String p) {
		// TODO Auto-generated method stub
		return dao.consultaPeriodo(p);
	}

	@Override
	public int actualizar(TblPeriodoContable p) {
		// TODO Auto-generated method stub
		return dao.actualizar(p);
	}

	@Override
	public int eliminar(TblPeriodoContable p) {
		// TODO Auto-generated method stub
		return dao.eliminar(p);
	}

	@Override
	public int eliminar(String codigo) {
		// TODO Auto-generated method stub
		return dao.eliminar(codigo);
	}
	
}
	
	

