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
		<input type="hidden" name="opcion" value="RegistrarFacturaCompra">
		<table width="40%" align="center">
			<tr>
				<td colspan="2"><h1 class="titulo">Registrar Factura de Compra</h1><hr class="raya" /></td>
			</tr>
			<tr align="left">
				<td>Periodo:</td>
				<td><input type="text" name="txtPeriodo" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Moneda:</td>
				<td><input type="text" name="txtMoneda" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Fecha Doc:</td>
				<td><input type="text" name="txtFecha" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Tipo de Cambio:</td>
				<td><input type="text" name="txtTipoCambio" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Tipo Doc:</td>
				<td><input type="text" name="txtTipoDoc" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Serie:</td>
				<td><input type="text" name="txtSerie" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Numero:</td>
				<td><input type="text" name="txtNumero" size="40" ></td>
			</tr>
			<tr align="left">
				<td>RUC:</td>
				<td><input type="text" name="txtCodigo" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Razon Social:</td>
				<td><input type="text" name="txtDescripcion" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Valor Venta:</td>
				<td><input type="text" name="txtValorVenta" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Inafecto:</td>
				<td><input type="text" name="txtInafecto" size="40" ></td>
			</tr>
			<tr align="left">
				<td>IGV:</td>
				<td><input type="text" name="txtIgv" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Total:</td>
				<td><input type="text" name="txtTotal" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Codigo Retencion:</td>
				<td><input type="text" name="txtCodRet" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Des. Retencion:</td>
				<td><input type="text" name="txtDesRet" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Tasa Retencion:</td>
				<td><input type="text" name="txtTasa" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Fecha Retencion:</td>
				<td><input type="text" name="txtFechaRet" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Nro. Retencion:</td>
				<td><input type="text" name="txtNroRet" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Monto Rentecion:</td>
				<td><input type="text" name="txtMontoRet" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Glosa Compra:</td>
				<td><input type="text" name="txtGlosa" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Codigo Compra:</td>
				<td><input type="text" name="txtCodCom" size="40" ></td>
			</tr>
			<tr align="left">
				<td>Codigo Estado:</td>
				<td><input type="text" name="txtEstado" size="40" ></td>
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
				<td width="50%"align="center"> <a href="<%=request.getContextPath()%>/SUNAT_Registro_Compras.jsp"  TARGET="central" ><input type="button" value="Cancelar" class="botonCancelar"></a></td>
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