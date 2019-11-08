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


public abstract class DAOFactory {

	//Constantes que representan las BD
    public static final int MYSQL = 1;
    public static final int ORACLE = 2;
    public static final int DB2 = 3;
    public static final int SQLSERVER = 4;
    public static final int XML = 5;
    
    //Método que implementarán las clase hija
    public abstract UsuarioDAO getUsuarioDAO();
    public abstract InterfaceTblPeriodoCon getInterfaceTblPeriodoConDAO();
    public abstract InterfaceCondPago getInterfaceCondPagoDAO();
    public abstract InterfaceTblEstadoDoc getInterfaceTblEstadoDocDAO();
    public abstract InterfaceTblMoneda getInterfaceTblMonedaDAO(); 
    public abstract InterfaceTblTipoCli getInterfaceTblTipoCliDAO();
    public abstract InterfaceTblTipoCom getInterfaceTblTipoComDAO();
    public abstract InterfaceTblTipoDoc getIntefaceTblTipoDocDAO(); 
    public abstract InterfaceTblTipoPer getInterfaceTblTipoPerDAO();
    public abstract InterfaceTblTipoPro getInterfaceTblTipoProDAO();
    public abstract InterfaceTblTipoRet getInterfaceTblTipoRetDAO();
    public abstract InterfaceMntTipoCambio getInterfaceMntTipoCambioDAO();
    public abstract InterfaceMntCliente getInterfaceMntClienteDAO();
    public abstract InterfaceMntProveedor getInterfaceMntProveedorDAO();
    public abstract InterfaceFacturaCompra getInterfaceFacturaCompraDAO();
    public abstract InterfaceFacturaVenta getInterfaceFacturaVentaDAO();
    
    //Método estático que obtiene la implementación según BD seleccionada 
    public static DAOFactory getDAOFactory(int whichFactory){
       switch(whichFactory){
//       	case SQLSERVER:
//       	    return new SqlDAOFactory();
       	case MYSQL:
       		return new MySqlDAOFactory();
       	/*case DB2:
       	    return new Db2DAOFactory();
       	case SQLSERVER:
       	    return new SqlServerDAOFactory();
       	case XML:
       	    return new XmlDAOFactory();*/
       	default:
       	    return null;
       }
    }
    
    
}
