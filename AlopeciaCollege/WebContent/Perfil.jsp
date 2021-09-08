<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="AlopeciaCollege.servicios.Conexion"%>
<%@ page import="java.sql.*"%>
<%@ page import="AlopeciaCollege.modelo.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil - <% out.print(session.getAttribute("nickUsu")); %> </title>
	<meta charset="ISO-8859-1">
	<link rel="icon" type="img/TheAlopeciaCollegeBLANCO3.png" href="img/TheAlopeciaCollegeBLANCO3.png" sizes="64x64">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/estilos_perfil.css">
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
		      <% if (session.getAttribute("rol").equals("Admin")) { %>
		      <li class="nav-item">
		        <a class="nav-link" href="Usuarios.jsp">Usuarios</a>
		      </li>
		      <% } %>
		      <li class="nav-item active">
		        <a class="nav-link">Perfil
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
				  <a class="dropdown-item" href="Logout"><i class="fas fa-sign-out-alt red-text" style="margin-right: 9px"></i>Cerrar Sesi�n</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>
	</header>
	
	
<section  class="containperfil">
<div class="row">
    <div class="col active-with-click" id="block" >
        <div id="rol" class="col-md-6 col-sm-6 col-xs-12">
            <article class="material-card Red">
                <h2>
                    <span><% out.print(session.getAttribute("nickUsu")); %></span>
                    <strong>
                        <i class="fa fa-fw fa-star"></i>
                        <%= session.getAttribute("rol") %>
                    </strong>
                </h2>
                <div class="mc-content">
                    <div class="img-container">
                        <img class="img-responsive" src="img/jason.png" width="320" style="border-radius: 100%;">
                    </div>
                    <div class="mc-description" style="height: 270px;">
                        Eres un apred�z de calvos, a�n puedes mejorar m�s, sigue haciendo ex�manes. De momento tienes el rol: <%= session.getAttribute("rol") %>.<br>
                        
                         <% if ((session.getAttribute("rol").equals("Admin")) || (session.getAttribute("rol").equals("Bruce_Willis")) || (session.getAttribute("rol").equals("Demi_Moore"))) { %>
                        <img src="Desbloqueable/LogroBruceWillis.png" style="width: 70%; height: 70%; margin: auto; margin-left: 40px;">
                        <% } %>
                    </div>
                </div>
                <a class="mc-btn-action">
                    <i class="fa fa-bars"></i>
                </a>
            </article>
            <audio controls autoplay loop>
			  <source src="Desbloqueable/CALVO.ogg" type="audio/ogg">
			  <source src="Desbloqueable/CALVO.mp3" type="audio/mpeg">
			</audio>
        </div>
    </div>

<!-- Apartados -->
	<div class="col active-with-click" id="block" style="margin: auto; margin-right: 100px;">
		<div class="transbox" >
	    <div class="modal-body mx-5">
	        <div class="md-form mb-5">
	          <i id="simbolos" class="fas fa-envelope prefix"></i>
	          <label id="text" data-error="wrong" data-success="right" for="form29">Correo electr�nico</label>
	          <input type="email" id="form29" class="form-control validate" value="<%= session.getAttribute("email") %>" disabled>
	        </div>
		    <div class="md-form mb-5">
	          <i id="simbolos" class="fas fa-user prefix"></i>
	          <label id="text" data-error="wrong" data-success="right" for="form29">Nickame</label>
	          <input  type="text" id="form29" class="form-control validate" value="<%= session.getAttribute("nickUsu") %>" disabled>
	        </div>
	        <div class="md-form mb-5">
	          <i id="simbolos" class="fas fa-city prefix" style="margin-right: 0px;"></i>
	          <label id="Localidad" data-error="wrong" data-success="right" for="form29">Localidad</label>
	          <input  type="tel" id="form29" class="form-control validate" value="<%= session.getAttribute("localidad") %>" disabled>
	        </div>
	        <div class="md-form mb-5">
	          <i id="simbolos" class="fas fa-mobile-alt prefix" aria-hidden="true"></i>
	          <label id="text" data-error="wrong" data-success="right" for="form29">Tel�fono</label>
	          <input  type="tel" id="form29" class="form-control validate" value="<%= session.getAttribute("telefono") %>" disabled>
	        </div>
	        <div class="md-form mb-5">
	          <i class="fas fa-user-tag prefix"></i>
	          <label id="text" data-error="wrong" data-success="right" for="form29">Rol</label>
	          <input  type="text" id="form29" class="form-control validate" value="<%= session.getAttribute("rol") %>" disabled>
	        </div>
	        <div id="boton"class="text-center">
			  <a href="ActualizaPerfil?opcion=e&dni=<%= session.getAttribute("dni") %>"><button class="btn btn-default btn-rounded mb-3" data-toggle="modal" data-target="#modalContactForm" style="border-radius: 20px;">Editar</button></a>
			  <a href="ActualizaPerfil?opcion=b&dni=<%= session.getAttribute("dni") %>"><button class="btn btn-red btn-rounded mb-3" data-toggle="modal" data-target="#modalContactForm" style="border-radius: 20px;">Eliminar cuenta</button></a>
			</div>
	    </div>
	 </div>
	</div>
</div>
</section>

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
    <!-- Footer Links -->
    <!-- Copyright -->
    <div  class="footer-copyright mdb-color black text-center py-2">� 2020 Copyright:<a href="#"> alopeciacollege.herokuapp.com</a>
    </div>
    <!-- Copyright -->
  </footer>

</div>

	<!-- Scripts -->
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
		
		<script>
		$(function() {
        $('.material-card > .mc-btn-action').click(function () {
            var card = $(this).parent('.material-card');
            var icon = $(this).children('i');
            icon.addClass('fa-spin-fast');

            if (card.hasClass('mc-active')) {
                card.removeClass('mc-active');

                window.setTimeout(function() {
                    icon
                        .removeClass('fa-arrow-left')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-bars');

                }, 800);
            } else {
                card.addClass('mc-active');

                window.setTimeout(function() {
                    icon
                        .removeClass('fa-bars')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-arrow-left');

                }, 800);
            }
        });
    });
		</script>
</body>
</html>