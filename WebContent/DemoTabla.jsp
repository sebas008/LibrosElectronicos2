<%@page import="beans.TblPeriodoContable"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.GestionTblPeriodoContable"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Se copia y pega la declaracion de eqtiqueta DisplayTag -->
<%@ taglib prefix="display" uri="http://displaytag.sf.net"%>
<!-- ... -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Se copia y pega el vinculo a los estilos del DisplayTag -->
<link rel="stylesheet" type="text/css" href="css/displaytag.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/screen.css" />
<!-- ... -->

</head>
<body>

	<%
		//Servicio de la tabla Producto --> Patron DAO
		GestionTblPeriodoContable servicio = new GestionTblPeriodoContable();

		//Obtener un listado de periodo contable -->Servicios
		ArrayList<TblPeriodoContable> lst = servicio.lista();

		//Enviar el listado -->Sesion --"lista"
		session.setAttribute("lista", lst);
	%>
	
<display:table name="${lista}" pagesize="10" export="true" decorator="decorador.Wrapper">

	<display:column title="Código" property="codPerdiodo" sortable="true"/>
	<display:column title="Descripción" property="desPeriodo" sortable="true"/>
	<display:column title="Seleccionar" property="radio" /> <!-- de la clase Wrapper -->
</display:table>	
<input type="button" value="Eliminar">
<input type="button" value="Modificar">


</body>
</html>