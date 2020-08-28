<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="proyectoweb.eoi.modelo.Departamento"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Departamento</title>
</head>
<body>
	<h1>Modificación de Departamento</h1>
	<h2>Bienvenido <%=session.getAttribute("nomempleado")%></h2>
	
	<%
		Departamento d = (Departamento) request.getAttribute("dpto");		
	%>
	
	<form action="Controlador" method="POST">
		<label for="coddpto">Código del Departamento: </label>
		<input class="input" type="text" name="coddepto" readonly value="<%=d.getCoddepto() %>">*<br>
		<label for="nombredpto">Nombre del Departamento: </label>
		<input class="input" type="text" name="nombredpto" value="<%= d.getNombredpto() %>"><br>
		<label for="ciudad">Ciudad: </label>
		<input class="input" type="text" name="ciudad" value="<%= d.getCiudad() %>"><br>
		<label for="coddirector">Codigo de Director: </label>
		<input class="input" type="text" name="coddirector" value="<%= d.getCodDirector() %>"><br>
		<input type="hidden" name="opcion" value="e">
		<input type="submit" value="Modificar">
	</form>
</body>
</html>