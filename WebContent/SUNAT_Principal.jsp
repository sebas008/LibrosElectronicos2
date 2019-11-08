<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/menu_desplegable.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/fontello.css">
<link rel="icon" href="<%=request.getContextPath()%>/imagenes/Logo.png"
	media="screen">
<script type="text/javascript" src="js/codigos.js"></script>
<title>SUNAT | MENÚ PRINCIPAL</title>
</head>
<body background="<%=request.getContextPath()%>/imagenes/Fondo6.jpg"
	width="120%">
	<br>
	<br>
	<header>
		<marquee behavior="scroll">Bienvenido a la página principal
			de la SUNAT. Juntos, cumplimos con el Perú!.</marquee>
	</header>
	<section>
		<nav class="navegacion">
			<ul class="menu_item">
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/iconos/Computer.png">
						ARCHIVO</a>
					<ul class="menu_sub-item">
						<li><a href="SUNAT_Login.html"><img
								src="<%=request.getContextPath()%>/iconos/salir.png">
								Salir</a></li>
					</ul></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/iconos/clientes.png">
						TABLAS</a>
					<ul class="menu_sub-item">
						<li><a href="SUNAT_Periodo_Contable.jsp">Período Contable</a></li>
						<li><a href="SUNAT_Tipo_Documento.jsp">Tipo Documento</a></li>
						<li><a href="SUNAT_Tipo_Persona.jsp">Tipo Persona</a></li>
						<li><a href="SUNAT_Tipo_Proveedor.jsp">Tipo Proveedor</a></li>
						<li><a href="SUNAT_Tipo_Cliente.jsp">Tipo Cliente</a></li>
						<li><a href="SUNAT_Tipo_Compra.jsp">Tipo Compra</a></li>
						<li><a href="SUNAT_Tipo_Retencion.jsp">Tipo Retención</a></li>
						<li><a href="SUNAT_Estado_Documento.jsp">Estado Documento</a></li>
						<li><a href="SUNAT_Moneda.jsp">Moneda</a></li>
						<li><a href="SUNAT_Condicion_Pago.jsp">Condición de Pago</a></li>
						<li><a href="DemoTabla.jsp">Demo Tabla</a></li>
					</ul></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/iconos/mantenimiento.png">
						MANTENIMIENTOS</a>
					<ul class="menu_sub-item">
						<li><a href="SUNAT_Mntm_Tipo_Cambio.jsp">Tipo de Cambio</a></li>
						<li><a href="#">Proveedor</a></li>
						<li><a href="#">Cliente</a></li>
					</ul></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/iconos/transac.png">
						REGISTRO DE COMPRAS</a>
					<ul class="menu_sub-item">
						<li><a href="SUNAT_Registro_Compras.jsp">Registro de
								Compras</a></li>
					</ul></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/iconos/transac.png">
						REGISTRO DE VENTAS</a>
					<ul class="menu_sub-item">
						<li><a href="#">Registro de Ventas</a></li>
					</ul></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/iconos/print.png">
						REPORTES</a>
					<ul class="menu_sub-item">
						<li><a href="#">Registro de Compras-SUNAT</a></li>
						<li><a href="#">Registro de Ventas-SUNAT</a></li>
					</ul></li>
			</ul>
		</nav>
	</section>
</body>
</html>