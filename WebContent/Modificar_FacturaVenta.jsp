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
		<input type="hidden" name="opcion" value="ModificarFacturaVenta">
		<table width="40%" align="center">
			<tr>
				<td colspan="2"><h1 class="titulo">Modificar Factura Venta </h1>
					<hr class="raya" /></td>
			</tr>
			<tr align="left">
				<td>Periodo:</td>
				<td><input type="text" name="txtPeriodo" size="40" readonly="readonly" value="<c:out value="${objeto.periodo}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Moneda:</td>
				<td><input type="text" name="txtMoneda" size="40" value="<c:out value="${objeto.moneda}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Fecha Doc:</td>
				<td><input type="text" name="txtFecha" size="40" value="<c:out value="${objeto.moneda}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Tipo de Cambio:</td>
				<td><input type="text" name="txtTipoCambio" size="40" value="<c:out value="${objeto.tipoCambio}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Tipo Doc:</td>
				<td><input type="text" name="txtTipoDoc" size="40" value="<c:out value="${objeto.tipoDoc}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Serie:</td>
				<td><input type="text" name="txtSerie" size="40" value="<c:out value="${objeto.serieDoc}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Numero:</td>
				<td><input type="text" name="txtNumero" size="40" value="<c:out value="${objeto.numDoc}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>RUC:</td>
				<td><input type="text" name="txtCodigo" size="40" value="<c:out value="${objeto.cod_Pro}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Razon Social:</td>
				<td><input type="text" name="txtDescripcion" size="40" value="<c:out value="${objeto.razonS_Pro}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Valor Venta:</td>
				<td><input type="text" name="txtValorVenta" size="40" value="<c:out value="${objeto.valorVenta}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Inafecto:</td>
				<td><input type="text" name="txtInafecto" size="40" value="<c:out value="${objeto.valorInafecto}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>IGV:</td>
				<td><input type="text" name="txtIgv" size="40" value="<c:out value="${objeto.igv}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Total:</td>
				<td><input type="text" name="txtTotal" size="40" value="<c:out value="${objeto.total}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Codigo Retencion:</td>
				<td><input type="text" name="txtCodRet" size="40" value="<c:out value="${objeto.cod_Re}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Des. Retencion:</td>
				<td><input type="text" name="txtDesRet" size="40" value="<c:out value="${objeto.des_Re}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Tasa Retencion:</td>
				<td><input type="text" name="txtTasa" size="40" value="<c:out value="${objeto.tasa_re}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Glosa Venta:</td>
				<td><input type="text" name="txtGlosa" size="40" value="<c:out value="${objeto.glosa_Compra}"  escapeXml="true"/>"></td>
			</tr>
			<tr align="left">
				<td>Codigo Estado:</td>
				<td><input type="text" name="txtEstado" size="40" value="<c:out value="${objeto.cod_estado}"  escapeXml="true"/>"></td>
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
				<td width="50%"align="center"> <a href="<%=request.getContextPath()%>/SUNAT_Registro_Ventas.jsp"  TARGET="central" ><input type="button" value="Cancelar" class="botonCancelar"></a></td>
			</tr>
		</table>
	</form>
</body>
</html>