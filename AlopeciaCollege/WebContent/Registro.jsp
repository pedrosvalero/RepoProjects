<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang = "es">
<head>
	<title>The Alopecia College - Registrarse</title>
	<meta charset="UTF-8">
	<link rel="icon" type="img/TheAlopeciaCollegeBLANCO3.png" href="img/TheAlopeciaCollegeBLANCO3.png" sizes="32x32">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/estilos_register.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
	</head>
</head>
<body>
<div id="bg" style="background-image: url('img/Lwp2.jpg');">
	<header>
		<nav id= "nose" class="mb-1 navbar navbar-expand-lg navbar-dark default-color bg-dark" style="height: 56px;">
		  <img src ="img/TheAlopeciaCollegeBLANCO3.png" width="45px">
		  <a class="navbar-brand"><font id="navfont">The Alopecia College</font></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
		    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
		    <ul class="navbar-nav mr-auto"></ul>
		    <ul class="navbar-nav ml-auto nav-flex-icons">
		      <li class="nav-item">
		        <a class="nav-link" href="Login.jsp"><i class="fas fa-user"></i> Iniciar Sesi?n</a>
		      </li>
		    </ul>
		  </div>
		</nav>
	</header>

	<div class="containerbody">
		<form action = "Registro" method = "POST" accept-charset="ISO-8859-1">
			<center><caption><h4 id="registrarse" style="font-weight: bold;">Registrarse</h4></caption>

			<div class="row" id="apartados">
	          	<div class="form-group col-md-6">
	          		<i class="fas fa-signature"></i><input class="input" type="text" name="name_control" title="Nombre" required autofocus placeholder ="Nombre *">
	          	</div>
	        	<div class="form-group col-md-6">
	          		<i class="fas fa-signature"></i><input class="input" type="text" name="surname_control" title="Apellidos" required placeholder ="Apellidos *">
	          	</div>
	      	</div>

	        <div class="row" id="apartados">
	            <div class="form-group col-md-6">
	             	<i class="fas fa-id-card"></i><input class="input" type="text" name="dni_control" maxlength="9" title="N?mero de Documento Identidad" required placeholder ="DNI *">
	            </div>
	            <div class="form-group col-md-6">
	            	<i class="fas fa-birthday-cake"></i><input class="input" type="date" name="birthdate_control" title="Fecha de nacimiento *" required>
	            </div>
	        </div>

			<div class="form-group col-md-12">
	            <i class="fas fa-envelope" aria-hidden="true"></i><input class="input" id="idMail" type="email" name="email_control" 
				required placeholder="Email *" title="Direcci?n de correo electr?nico">
			</div>

			<div class="row" id="apartados">
				<div class="form-group col-md-6">
					<i class="fas fa-user"></i><input class="input" type="text" name="nick_control" title="Nombre de usuario" required placeholder ="Nickname *">
	            </div>
	            <div class="form-group col-md-6">
	            	<i class="fas fa-key"></i><input class="input" type="password" name="pass_control" minlength="6" title="Contrase?a de la cuenta" required placeholder ="Contrase?a *">
	            </div>
	            <div class="form-group col-md-4">
	           		<i class="fas fa-city"></i><select id="idLocalidad" title="Localidad" name="localidad_control">
						<option hidden>Localidad...</option>
						<option>?lava</option><option>Albacete</option><option>Alicante</option><option>Almer?a</option><option>Asturias</option><option>?vila</option><option>Badajoz</option><option>Barcelona</option><option>Burgos</option><option>C?ceres</option>
						<option>C?diz</option><option>Cantabria</option><option>Castell?n</option><option>Ciudad Real</option><option>C?rdoba</option><option>La Coru?a</option><option>Cuenca</option><option>Gerona</option><option>Granada</option><option>Guadalajara</option><option>Guip?zcoa</option><option>Huelva</option><option>Huesca</option><option>Islas Baleares</option><option>Ja?n</option><option>Le?n</option><option>L?rida</option><option>Lugo</option><option>Madrid</option><option>M?laga</option><option>Murcia</option><option>Navarra</option><option>Ourense</option><option>Palencia</option><option>Las Palmas</option><option>Pontevedra</option><option>La Rioja</option><option>Salamanca</option><option>Segovia</option><option>Sevilla</option><option>Soria</option><option>Tarragona</option><option>Santa Cruz de Tenerife</option><option>Teruel</option><option>Toledo</option><option>Valencia</option><option>Valladolid</option><option>Vizcaya</option><option>Zamora</option><option>Zaragoza</option>
					</select>
	            </div>
	            <div class="form-group col-md-4">
	            	<i class="fas fa-mobile-alt" aria-hidden="true"></i><input class="input" type="tel" name="tlf_control" maxlength="9"  placeholder ="Tel?fono" title="N?mero de contacto">
	            </div>
	            <div class="form-group col-md-4">
	            <i class="fas fa-neuter"></i><select id="idSex" name="sexo_control" title="Tipo de humano">
		  			<option value="0" hidden>Sexo ...</option>
		  			<option  value="O">Otro</option><option  value="F">Mujer</option><option  value="M">Hombre</option>
				</select><br>
				</div>
	        </div>
        	<div class="row" id="apartados" style="justify-content: center;">
        		<button class="btn btn-blue btn-rounded mb-3" style="border-radius: 20px;" type="submit" title="Crear cuenta en la p?gina">Registrarse</button>
        		<button class="btn btn-red btn-rounded mb-3" style="border-radius: 20px; margin-left: 45px;" type="reset" title="Empezar de cero">Borrar todo</button>
        	</div>
		</center></form>
	</div>

	<!-- Whatsapp -->
	<a class="appWhatsapp" target="blanck" href="https://api.whatsapp.com/send?phone=34601032880&text=Buenas!&nbsp;Entra&nbsp;en&nbsp;nuestro&nbsp;grupo&nbsp;de&nbsp;calvos" title="WhatsApp">
    <img src="img/whats.png" id="whats" alt= "Whatsapp">
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
          <h5 class="font-weight-bold text-uppercase mb-4">Pol?tica de Privacidad</h5>
          <ul class="list-unstyled">
            <li>
              <p>
                <a href="https://www.edp.com/es/terminos-y-condiciones-de-uso-y-politica-de-privacidad" target="_blank">T?rminos y Privacidad</a>
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
          <a href="#" title="Facebook"><img src ="img/face.png" id = "face" width="45"></a>
          <!-- Twitter -->
          <a href="#" title="Twitter"><img src ="img/twit.png" id = "twit" width="45"></a>          
          <!-- Intagram +-->         
          <a href="#" title="Instagram"><img src ="img/insta.png" id = "insta" width="45"></a>
        </div>
        <hr class="clearfix w-100 d-md-none">
        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">
          <!-- Contact details -->
          <h5 class="font-weight-bold text-uppercase mb-4">Contacto</h5>
          <ul class="list-unstyled">
            <li>
              <p><i class="fas fa-home mr-3"></i><a href="https://goo.gl/maps/JPYZ3RfNxEk62jKZA" target="_blank"> Pa?s de Nunca Jam?s</a></p>
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
    <div  class="footer-copyright mdb-color black text-center py-2">? 2020 Copyright:<a href="#"> alopeciacollege.herokuapp.com</a>
    </div>
    <!-- Copyright -->
  </footer>
</div> <!-- <- NO BORRAR, /div PARA WALLPAPER -->

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
</body>
</html>