<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="AlopeciaCollege.servicios.Conexion"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>The Alopecia College - Usuarios</title> <link rel="icon" type="img/TheAlopeciaCollegeBLANCO3.png" href="img/TheAlopeciaCollegeBLANCO3.png" sizes="32x32">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/estilos_usuarios.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
	<link rel="stylesheet" href="node_modules/mdbootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="node_modules/mdbootstrap/css/mdb.min.css">
	<link rel="stylesheet" href="node_modules/mdbootstrap/css/style.css">
</head>
<body>
<%
	Connection conn = Conexion.getInstance().getConnection();
	Statement st = conn.createStatement();
	String query = "SELECT nomUsu, apellidosUsu, DNI, email, FecNac, localidad, telefono, sexUsu, nick, rol, pass FROM alopeciacollege.usuario";
	ResultSet rs = st.executeQuery(query);
%>
<% if (session.getAttribute("rol").equals("Admin")) { %>
<div id="bg" style="background-image: url('img/College.jpg');">
	<header>
		<nav id= "nose" class="mb-1 navbar navbar-expand-lg navbar-dark bg-dark">
		  <img src ="img/TheAlopeciaCollegeBLANCO3.png" width="45px">
		  <a class="navbar-brand" href="Home.jsp"><font id="navfont">The Alopecia College</font></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
		    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="Home.jsp">Home</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="Ranking.jsp">Ranking</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="Examen.jsp">Examenes</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link">Usuarios
		        <span class="sr-only">(current)</span></a>
		      </li>
		    </ul>
		    <ul class="navbar-nav ml-auto nav-flex-icons">
		      <li class="nav-item dropdown">
		        <a class="nav-link" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
		          aria-haspopup="true" aria-expanded="false">
		          <img src="img/usuario.png" class="rounded-circle z-depth-0" alt="avatar image" height="33" style="margin-right: 5px">
		          	<% out.print(session.getAttribute("nickUsu")); %>
		        </a>
		        <div class="dropdown-menu dropdown-menu-right dropdown-default"
		          aria-labelledby="navbarDropdownMenuLink-333">
		          <a class="dropdown-item" href="Perfil.jsp"><i class="fas fa-user cyan-text" style="margin-right: 9px"></i>Perfil</a>
				  <a class="dropdown-item" href="Logout"><i class="fas fa-sign-out-alt red-text" style="margin-right: 9px"></i>Cerrar Sesión</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>
	</header>


<!------------------------------------ TABLA DE USUARIOS ----------------------------------------->	
	<!-- Botón Añadir Usuario -->
<div class="text-left" style="justify-content: left;">
	<img src="img/plus.png" style="width: 34px; border-radius: 100%; margin-top: 30px; left: 0px; margin-left: 85px;"> <a href="AnyadirUsuAdmin.jsp"><button class="btn btn-blue btn-rounded mb-3" style="border-radius: 20px; left: 0px; margin-top: 40px;" title="Crear cuenta en la página"> Añadir usuario</button></a>
</div>

			<!-- Modal borrar: -->
			<div class="container">
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
					    <div class="modal-content" style="opacity: 0.85; border-radius: 10px; padding: 5px;">
					        <div class="modal-header">
					          <h4 class="modal-title"><b>Eliminar</b></h4>
					          <img class="close" data-dismiss="modal" src="img/close.png" width="40">
					        </div>
					        <div class="modal-body">
					          <h5 style="text-align: center;">¿Estás seguro de eliminar este usuario?</h5>
					        </div>
					        <div class="modal-footer"">
					          <button type="button" class="btn btn-red" data-tarjet="#borrusu" data-dismiss="modal" style="border-radius: 20px; margin: auto;">Sí</button>
					          <button type="button" class="btn btn-default" data-dismiss="modal" style="border-radius: 20px; margin: auto;">No</button>
					        </div>
						</div>
					</div>
				</div>
			</div>

  <table id="dtBasicExample" cellspacing="0" style="width: 90%; margin: auto; margin-top: 10px; margin-bottom: 100px;">
      <tr style="background: black; opacity: 0.9; text-align: center;">
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Nombre</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Apellidos</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">DNI</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Correo Electrónico</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Fecha de nacimiento</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Localidad</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Teléfono</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Sexo</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Nickname</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Rol</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Contraseña</h6></th>
        <th class="th-sm"><h6 style="font-weight: bold; color: white;">Acciones</h6></th>
      </tr>
    <%
		while (rs.next()) {
	%>
       <tr style="background: lightgrey; opacity: 0.9;">
        <td><%= rs.getString("nomUsu") %></td>
        <td><%= rs.getString("apellidosUsu") %></td>
        <td><%= rs.getString("DNI") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("FecNac") %></td>
        <td><%= rs.getString("localidad") %></td>
        <td><%= rs.getString("telefono") %></td>
        <td><%= rs.getString("sexUsu") %></td>
        <td><%= rs.getString("nick") %></td>
        <td><%= rs.getString("rol") %></td>
        <td><%= rs.getString("pass") %></td>
        <td>
	    	<center><a href="ListaUsuarios?opcion=e&email=<%= rs.getString("email") %>"><img data-tarjet="#modalEdit1" class="hoverable" id="editar" style ="width: 25px; border-radius: 100%;" src="img/edit.png"></a>
			<a id="borrusu" href="ListaUsuarios?opcion=b&email=<%= rs.getString("email") %>"><img class="hoverable" data-toggle="modal" data-target="#yModal" id="borrar" src="img/delete.png" style ="margin-left: 15px; width: 25px; border-radius: 100%;"></a></center>
		</td>
      </tr>
    <%
		}
	%>
  </table>

<%
	rs.close();
	st.close();
	conn.close();
%>

	<!-- Whatsapp -->
	<a class="appWhatsapp" title="WhatsApp" target="blanck" href="https://chat.whatsapp.com/J9FrHHS0MYq5M0xwYEJUfD">
    <img src = "img/whats.png" id ="whats" alt= "Whatsapp">
  	</a>
  <!-- Footer -->
  <footer class="page-footer font-small mdb-color lighten-3 pt-4">
    <!-- Footer Links -->
    <div class="container text-center text-md-left">
      <!-- Grid row -->
      <div class="row">
        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">
          <!-- Links -->
          <h5 class="font-weight-bold text-uppercase mb-4">Política de Privacidad</h5>
          <ul class="list-unstyled">
            <li>
              <p>
                <a href="https://www.edp.com/es/terminos-y-condiciones-de-uso-y-politica-de-privacidad" target="_blank">Términos y Privacidad</a>
              </p>
            </li>
            <li>
              <p>
                <a href="http://www.interior.gob.es/politica-de-cookies" target="_blank">Cookies</a>
              </p>
            </li>
          </ul>
        </div>
        <!-- Grid column -->
        <!-- Grid column -->        
        <hr class="clearfix w-100 d-md-none">
        <!-- Grid column -->
        <div id ="redes" class="col-md-2 col-lg-2 text-center mx-auto my-4">
          <!-- Social buttons -->
          <h5 class="font-weight-bold text-uppercase mb-4">Follow Us</h5>
          <!-- Facebook -->
          <a href="#" title="Facebook"><img src ="img/face.png" id="face" width="45"></a>
          <!-- Twitter -->
          <a href="#" title="Twitter"><img src ="img/twit.png" id="twit" width="45"></a>          
          <!-- Intagram +-->         
          <a href="#" title="Instagram"><img src ="img/insta.png" id= "insta" width="45"></a>
        </div>
        <hr class="clearfix w-100 d-md-none">
        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">
          <!-- Contact details -->
          <h5 class="font-weight-bold text-uppercase mb-4">Contacto</h5>
          <ul class="list-unstyled">
            <li>
              <p><i class="fas fa-home mr-3"></i><a href="https://goo.gl/maps/JPYZ3RfNxEk62jKZA" target="_blank"> País de Nunca Jamás</a></p>
            </li>
            <li>
              <p><i class="fas fa-envelope mr-3"></i><a href="mailto:aplocia.collage@gmail.com" target="_blank"> alopecia.collage@gmail.com</a></p>
            </li>
            <li>
              <p><i class="fas fa-phone mr-3"></i> + 00 666 666 666</p>
            </li>
          </ul>
        </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
    </div>
    <!-- Footer Links -->
    <!-- Copyright -->
    <div  class="footer-copyright mdb-color black text-center py-2">© 2020 Copyright:<a href="#"> alopeciacollege.herokuapp.com</a>
    </div>
    <!-- Copyright -->
  </footer>
</div> <!-- <- No BORRAR, es el div del wallpaper. -->

	<!-- Scripts -->
	<script src="js/js_usuarios.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <!-- Footer --><script src="https://kit.fontawesome.com/2ab430d3ec.js" crossorigin="anonymous"></script>
    <!-- JQuery -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

    <% } else { %>
    <div class="alert alert-danger" style="border: 2px solid darkred; margin: auto; width: 800px; margin-top: 20px;">
    <center><b style="font-weight: bold;")>Importante:</b><br>
    Esta página está reservada a usuarios Administradores.</center>
  	</div>
    <% } %>
</body>
</html>