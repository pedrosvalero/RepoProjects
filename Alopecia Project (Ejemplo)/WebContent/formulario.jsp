<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de envío a un Servlet</title>
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@600&display=swap" rel="stylesheet">
</head>
<body>

		<form action="registro.jsp" accept-charset="ISO-8859-1" method="POST">
		  <caption><center>Formulario de prueba de HTML5</center></caption>
		  <hr></hr>
		  <br>
		  <label for="nombre">Nombre: </label>
		  <input class="input" type="text" name="name_control"><br>
		  <label for="correo">Correo: </label>
		  <input class="input" type="text" name="email_control"><br>
		  <label for="url">Url: </label>
		  <input class="input" type="url" name="url_control" placeholder="Escribe la URL de tu página web personal"><br>
		  <label for="fecha">Fecha: </label>
		  <input class="input" type="date" name="date_control"><br>
		  <label for="tiempo">Tiempo: </label>
		  <input class="input" type="time" name="time_control"><br>
		  <label for="fyhora">Fecha y Hora: </label>
		  <input class="input" type="datetime-local" name="datetime_control"><br>
		  <label for="mes">Mes: </label>
		  <input class="input" type="month" name="month_control"><br>
		  <label for="semana">Semana: </label>
		  <input class="input" type="week" name="week_control"><br>
		  <label for="numero">Número: </label>
		  <input class="input" type="number" name="number_control" min="-10" max="10"><br>
		  <label for="telefono">Teléfono: </label>
		  <input class="input" type="tel" name="tel_control"><br>
		  <label for="busqueda">Termino: </label>
		  <input class="term" type="search" name="search_control"><br>
		  <label for="color">Color: </label>
		  <input class="input" type="color" name="color_control"><br>
		  <input type="submit" value="Enviar">
		</form> 


</body>
</html>