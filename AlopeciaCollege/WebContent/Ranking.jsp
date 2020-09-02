<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ranking - The Alopecia College</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/css_ranking.css">
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
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
		<!--Navbar -->
		<nav id ="nav" class=" navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand">
    			<img src="img/logo.jpg" height="60" alt="mdb logo">
  			</a>
		  <a class="navbar-brand"><FONT id="fuente" COLOR=#eaeaec size = 6>The Alopecia College</FONT> </a>
		  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4"aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent-555">
			    <ul class="navbar-nav mr-auto">
				    <li class="nav-item">
			         	<a class="nav-link" href="Home.jsp">Home</a>
			        </li>
			        <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown"
				          aria-haspopup="true" aria-expanded="false">Opciones
				        </a>
				        <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
				          <a class="dropdown-item" href="Ranking.jsp">Ranking</a>
				          <a class="dropdown-item" href="#">Exámenes</a>
				        </div>
				    </li>
			    </ul>

			    <ul class="navbar-nav ml-auto nav-flex-icons">

			    	<li class="nav-item avatar dropdown">
				        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
				          aria-haspopup="true" aria-expanded="false">
				          <img src="img/bruce.jpg"  width="30" class="rounded-circle z-depth-0"
				            alt="avatar image">
				        </a>
				        <div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary"
				          aria-labelledby="navbarDropdownMenuLink-55">
				          <a class="dropdown-item" href="#"><i class="fas fa-user cyan-text" style = "margin-right: 5px"></i>Perfil</a>
				          <a class="dropdown-item" href="#"><i class="fas fa-cog fa-spin fa-1px cyan-text" style ="margin-right: 5px"></i>Ajustes</a>
				          <a class="dropdown-item" href="Login.jsp"><i class="fas fa-sign-out-alt red-text" style ="margin-right: 5px"></i>Cerrar Sesión</a>
				        </div>
				      </li>
				    </ul>
			</div>      

		</nav>
		<!--/.Navbar -->



		<center><a class="the-most" target="_blank" >
		  <img src="https://raw.githubusercontent.com/supahfunk/supah-codepen/master/themost-2016.png">
		</a>
		</center>
		<!--Table-->
		<table id="table" class="table table-striped w-auto">
		  <thead>
		    <tr class ="aqua-gradient">
		      <th><i class="fas fa-trophy" style ="margin-right: 5px"></i>Ranking</th>
		    </tr> 
		  </thead>
		  <!--Table head-->
		  <thead >
		    <tr class ="aqua-gradient">
		      <th>Posición</th>
		      <th>Nick Name</th>
		      <th>Puntuación</th>
		      <th>Rol</th>
		    </tr>
		  </thead>
		  <!--Table head-->
	
		  <!--Table body-->
		  <tbody>
		    <tr class="tempting-azure-gradient">
		      <th scope="row">1</th>
		      <td>El Mejor Calvo</td>
		      <td>400</td>
		      <td><img src="img/bruce.jpg" width="40" class="rounded-circle z-depth-0"alt="avatar image">  Bruce Willis </td>
		    </tr>
		    <tr class = "peach-gradient">
		      <th scope="row">2</th>
		      <td>Amadeo44</td>
		      <td>300</td>
		      <td><img src="img/jason.jpg" width="40"class="rounded-circle z-depth-0"alt="avatar image">Jason Statham</td>
		    </tr>
		    <tr class="tempting-azure-gradient">
		      <th scope="row">3</th>
		      <td>Lolo1234</td>
		      <td>200</td>
		      <td><img src="img/vin.jpg" width="50"class="rounded-circle z-depth-0"alt="avatar image"> Vin Diesel</td>
	
		    </tr>
		    <tr class = "peach-gradient">
		      <th scope="row">4</th>
		      <td>Tom Jerry</td>
		      <td>150</td>
		      <td><img src="img/pepe.jpg" width="60"class="rounded-circle z-depth-0"alt="avatar image">Pepe viyuela</td>
		    </tr>
	
		    <tr class="tempting-azure-gradient">
		      <th scope="row">5</th>
		      <td>Popeye</td>
		      <td>100</td>
		      <td><img src="img/danny.png" width="60"class="rounded-circle z-depth-0"alt="avatar image">Danny DeVito</td>
		    </tr>
		    <tr class="peach-gradient">
		      <th scope="row">1</th>
		      <td>Super Nena</td>
		      <td>400</td>
		      <td><img src="img/porman.jpg" width="40"class="rounded-circle z-depth-0"alt="avatar image">  Natalie Porman </td>
		    </tr>
		    <tr class = "tempting-azure-gradient">
		      <th scope="row">2</th>
		      <td>Super Woman</td>
		      <td>300</td>
		      <td><img src="img/britney.jpg" width="40"class="rounded-circle z-depth-0"alt="avatar image">Britney Spears</td>
		    </tr>
		    <tr class="peach-gradient">
		      <th scope="row">3</th>
		      <td>Lolo1234</td>
		      <td>200</td>
		      <td><img src="img/moore.jpg" width="50"class="rounded-circle z-depth-0"alt="avatar image"> Demi Moore</td>
	
		    </tr>
		    <tr class = "tempting-azure-gradient">
		      <th scope="row">4</th>
		      <td>Tom Jerry</td>
		      <td>150</td>
		      <td><img src="img/anne.jpg" width="60"class="rounded-circle z-depth-0"alt="avatar image">Anne Hathaway</td>
		    </tr>
	
		    <tr class="peach-gradient">
		      <th scope="row">5</th>
		      <td>Popeye</td>
		      <td>100</td>
		      <td><img src="img/Charlie.jpg" width="60"class="rounded-circle z-depth-0"alt="avatar image">Charlize Theron</td>
		    </tr>
		  </tbody>
		  <!--Table body-->
	
	
		</table>

		<a class="appWhatsapp" target="blanck" href="https://api.whatsapp.com/send?phone=34601032880&text=Buenas!&nbsp;Entra&nbsp;en&nbsp;nuestro&nbsp;grupo&nbsp;de&nbsp;calvos">
		<img src = "img/whats.png" alt= "Whatsapp" width="50">
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
		              <p>
		                <i class="fas fa-home mr-3"></i><a href="https://goo.gl/maps/JPYZ3RfNxEk62jKZA" target="_blank"> País de Nunca Jamás</a></p>
		            </li>
		            <li>
		              <p>
		                <i class="fas fa-envelope mr-3"></i><a href="mailto:aplocia.collage@gmail.com" target="_blank"> alopecia.collage@gmail.com</a></p>
		            </li>
		            <li>
		              <p>
		                <i class="fas fa-phone mr-3"></i> + 00 666 666 666</p>
		            </li>
		          </ul>

		        </div>

		        <!-- Grid column -->

		      </div>
		      <!-- Grid row -->

		    </div>
		    <!-- Footer Links -->

		    <!-- Copyright -->
		    <div  class="footer-copyright mdb-color black text-center py-2">© 2020 Copyright:
		      <a href="#"> paginaweb.com</a>
		    </div>
		    <!-- Copyright -->

		</footer>
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