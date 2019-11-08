package interfaces;


import java.util.ArrayList;

import beans.TblPeriodoContable;

public interface InterfaceTblPeriodoCon {

	ArrayList<TblPeriodoContable> lista();
	
	public int registrar(TblPeriodoContable p);
	
	public TblPeriodoContable consultaPeriodo(String p);
	
	public int actualizar(TblPeriodoContable p);
	
	public int eliminar(TblPeriodoContable p);
	
	public int eliminar(String codigo);
}
