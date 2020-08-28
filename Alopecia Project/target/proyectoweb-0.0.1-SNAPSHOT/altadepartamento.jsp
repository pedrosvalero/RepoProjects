<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alta Departamento</title>
</head>
<body>
	<h1>Registro de Departamento</h1>
	<h2>Bienvenido <%=session.getAttribute("nomempleado")%></h2>
	<form action="Controlador" method="POST">
		<label for="coddpto">Código del Departamento: </label>
		<input class="input" type="text" name="coddepto" required>*<br>
		<label for="nombredpto">Nombre del Departamento: </label>
		<input class="input" type="text" name="nombredpto"><br>
		<label for="ciudad">Ciudad: </label>
		<input class="input" type="text" name="ciudad"><br>
		<label for="coddirector">Codigo de Director: </label>
		<input class="input" type="text" name="coddirector"><br>
		<input type="submit" value="Alta">
	</form>

</body>
</html>