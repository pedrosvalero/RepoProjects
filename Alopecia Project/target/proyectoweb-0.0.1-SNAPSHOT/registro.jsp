<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recepcion de datos del Formulario</title>
<style>
	table, td, th {
		border: 1px solid black;
	}
</style>
</head>
<body>
	<h1>Datos del Formulario</h1>
	
	<table>
		<tr>
			<th>Nombre</th>
			<th>Correo</th>
			<th>Url</th>
			<th>Fecha</th>
			<th>Tiempo</th>
			<th>Fecha y Hora</th>
			<th>Mes</th>
			<th>Semana</th>
			<th>Numero</th>
			<th>Telefono</th>
			<th>Termino</th>
			<th>Color</th>
		</tr>
		<tr>
			<td><%=request.getParameter("name_control") %></td>
			<td><%=request.getParameter("email_control") %></td>
			<td><%=request.getParameter("url_control") %></td>
			<td><%=request.getParameter("date_control") %></td>
			<td><%=request.getParameter("time_control") %></td>
			<td><%=request.getParameter("datetime_control") %></td>
			<td><%=request.getParameter("month_control") %></td>
			<td><%=request.getParameter("week_control") %></td>
			<td><%=request.getParameter("number_control") %></td>
			<td><%=request.getParameter("tel_control") %></td>
			<td><%=request.getParameter("search_control") %></td>
			<td><%=request.getParameter("color_control") %></td>
		</tr>
	</table>
	
	
</body>
</html>