<%@page import="beans.TblPeriodoContable"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.GestionTblPeriodoContable"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Se copia y pega la declaracion de eqtiqueta DisplayTag -->
<%@ taglib prefix="display" uri="http://displaytag.sf.net"%>
<!-- ... -->

<!DOCTYPE html>
<html>

<head>
<link rel="icon" href="<%=request.getContextPath()%>/imagenes/Logo.png"	media="screen">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/css/menu_desplegable.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/css/fontello.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/css/estilos.css">
<link rel="stylesheet" href="css_Julio/estilosModificar.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Se copia y pega el vinculo a los estilos del DisplayTag -->
<link rel="stylesheet" type="text/css" href="css/displaytag.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/screen.css" />
<!-- ... -->
<title>SUNAT | REGISTRO DE FACTURAS DE COMPRAS</title>
</head>



<body>

	<a href="<%=request.getContextPath()%>/Nueva_FacturaCompra.jsp" TARGET="central"><input type="button" value="Nuevo" class="botonNuevo"></a>
	<a href="<%=request.getContextPath()%>/Servlet?opcion=listaFacturasCompras" target="central"><input type="button" value="Refrescar" class="botonNuevo"></a>
	<h1>Lista de Facturas de Compra:</h1>



	<display:table name="${listadoFacturaCompra}" pagesize="20" export="true" decorator="decorador.Wrapper" id="objeto">

		<display:column title="Período" property="periodo" sortable="true" />
		<display:column title="Mon." property="moneda" sortable="true" />
		<display:column title="FechaDocum" property="moneda" sortable="true" />
		<display:column title="T.C." property="tipoCambio" sortable="true" />
		<display:column title="T.D." property="tipoDoc" sortable="true" />
		<display:column title="Serie" property="serieDoc" sortable="true" />
		<display:column title="Número" property="numDoc" sortable="true" />
		<display:column title="RUC" property="cod_Pro" sortable="true" />
		<display:column title="RazónSocial/Proveedor" property="razonS_Pro"	sortable="true" />
		<display:column title="ValorVenta" property="valorVenta" sortable="true" />
		<display:column title="Inafecto" property="valorInafecto" sortable="true" />
		<display:column title="IGV" property="igv" sortable="true" />
		<display:column title="Total" property="total" sortable="true" />
		<display:column title="Cod.Ret." property="cod_Re" sortable="true" />
		<display:column title="Des.Ret." property="des_Re" sortable="true" />
		<display:column title="TasaRet." property="tasa_re" sortable="true" />
		<display:column title="FechaRet." property="fechaRet" sortable="true" />
		<display:column title="NroRet." property="nroRet" sortable="true" />
		<display:column title="MontoRet." property="montoRet" sortable="true" />
		<display:column title="GlosaCompra" property="glosa_Compra" sortable="true" />
		<display:column title="Cod.Com." property="codcom" sortable="true" />
		<display:column title="DescripciónCodCompra" property="desCodcom" sortable="true" />
		<display:column title="Cod.Est." property="cod_estado" sortable="true" />
		<display:column title="DescripciónCodEstado" property="des_estado" sortable="true" />
		
		<display:column title="Modificar"><a href="<%=request.getContextPath()%>/Servlet?opcion=ObtenerFacturaCompra&codigo=<c:out value="${objeto.cod_Pro}"  escapeXml="true"/>">Modificar</a></display:column>
		<display:column title="Eliminar"><a href="<%=request.getContextPath()%>/Servlet?opcion=EliminarFacturaCompra&codigo=<c:out value="${objeto.cod_Pro}"  escapeXml="true"/>">Eliminar</a></display:column>


	</display:table>

</body>
</html>

