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
<link rel="icon" href="<%=request.getContextPath()%>/imagenes/Logo.png"
	media="screen">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/menu_desplegable.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/fontello.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/estilos.css">
<link rel="stylesheet" href="css_Julio/estilosModificar.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Se copia y pega el vinculo a los estilos del DisplayTag -->
<link rel="stylesheet" type="text/css" href="css/displaytag.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/screen.css" />
<!-- ... -->
<title>SUNAT | TABLA MONEDA</title>
</head>



<body>

	<a href="<%=request.getContextPath()%>/Nuevo_Moneda.jsp"
		TARGET="central"><input type="button" value="Nuevo"
		class="botonNuevo"></a>
	<a href="<%=request.getContextPath()%>/Servlet?opcion=listaMoneda"
		target="central"><input type="button" value="Refrescar"
		class="botonNuevo"></a>
	<h1>Lista de Monedas:</h1>



	<display:table name="${listadoMoneda}" pagesize="20" export="true"
		decorator="decorador.Wrapper" id="objeto">

		<display:column title="Código" property="codigo" sortable="true" />
		<display:column title="Descripción" property="descripcion"
			sortable="true" />

		<display:column title="Modificar">
			<a
				href="<%=request.getContextPath()%>/Servlet?opcion=ObtenerMoneda&codigo=<c:out value="${objeto.codigo}"  escapeXml="true"/>">Modificar</a>
		</display:column>
		<display:column title="Eliminar">
			<a
				href="<%=request.getContextPath()%>/Servlet?opcion=EliminarMoneda&codigo=<c:out value="${objeto.codigo}"  escapeXml="true"/>">Eliminar</a>
		</display:column>


	</display:table>

</body>
</html>