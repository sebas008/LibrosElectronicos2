package dao;

import interfaces.InterfaceCondPago;
import interfaces.InterfaceFacturaCompra;
import interfaces.InterfaceFacturaVenta;
import interfaces.InterfaceMntCliente;
import interfaces.InterfaceMntProveedor;
import interfaces.InterfaceMntTipoCambio;
import interfaces.InterfaceTblEstadoDoc;
import interfaces.InterfaceTblMoneda;
import interfaces.InterfaceTblPeriodoCon;
import interfaces.InterfaceTblTipoCli;
import interfaces.InterfaceTblTipoCom;
import interfaces.InterfaceTblTipoDoc;
import interfaces.InterfaceTblTipoPer;
import interfaces.InterfaceTblTipoPro;
import interfaces.InterfaceTblTipoRet;
import interfaces.UsuarioDAO;

public class MySqlDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new MySqlUsuarioDAO();
	}

	@Override
	public InterfaceTblPeriodoCon getInterfaceTblPeriodoConDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblPeriodoConDAO();
	}

	@Override
	public InterfaceCondPago getInterfaceCondPagoDAO() {
		// TODO Auto-generated method stub
		return new MySqlCondPagoDAO();
	}

	@Override
	public InterfaceTblEstadoDoc getInterfaceTblEstadoDocDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblEstadoDocDAO();
	}

	@Override
	public InterfaceTblMoneda getInterfaceTblMonedaDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblMonedaDAO();
	}

	@Override
	public InterfaceTblTipoCli getInterfaceTblTipoCliDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblTipoCliDAO();
	}

	@Override
	public InterfaceTblTipoCom getInterfaceTblTipoComDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblTipoComDAO();
	}

	@Override
	public InterfaceTblTipoDoc getIntefaceTblTipoDocDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblTipoDocDAO();
	}

	@Override
	public InterfaceTblTipoPer getInterfaceTblTipoPerDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblTipoPerDAO();
	}

	@Override
	public InterfaceTblTipoPro getInterfaceTblTipoProDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblTipoProDAO();
	}

	@Override
	public InterfaceTblTipoRet getInterfaceTblTipoRetDAO() {
		// TODO Auto-generated method stub
		return new MySqlTblTipoRetDAO();
	}

	@Override
	public InterfaceMntTipoCambio getInterfaceMntTipoCambioDAO() {
		// TODO Auto-generated method stub
		return new MySqlTipoCambioDAO();
	}

	@Override
	public InterfaceMntCliente getInterfaceMntClienteDAO() {
		// TODO Auto-generated method stub
		return new MySqlMntClienteDAO();
	}

	@Override
	public InterfaceMntProveedor getInterfaceMntProveedorDAO() {
		// TODO Auto-generated method stub
		return new MySqlMntProveedorDAO();
	}

	@Override
	public InterfaceFacturaCompra getInterfaceFacturaCompraDAO() {
		// TODO Auto-generated method stub
		return new MySqlFacturaCompraDAO();
	}

	@Override
	public InterfaceFacturaVenta getInterfaceFacturaVentaDAO() {
		// TODO Auto-generated method stub
		return new MySqlFacturaVentaDAO();
	}

}
