<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="<%=request.getContextPath()%>/js/libreria-poo.js"></script>
<title>Insert title here</title>
</head>
<body onload="carrusel()">
<marquee behavior="scroll" style="font-family:Arial;">Bienvenido a la página principal
		de la SUNAT. Juntos, cumplimos con el Perú!.</marquee>
		<br>
	<section align="center"> <img id="banner"
		src="<%=request.getContextPath()%>/imagenes/20180129fisca18.jpg"
		width="80%" height="80%" /> </section>
</body>
</html>