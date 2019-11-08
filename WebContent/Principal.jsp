<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="<%=request.getContextPath()%>/imagenes/Logo.png"
	media="screen">
<title>PORTAL SUNAT | PÁGINA PRINCIPAL</title>
</head>

<frameset rows="120,*" border="0" >
	<frame name="alto" src="top.jsp">
	<frameset cols="200,*" border="0">
		<frame name="menu" src="menu.jsp">
		<frame name="central" src="cuerpo.jsp">
	</frameset>
</frameset>

</html>