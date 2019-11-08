
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
<title>SUNAT | TABLA PERÍODO CONTABLE</title>
</head>

<body>


	<a href="<%=request.getContextPath()%>/Nuevo_PeriodoContable.jsp"
		TARGET="central"><input type="button" value="Nuevo"
		class="botonNuevo"></a>
	<a href="<%=request.getContextPath()%>/Servlet?opcion=listaPeriodo"
		target="central"><input type="button" value="Refrescar"
		class="botonNuevo"></a>
	<h1>Lista de Períodos Contables:</h1>

	<display:table name="${listadoPeriodo}" pagesize="20" export="true"
		decorator="decorador.Wrapper" id="objPeriodo">

		<display:column title="Código" property="codPerdiodo" sortable="true" />
		<display:column title="Descripción" property="desPeriodo"
			sortable="true" />

		<display:column title="Modificar">
			<a
				href="<%=request.getContextPath()%>/Servlet?opcion=ObtenerPeriodoContable&codigo=<c:out value="${objPeriodo.codPerdiodo}"  escapeXml="true"/>">Modificar</a>
		</display:column>
		<display:column title="Eliminar">
			<a
				href="<%=request.getContextPath()%>/Servlet?opcion=EliminarPeriodoContable&codigo=<c:out value="${objPeriodo.codPerdiodo}"  escapeXml="true"/>">Eliminar</a>
		</display:column>



		<!-- de la clase Wrapper -->
	</display:table>

</body>
</html>