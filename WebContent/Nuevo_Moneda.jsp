<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%	String mensaje = (String) request.getAttribute("mensaje"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css_Julio/estilosModificar.css">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/Servlet" method="post">
		<input type="hidden" name="opcion" value="RegistrarMoneda">
		<table width="40%" align="center">
			<tr>
				<td colspan="2"><h1 class="titulo">Registro de Monedas</h1><hr class="raya" /></td>
			</tr>
			<tr align="left">
				<td>Codigo:</td>
				<td><input type="text" name="txtCodigo" size="30"required="required"></td>
			</tr>
			<tr align="left">
				<td>Descripcion:</td>
				<td><input type="text" name="txtDescripcion" size="30"></td>
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
				<td width="50%"align="center"> <a href="<%=request.getContextPath()%>/SUNAT_Moneda.jsp"  TARGET="central" ><input type="button" value="Cancelar" class="botonCancelar"></a></td>
			</tr>
		</table>
		<table align="center" width="40%">
			<tr align="center">
				<td colspan="2" bgcolor="#599FFE">
					<%
						if (mensaje != null) {
					%> <%=mensaje%> <%
 						}
 					%>
				</td>

			</tr>
		</table>

	</form>
</body>
</html>