package interfaces;

import java.util.ArrayList;

import beans.TblTipoPer;

public interface InterfaceTblTipoPer {

	ArrayList<TblTipoPer> listado();

	public int registrar(TblTipoPer p);

	public TblTipoPer buscarCodigo(String descripcion);

	public TblTipoPer buscarDescrip(String codigo);
	
	public TblTipoPer obtener(String codigo);

	public int actualizar(TblTipoPer p);

	public int eliminar(TblTipoPer p);
	
	public int eliminar(String codigo);

}
