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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Se copia y pega el vinculo a los estilos del DisplayTag -->
<link rel="stylesheet" type="text/css" href="css/displaytag.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/screen.css" />
<!-- ... -->


<title>SUNAT | REGISTRO DE COMPRAS</title>
</head>



<body>
	<!-- Agrupación de Datos de la Tabla en el formulario -->
	<section>
		<br> <br> <br> <br> <br> <br>
		<div>


			<fieldset style="width: 800px;">
				<legend>FILTROS REPORTE DE VENTAS</legend>
				<form action="Servlet" method="post">

					<input type="hidden" name="opcion" value="ReporteFacturasVentas">

					<table>
						<tr>
							<td>Período</td>
							<td><input type="text" name="Periodo" width="100px"></td>
						</tr>
						<tr>
							<td>Cliente</td>
							<td><input type="text" name="codCliente" width="300px"></td>
							<td><input type="text" name="NombreProveedor" width="300px"
								readonly="readonly"></td>
						</tr>
						<tr>
							<td>Tipo Doc</td>
							<td><input type="text" name="tipoDoc" width="100px"></td>
							<td><input type="text" name="desTipoDoc" width="300px"
								readonly="readonly"></td>
						</tr>
						<tr>
							<td>Moneda</td>
							<td><input type="text" name="moneda" width="100px"></td>
							<td><input type="text" name="desMoneda" width="300px"
								readonly="readonly"></td>
						</tr>



						<tr>
							<td><input type="submit" class="button" name=""
								value="CONSULTAR"></td>
						</tr>
					</table>
				</form>
			</fieldset>
		</div>
	</section>



	<display:table name="${ReporteVentas}" pagesize="10" export="true"
		decorator="decorador.Wrapper">


		<display:column title="Período" property="periodo" sortable="true" />
		<display:column title="FechaDocum" property="fecha" sortable="true" />
		<display:column title="Mon." property="moneda" sortable="true" />
		<display:column title="T.C." property="tipoCambio" sortable="true" />
		<display:column title="T.D." property="tipoDoc" sortable="true" />
		<display:column title="Serie" property="serieDoc" sortable="true" />
		<display:column title="Número" property="numDoc" sortable="true" />
		<display:column title="RUC" property="cod_Cli" sortable="true" />
		<display:column title="RazónSocial/Cliente" property="razonS_Cli"
			sortable="true" />
		<display:column title="ValorVenta" property="valorVenta"
			sortable="true" />
		<display:column title="Inafecto" property="valorInafecto"
			sortable="true" />
		<display:column title="IGV" property="igv" sortable="true" />
		<display:column title="Total" property="total" sortable="true" />
		<display:column title="GlosaVenta" property="glosa_venta"
			sortable="true" />


	</display:table>

</body>
</html>