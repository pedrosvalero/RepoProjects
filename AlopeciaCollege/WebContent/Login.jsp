<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang = "es">
<head>
	<title>The Alopecia College - Inicio de sesión</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/estilos_login.css">
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
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
	<header>
		<nav id= "nose" class="mb-1 navbar navbar-expand-lg navbar-dark default-color bg-dark" style="height: 56px;">
		  <img src ="img/pepe1.jpg" width="30px">
		  <a class="navbar-brand" href="#">The Alopecia College</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
		    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
		    <ul class="navbar-nav mr-auto"></ul>
		    <ul class="navbar-nav ml-auto nav-flex-icons">
		      <img onclick="myFunction()" src="img/signo.png" width="40px">
		    </ul>
		  </div>
		</nav>
		<p id="about"></p>
	</header>
  
  <div class="containerbody">
	<form action = "Home.jsp" method = "POST" accept-charset="ISO-8859-1">
		<caption><center><h4 style="font-weight: bold;">Inicio de sesión</h4></caption>
		<i class="fas fa-envelope" aria-hidden="true"></i> <input class="input" type="email" name="email_control" title="Email/Correo electrónico" required autofocus placeholder ="Dirección de correo electrónico"><br>
		<i class="fas fa-key"></i> <input class="input" type="password" name="pass_control" minlength="6" title="Contraseña de la cuenta" required placeholder ="Contraseña "><br>
		<input type="checkbox" name="recuerdame" /> Recuérdame <br><br>
		¿Aún no te has registrado? <a href="Registro.jsp" style="color: #F1C40F;"> Regístrate</a><br>
		<input type ="submit" value="Entrar"></center><span style="color: red"><%=(request.getAttribute("msgerr") == null) ? "" : request.getAttribute("msgerr") %></span>
	</form>
  </div>

	<a class="appWhatsapp" target="blanck" href="https://api.whatsapp.com/send?phone=34601032880&text=Buenas!&nbsp;Entra&nbsp;en&nbsp;nuestro&nbsp;grupo&nbsp;de&nbsp;calvos">
    <img src = "img/whats.png" alt= "Whatsapp">
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
          <a href="#"><img src ="img/face.png" width="45"></a>
          <!-- Twitter -->
          <a href="#"><img src ="img/twit.png" width="45"></a>          
          <!-- Intagram +-->         
          <a href="#"><img src ="img/insta.png" width="45"></a>
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
    <div  class="footer-copyright mdb-color black text-center py-2">© 2020 Copyright:<a href="#"> paginaweb.com</a>
    </div>
    <!-- Copyright -->
  </footer>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script>function myFunction() {document.getElementById("about").innerHTML = "Esto es lo que pasa al clickar en el About.";}</script>
    <!-- Footer --><script src="https://kit.fontawesome.com/2ab430d3ec.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/2ab430d3ec.js" crossorigin="anonymous"></script>
    <!-- JQuery -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</body>	
</html>	