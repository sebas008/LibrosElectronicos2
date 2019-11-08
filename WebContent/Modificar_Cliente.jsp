<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css_Julio/estilosModificar.css">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/Servlet" method="post">
		<input type="hidden" name="opcion" value="ModificarCliente">
		<table width="40%" align="center">
			<tr>
				<td colspan="2"><h1 class="titulo">Modificar Cliente </h1>
					<hr class="raya" /></td>
			</tr>
			<tr align="left">
				<td>Codigo:</td>
				<td><input type="text" name="txtCodigo" size="40" readonly="readonly" value="<c:out value="${objeto.codigo}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Descripcion:</td>
				<td><input type="text" name="txtDescripcion" size="40" value="<c:out value="${objeto.descripcion}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Tipo Persona:</td>
				<td><input type="text" name="txtTipoPer" size="40" value="<c:out value="${objeto.tipoPer}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Tipo Cliente:</td>
				<td><input type="text" name="txtTipoCli" size="40" value="<c:out value="${objeto.tipoCli}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Direccion:</td>
				<td><input type="text" name="txtDireccion" size="40" value="<c:out value="${objeto.direccion}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Contacto:</td>
				<td><input type="text" name="txtContacto" size="40" value="<c:out value="${objeto.contacto}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Telefono:</td>
				<td><input type="text" name="txtTelefono" size="40" value="<c:out value="${objeto.telefono}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Condicion de Pago:</td>
				<td><input type="text" name="txtCondPago" size="40" value="<c:out value="${objeto.condPago}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Correo:</td>
				<td><input type="text" name="txtCorreo" size="40" value="<c:out value="${objeto.correo}"  escapeXml="true"/>"></td>
			</tr>
			
			
			
			
			<tr align="left">
				<td colspan="2">&nbsp;</td>

			</tr>
			<tr>
				<td colspan="2"><h1 class="titulo"> </h1>
					<hr class="raya" /></td>
			</tr>
		</table>
		
		<table align="center" width="50%">
			<tr>
				<td width="50%" align="center"><input type="submit" value="Actualizar" class="botonActualizar"></td>
				<td width="50%"align="center"><input type="submit" value="Cancelar" class="botonCancelar"></td>
			</tr>
		</table>
	</form>
</body>
</html>