<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang = "es">
<head>
	<title>The Alopecia College - Home</title>
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/estilos_home.css">
	<link href="carousel.css" rel="stylesheet">
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
		  <a class="navbar-brand"><font id="navfont">The Alopecia College</font></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
		    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home
		          <span class="sr-only">(current)</span>
		        </a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="Ranking.jsp">Ranking</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Examenes</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
		          aria-haspopup="true" aria-expanded="false">Usuarios
		        </a>
		        
		        <!-- Solo admins -->
		        <div class="dropdown-menu dropdown-default" aria-labelledby="navbarDropdownMenuLink-333">
		          <a class="dropdown-item" href="#"><i class="fas fa-user" style="margin-right: 9px"></i>Crear Usuario</a>
		          <a class="dropdown-item" href="#"><i class="fas fa-bars" style="margin-right: 9px"></i>Lista Usuarios</a>
		        </div>
		        
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
		          <a class="dropdown-item" href="#"><i class="fas fa-user cyan-text" style="margin-right: 9px"></i>Perfil</a>
				  <a class="dropdown-item" href="Logout"><i class="fas fa-sign-out-alt red-text" style="margin-right: 9px"></i>Cerrar Sesión</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>
	</header>

	<!-- Carousel -->
	<center>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		    </ol>
		    <div class="carousel-inner" role="listbox">
		      <div class="carousel-item active">
		        <center><img src="img/Banner1.png" alt="Bienvenido" style="width:100%; height:100%; border-radius: 10px;"></center>
		        <div class="container">
		          <div class="carousel-caption">
		            <h1 style="font-size: 8mm; -webkit-text-stroke: 1px white; color: black;">BIENVENIDO</h1>
		            <p style="font-size: 5mm; -webkit-text-stroke: 1px black; color: white;">¡Te damos la bienvenida a la mejor Universidad de alopecia del mundo!</p>
		          </div>
		        </div>
		      </div>
		      <div class="carousel-item">
		        <img src="img/Banner2.png" alt="Becas" style="width:100%;height:100%; border-radius: 10px;">
		        <div class="container">
		          <div class="carousel-caption">
		            <h1 style="font-size: 8mm; color: white;">LAS MEJORES BECAS</h1>
		            <p style="font-size: 5mm; color: white;">¡Tenemos las mejores becas que te pueden ofrecer!</p>
		            <p><a class="btn btn-lg btn-primary" href="#" role="button">Ver</a></p>
		          </div>
		        </div>
		      </div>
		    </div>
		    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev" style="background: lightgrey; border-radius: 100%; width: 4%; height: 10%; margin-top: 17%; margin-left: 2%;">
		      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next" style="background: lightgrey; border-radius: 100%; width: 4%; height: 10%; margin-top: 17%; margin-right: 2%;">
		      <span class="carousel-control-next-icon" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		</div></center>

	<!-- Tarjetas -->
	<center>
		<!-- Card -->
		<div class="card hoverable" id="cards">
		  <!-- Card image -->
		  <div class="view overlay">
		    <img class="card-img-top" src="img/user.jpg" alt="Card image cap">
		    <a href="#!">
		      <div class="mask rgba-white-slight"></div>
		    </a>
		  </div>
		  <!-- Card content -->
		  <div class="card-body" id="cardbody">
		    <!-- Title -->
		    <h4 class="card-title"><a>Crear usuario</a></h4>
		    <!-- Text -->
		    <p class="card-text">                                                                                                        Crea un nuevo Usuario de la página. </p>
		    <!-- Button -->
		    <a href="#" class="btn btn-primary">Crear</a>
		  </div>
	    </div>
		<div class="card hoverable" id="cards">		
		  <!-- Card image -->
		  <div class="view overlay">
		    <img class="card-img-top" src="img/examen1.png" alt="Card image cap">
		    <a href="#!">
		      <div class="mask rgba-white-slight"></div>
		    </a>
		  </div>
		  <!-- Card content -->
		  <div class="card-body" id="cardbody">
		    <!-- Title -->
		    <h4 class="card-title">Crear examen</h4>
		    <!-- Text -->
		    <p class="card-text">Crea un examen con preguntas aleatorias y sube en el Ranking. ¡Qué calvario!</p>
		    <!-- Button -->
		    <a href="#" class="btn btn-primary">Crear</a>
		  </div>
		</div>
		<div class="card hoverable" id="cards">
		  <!-- Card image -->
		  <div class="view overlay">
		    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
		    <a href="Ranking.jsp">
		      <div class="mask rgba-white-slight"></div>
		    </a>
		  </div>
		  <!-- Card content -->
		  <div class="card-body" id="cardbody">
		    <!-- Title -->
		    <h4 class="card-title"><a>Ranking de usuarios</a></h4>
		    <!-- Text -->
		    <p class="card-text">Visita el ranking de usuarios calvos para saber la mejor nota del curso.</p>
		    <!-- Button -->
		    <a href="Ranking.jsp" class="btn btn-primary">Acceder</a>
		  </div>
		</div>
		<!-- Card -->
	</center>

	<!-- Whatsapp -->
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
</body>	
</html>	