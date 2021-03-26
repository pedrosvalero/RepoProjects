<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="AlopeciaCollege.servicios.Conexion"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang = "es">
<head>
<meta charset="UTF-8">
<title>Icono en el navegador</title> <link rel="icon" type="img/TheAlopeciaCollegeBLANCO3.png" href="img/TheAlopeciaCollegeBLANCO3.png" sizes="32x32">
<title>Ranking - The Alopecia College</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/estilos_ranking.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
</head>
<body>
<%
	Connection conn = Conexion.getInstance().getConnection();
	Statement st = conn.createStatement();
	String query = "SELECT nick, rol, puntuacion FROM alopeciacollege.usuario WHERE rol <> 'Admin' order by puntuacion DESC, nick";
	ResultSet rs = st.executeQuery(query);
%>
<div id="bg" style="background-image: url('img/College.jpg');">
		<nav id= "nose" class="mb-1 navbar navbar-expand-lg navbar-dark bg-dark">
		  <img src ="img/TheAlopeciaCollegeBLANCO3.png" width="45px">
		  <a class="navbar-brand" href="Home.jsp"><font id="navstyle">The Alopecia College</font></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
		    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="Home.jsp">Home</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link">Ranking
		        <span class="sr-only">(current)</span>
		        </a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="Examen.jsp">Examenes</a>
		      </li>
		      <% if (session.getAttribute("rol").equals("Admin")) { %>
			  <li class="nav-item">
		        <a class="nav-link" href="Usuarios.jsp">Usuarios</a>
		      </li>
			  <% } %>
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
				  <a class="dropdown-item" href="Logout"><i class="fas fa-sign-out-alt red-text" style="margin-right: 9px"></i>Cerrar Sesi�n</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>

	<a href="Ranking"></a>
		<center><a id="cabezera" class="the-most" >
		  <img id="rankingcalvitium" src="img/RankingCalvitiumIllustrisColor.png" width="200px">
		</center>
	</a>

<div class="table-responsive" style="border-radius: 10px;">
	<table>
		<tr style="background: black; opacity: 0.9; text-align: center;">
			<th scope="col"><h5 style="font-weight: bold; color: white;">Nick</h5></th>
			<th scope="col"><h5 style="font-weight: bold; color: white;">Rol</h5></th>
			<th scope="col"><h5 style="font-weight: bold; color: white;">Puntuaci�n</h5></th>
		</tr>

		<%
			while (rs.next()) {
		%>
		
		<tr style="background: lightyellow; opacity: 0.9; font-size: 8px;">
			<td><h6><%=rs.getString("nick")%></h6></td>
			<td><h6><%=rs.getString("rol")%></h6></td>
			<td style="background: #F7DC6F;"><h6><%=rs.getInt("puntuacion")%></h6></td>
		</tr>
		
		<%
			}
		%>

	</table>
</div>

	<%
		rs.close();
	st.close();
	conn.close();
	%>
		

	<!-- Whatsapp -->
	<a class="appWhatsapp" target="blanck" href="https://api.whatsapp.com/send?phone=34601032880&text=Buenas!&nbsp;Entra&nbsp;en&nbsp;nuestro&nbsp;grupo&nbsp;de&nbsp;calvos" title="WhatsApp">
    <img src = "img/whats.png" id="whats" alt= "Whatsapp">
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
          <h5 class="font-weight-bold text-uppercase mb-4">Pol�tica de Privacidad</h5>
          <ul class="list-unstyled">
            <li>
              <p>
                <a href="https://www.edp.com/es/terminos-y-condiciones-de-uso-y-politica-de-privacidad" target="_blank">T�rminos y Privacidad</a>
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
          <!-- Intagram -->         
          <a href="#" title="Instagram"><img src ="img/insta.png" id="insta" width="45"></a>
        </div>
        <hr class="clearfix w-100 d-md-none">
        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">
          <!-- Contact details -->
          <h5 class="font-weight-bold text-uppercase mb-4">Contacto</h5>
          <ul class="list-unstyled">
            <li>
              <p><i class="fas fa-home mr-3"></i><a href="https://goo.gl/maps/JPYZ3RfNxEk62jKZA" target="_blank"> Pa�s de Nunca Jam�s</a></p>
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
    <!-- Copyright -->
    <div  class="footer-copyright mdb-color black text-center py-2">� 2020 Copyright:<a href="#"> alopeciacollege.herokuapp.com</a></div>
    <!-- Copyright -->
  </footer>

</div>

  <!-- Scripts -->
	<!-- JQuery -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
	<script>
		window.addEventListener('load', iniciarf, false);

		function iniciarf() {
  
		  var face = document.getElementById('face');
  
		  face.addEventListener('mouseover', colorf, false);
		  face.addEventListener('mouseout', restaurarf, false);
		}

		function restaurarf(){
		  var face = document.getElementById('face').src = "img/face.png";
		}

		function colorf() {
		  var face = document.getElementById('face').src = "img/face_color.png";
		}
	</script>
	<script>
		window.addEventListener('load', iniciart, false);

		function iniciart() {

		  var twit = document.getElementById('twit');

		  twit.addEventListener('mouseover', colort, false);
		  twit.addEventListener('mouseout', restaurart, false);
		}

		function restaurart(){
		  var twit = document.getElementById('twit').src = "img/twit.png";
		}

		function colort() {
		  var twit = document.getElementById('twit').src = "img/twit_color.png";
		}
	</script>
	<script>
		window.addEventListener('load', iniciari, false);

		function iniciari() {

		  var insta = document.getElementById('insta');

		  insta.addEventListener('mouseover', colori, false);
		  insta.addEventListener('mouseout', restaurari, false);
		}

		function restaurari(){
		  var insta = document.getElementById('insta').src = "img/insta.png";
		}

		function colori() {
		  var insta = document.getElementById('insta').src = "img/insta_color.png";
		}
	</script>
	<script>
		window.addEventListener('load', iniciarw, false);

		function iniciarw() {

		  var whats = document.getElementById('whats');

		  whats.addEventListener('mouseover', colorw, false);
		  whats.addEventListener('mouseout', restaurarw, false);
		}

		function restaurarw(){
		  var whats = document.getElementById('whats').src = "img/whats.png";
		}

		function colorw() {
		  var whats = document.getElementById('whats').src = "img/whats_color.png";
		}
	</script>
</body>
</html>