<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/menu.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<!-- ejemplo de Menú -->
	<ul class="menu">
		<li><a href="#">Tablas</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaPeriodo" target="central">Período Contable</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaTipoCliente" target="central">Tipo Cliente</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaTipoProveedor" target="central">Tipo Proveedor</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaTipoPersona" target="central">Tipo Persona</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaTipoRetencion" target="central">Tipo Retención</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaTipoCompra" target="central">Tipo Compra</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaTipoDocumento" target="central">Tipo Documento</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaCondicionPago" target="central">Condición de Pago</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaEstadoDoc" target="central">Estado Documento</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaMoneda"	target="central">Moneda</a></li>

			</ul></li>

		<li><a href="#">Mantenimientos</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaTipoCambio" target="central">Tipo de Cambio</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaClientes" target="central">Clientes</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaProveedores" target="central">Proveedores</a></li>

			</ul></li>

		<li><a href="#">Registros</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaFacturasCompras" target="central">Registro de Compras</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=listaFacturasVentas" target="central">Registro de Ventas</a></li>

			</ul></li>
		<li><a href="#">Reportes</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=ReporteFacturasCompras" target="central">Reporte Registro de Compras</a></li>
				<li><a href="<%=request.getContextPath()%>/Servlet?opcion=ReporteFacturasVentas" target="central">Reporte Registro de Ventas</a></li>
			</ul>
		</li>
		<li><a href="#">Cerrar Sesión</a>
			<ul>
				<li><a href="SUNAT_Login.html" TARGET="_parent">Salir</a></li>


			</ul></li>
	</ul>

</body>
</html>