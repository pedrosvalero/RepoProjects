<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<title>Acceso principal a Empresa</title>
</head>
<body>
	
	<h1>Pagina Principal de Empresa</h1>
	
	<form method="post" action="Login">
		<label for="email">Email: </label>
		<input class="input" type="email" name="email" required>*<br>
		<label for="pass">Contraseña: </label>
		<input class="input" type="password" name="pass" required>*<br>
		<input type="submit" value="Login"><span style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr") %></span>
	</form>

</body>
</html>