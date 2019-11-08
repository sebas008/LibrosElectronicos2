<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="<%=request.getContextPath()%>/imagenes/Logo.png" media="screen">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/menu_desplegable.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/fontello.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/estilos.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUNAT | REGISTRO DE COMPRAS</title>
</head>
<body >
<header>

</header>
<section>
<br><br><br><br><br><br>
<div align="center" >
	<fieldset style="width: 800px;">
	<legend>REGISTRO DE COMPRAS</legend>
		<form action="">
		<table>
			<tr>
				<td><img alt="" src="<%=request.getContextPath()%>/iconos/Nuevo_blue36.png" ></td>
				<td><img alt="" src="<%=request.getContextPath()%>/iconos/Change.png"></td>
				<td><img alt="" src="<%=request.getContextPath()%>/iconos/Save_black36.png"></td>
				<td><img alt="" src="<%=request.getContextPath()%>/iconos/Eliminar_black36.png"></td>
				<td><img alt="" src="<%=request.getContextPath()%>/iconos/Actualizar_blue36.png"></td>
				<td><img alt="" src="<%=request.getContextPath()%>/iconos/Restore_blue36.png"></td>
			</tr>
		</table>
		<table>
			<tr>
				<td>PERÍODO</td><td><input type="text" name="txtPeriodo">
			</tr>
			<tr>
				<td>CÓDIGO DE PROVEEDOR</td><td><input type="text" name="txtPeriodo">
			</tr>
			<tr>
				<td>RAZÓN SOCIAL</td><td><input type="text" name="txtPeriodo">
			</tr>
		</table>
		<br>
		
		</form>
	</fieldset>
</div>
</section>
<footer >
<marquee><img alt="" src="<%=request.getContextPath()%>/imagenes/Sunat.png" ></marquee>	
</footer>
</body>
</html>