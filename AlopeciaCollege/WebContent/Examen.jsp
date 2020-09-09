<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>The Alopecia College - Examen</title>
    <meta charset="UTF-8">
    <title>Icono en el navegador</title> <link rel="icon" type="img/TheAlopeciaCollegeBLANCO3.png" href="img/TheAlopeciaCollegeBLANCO3.png" sizes="32x32">
    <meta name="viewport" content="with=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="css/estilos_examen.css">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
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
		      <li class="nav-item active">
		        <a class="nav-link">Examenes
		        <span class="sr-only">(current)</span>
		        </a>
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
				  <a class="dropdown-item" href="Logout"><i class="fas fa-sign-out-alt red-text" style="margin-right: 9px"></i>Cerrar Sesión</a>
		        </div>
		      </li>
		    </ul>
		  </div>
		</nav>
	</header>

<div class="containerexamen">
<h1 style="font-weight: bold; text-align: center; -webkit-text-stroke: 0.1mm grey; color: black;">Examen</h1>
    <div class="transbox" >
        <div class="row mt-4">
            <div class="col" style="font-size: 120%;">
                <div id="pregunta" class="form-group font-weight-bold"></div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" onClick = "checkOn()" name="alternativas" value="1" ><span
                        id="opcion1"></span>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" onClick = "checkOn()" name="alternativas" value="2"><span
                        id="opcion2"></span>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" onClick = "checkOn()" name="alternativas" value="3"><span
                        id="opcion3"></span>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" onClick = "checkOn()" name="alternativas" value="4"><span
                        id="opcion4"></span>
                </div>
                <div id ="resultado" class="form-check" style="text-align: justify;"></div>
                	<center><button id="btnAvanzar" onClick = "siguiente()" class="btn btn-primary mt-4" style="border-radius: 20px;">Siguiente pregunta</button><br><br>
                	
                	<form action="ActualizaPuntuacion" method="POST">
	                	<input type="text" title="DNI" value="<%= session.getAttribute("dni") %>" hidden>
				    	<input id="puntuacion" type="text" value="<%= session.getAttribute("puntuacion") %>" hidden>
				    	<input id="rol" type="text" title="rol" value="<%= session.getAttribute("rol") %>" hidden>
						
						<button type="submit" class="btn btn-primary mt-4" style="border-radius: 20px;">Aceptar</button>
						<p><b style="font-weight: bold;">Aviso:</b> ¡Este botón actualiza tus puntos, pero deberás loguearte de nuevo para actualizar tu rango en perfil!</p>
                	</form>
                	</center>
           		</div>
        </div>
    </div>
</div>

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
    <!-- Copyright -->
    <div  class="footer-copyright mdb-color black text-center py-2">© 2020 Copyright:<a href="#"> alopeciacollege.herokuapp.com</a></div>
    <!-- Copyright -->
  </footer>
</div><!-- <- NO BORRAR, /div DEL WALLPAPER -->

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
	var preguntas = [
	    "&middot; Te levantas un buen d&iacutea, y al verte frente al espejo, observas que esa pedazo melena tuya empieza a clarear &iquestQu&eacute haces?",
	    "&middot; &iquestCu&aacutel crees que es la mayor ventaja de ser calv@?",
	    "&middot; Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de acuerdo est&aacutes con la siguiente afirmaci&oacuten? Una calva bien llevada puede aumentar tu Sex-appeal",
	    "&middot; &iquestQu&eacute crees que significa el lema de la Alopecia College? Calvis et Veritas",
	    "&middot; &iquestCu&aacutel es el porcentaje de hombres y mujeres que con la edad sufren alopecia en Espa&ntildea?",
	    "&middot; Est&aacutes a tope de rebelde. Quieres marcar la diferencia, y buscando una soluci&oacuten a tu alopecia, piensas que un tatuaje en la calva puede ser ese factor x que buscas &iquestQu&eacute haces? ",
        "&middot; &iquestCu&aacutel de estos actores calvos crees que es m&aacutes atractivo?",
	    "&middot; Hoy toca convenci&oacuten de complementos de moda, y quieres impresionar a todo el mundo. &iquestQu&eacute te pones?",
	    "&middot; Un buen calvo sabe diferenciar una gorra Herrignbone de una gorra Gatsby Hatteras &iquestEn qu&eacute se diferencian?",
	    "&middot; &iquestCu&aacutel de estos trabajos no es Calvic friendly?",
	    "&middot; &iquestEs recomendable en invierno el uso de gorros para evitar resfriados?",
        "&middot; Diriges la nueva revista Vogue pero con tem&aacutetica c&aacutelvica y quieres hacer un art&iacuteculo sobre actrices que se tuvieron que rapar el pelo para un papel. &iquestA qui&eacuten pones en la portada?",
	    "&middot; Entras en un herbolario y en una secci&oacuten ves un cartel que indica: Lociones para la calva &iquestQu&eacute loci&oacuten te llevas?",
	    "&middot; Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de acuerdo est&aacutes con la siguiente afirmaci&oacuten? Antes tapa calva que peluqu&iacuten.",
	    "&middot; &iquestCu&aacutel es la diferencia entre un peluqu&iacuten y una peluca?",
	    "&middot; &iquestCu&aacutel es el pa&iacutes con menos alopecia a nivel mundial?",
        "&middot; Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de orgulloso est&aacutes de la expresi&oacuten? Ni un pelo de tonto.",
	    "&middot; Vas a una revisi&oacuten m&eacutdica para hacerte unos an&aacutelisis est&aacutendar, y al recibir los resultados tu m&eacutedico te dice que te quedan 6 meses DE VIDA con pelo &iquestQu&eacute haces?",
	    "&middot; &iquestCu&aacutel es el pa&iacutes con m&aacutes alopecia a nivel mundial?",
	    "&middot; &iquestDebes de ponerte un gorro de ba&ntildeo en una piscina p&uacuteblica siendo calvo?"    		
		];
	

	var respuestas = [
		 ["Aceptas que ha llegado la hora y te marcas un Britney",
	      "Buscas en Google informaci&oacuten sobre Turqu&iacutea",
	      "Te mientes a ti mismo diciendo que no pasa nada",
	      "Comienzas a llevar gorras y sombreros"],
	      
		 ["No hay ninguna. Ser calv@ es una desgracia",
		 "Poder usar pelucas. &iexclUn nuevo yo cada d&iacutea!",
		 "La fraternidad que se genera con los que tienen el mismo problema. Entre nostr@a nos entendemos",
		 "El ahorro. Sobretodo en champ&uacute y peluquerias"],
		 
		 ["Nada de acuerdo",
	      "Poco de acuerdo",
	      "Bastante de acuerdo",
	      "Indiscutible. Tan cierto como la calva de Bruce Willis"],
	      
	      ["La verdad duele",
	       "La verdad est&aacute en la calvicie",
	       "Calvicie y verdad",
	       "Calvo de verdad"],
	       
	     ["40% en hombres y 15% en mujeres",
		   "50% en hombres y entre un 30% y 50% en mujeres",
		   "10% en hombres y 7% en mujeres",
		   "70% en hombres y 50% en mujeres"],
		   
		   
		  ["Te haces un tatuaje tribal super agresivo para que la gente entienda que no te la dan con queso",
		   "Nada de tatus. Mi calva es sagrada",
		   "Te tat&uacuteas una tela de ara&nacutea. THUG LIFE hasta la muerte",
		   "Te haces uno estilo floral. Muy TIKI"],
		   
		   ["Vin Diesel",
		    "Dwayne Johnson",
		   "John Malkovich",
		   "Samuel L. Jackson"],

		  ["Una bonita gorra Herringbone. Un classic c&aacutelvico",
		  "Una buena peluca Rastafari con gorrito incluido",
		  "Una m&iacutetica gorra de visera plana con el logo de alg&uacuten equipo de la NBA que no conoces",
		  "Una gorrita con h&eacutelice multicolor o en su defecto un parasol tambi&eacuten multicolor"], 
		  
	      ["Todo el mundo sabe que a la Herrignbone no le sobresale la visera, y a la Gatsby Hatteras le suele sobresalir un bot&oacuten en el centro",
	      "La Herrignbone es para chulear y la Gatsby Hatteras para hacerse respetar",
	      "No existe diferencia alguna, es la misma gorra pero se le llama de forma diferente seg&uacuten donde preguntes",
	      "Se diferencian por el tejido. La Herrignbone suele ser de algod&oacuten, y la Gatsby Hatteras de cuero"],
		   
	      ["T&eacutecnico de sonido",
	      "Actor porno",
	      "Presidente de Svenson",
	      "No hay trabajos NO Calvic friendly"],

	     ["Es puramente decorativo. La cabeza es la parte del cuerpo que m&aacutes calor desprende y no har&iacutea falta",
	     "Hasta cierto punto. En climas muy fr&iacuteos s&iacute",
	     "Indispensable. El cuidado c&aacutelvico es importante",
	     "No. Por mucho frio que haga, al ponerte un gorro en la cabeza niegas la transpiraci&oacuten c&aacutelvica"],
	   
	     ["Natalie Portman en V de Vendetta",
	     "Charlize Theron en Mad Max 4: Fury Road",
	     "Sigourney Weaver en Alien 3",
	     "Deni Moore en G.I Jane"], 
	     
	      ["Una loci&oacuten crece pelo que causa furor en Turqu&iacutea",
	      "Una loci&oacuten hidratante para tener una calva suave y sana",
	      "Una loci&oacuten abrillantadora que acent&uacutea los brillos de la calva",
	      "Una loci&oacuten transparente que resalta bajo luz negra. Ideal para discotecas y raves"],
	      
	      ["La tapa calva es lo m&aacutes vergonzoso que puedes hacer. Ten un poco de dignidad y hazte el favor",
	      "Puede. Si el peluqu&iacuten es de mala calidad, next",
	      "Bastante. Una tapa calva bien llevada puede dar el pego",
	      "Absolutamente. La tapa calva es pelo real tuyo 100%, mucho mejor que llevar pelo falso"],
	      
	      
	     [ "La peluca es para mujeres y el peluqu&iacuten para hombres",
	      "Las pelucas cubren la totalidad de la cabeza y el peluqu&iacuten solo cubre la parte delantera de la cabeza",
	      "El peluqu&iacuten y la peluca es lo mismo, pero la palabra peluqu&iacuten tiene mejor sonoridad",
	      "El peluqu&iacuten es una peluca de talla peque&nacutea"],
	      
	     ["Turqu&iacutea",
	      "China",
	      "Rusia",
	      "Jap&oacuten"],
	      
	      ["Me resulta ofensiva. La alopecia es un tema serio",
	      "Es solo una expresi&oacuten. Me resulta indiferente",
	      "Me encanta. Es la hostia para romper el hielo en eventos sociales",
	     "Conoc&iacute a la madre/padre de mis hijos con la bromita de decir que no tengo ni un pelo de tonto/a. Se lo debo todo a esa expresi&oacuten"],
	  
	     
	     ["Pides la excedencia en el curro y te marcas un YOLO (You Only Live Once) en el sudeste Asi&aacutetico. T&uacute y tu pelo juntos, por &uacuteltima vez",
	    "Pillas un depresi&oacuten de caballo y piensas en pasar los &uacuteltimos meses en una casa rural alejado de todo",
	     "Te apuntas a un gimnasio para ponerte rocoso/a porque sabes lo que te espera",
	     "Niegas la situaci&oacuten y te chutas Minoxidil en vena. La esperanza es lo &uacuteltimo que se pierde"],
	    
	     ["Espa&ntildea",
	     "Francia",
	     "Holanda",
	     "Rep&uacuteblica Checa"],
	     
	     
	    [ "Claramente. Son sus costumbres y hay que respetarlas",
	     "Si no hay pelo no tiene ning&uacuten sentido hacerlo &iquestQu&eacute funci&oacuten cumple el gorro?",
	     "Solo si va a juego con mi ba&ntildeador",
	     "Ning&uacuten no calvo me va a obligar a cumplir una norma dise&ntildeada para no calvos"]
	];


var puntuaciones = [
		
	    ["respuesta10pts",
	    "respuesta5pts",
	    "respuesta1pts",
	    "respuesta2pts"],
	    
	    [
		 "respuesta1pts",
		 "respuesta5pts",
		 "respuesta2pts",
		"respuesta10pts"],
		
		["respuesta1pts",
		"respuesta2pts",
		"respuesta5pts",
		"respuesta10pts"],
	    
		["respuesta2pts",
		"respuesta5pts",
		"respuesta10pts",
		"respuesta1pts"],
	    
		["respuesta5pts",
		"respuesta10pts",
		"respuesta1pts",
		"respuesta2pts"],
	    
		["respuesta2pts",
		"respuesta10pts",
		"respuesta1pts",
		"respuesta5pts"],
	    
		["respuesta10pts",
		"respuesta2pts",
		"respuesta1pts",
		"respuesta5pts"],
		
		["respuesta10pts",
		"respuesta5pts",
		"respuesta1pts",
		"respuesta2pts"],
			
		["respuesta1pts",
		"respuesta2pts",
		"respuesta5pts",
		"respuesta10pts"],

		["respuesta1pts",
		"respuesta5pts",
		"respuesta10pts",
		"respuesta2pts"],
		
		["respuesta5pts",
		"respuesta1pts",
		"respuesta2pts",
		"respuesta10pts"],
		
		["respuesta1pts",
		"respuesta10pts",
		"respuesta2pts",
		"respuesta5pts"],
			
		["respuesta10pts",
		"respuesta5pts",
		"respuesta2pts",
		"respuesta1pts"],
		
		["respuesta5pts",
		"respuesta10pts",
		"respuesta1pts",
		"respuesta2pts"],		
		
		["respuesta2pts",
		"respuesta10pts",
		"respuesta1pts",
		"respuesta5pts"],
		
		["respuesta1pts",
		"respuesta2pts",
		"respuesta10pts",
		"respuesta5pts"],
			
		["respuesta10pts",
		"respuesta2pts",
		"respuesta5pts",
		"respuesta1pts"],	
		
		["respuesta5pts",
		"respuesta2pts",
		"respuesta1pts",
		"respuesta10pts"],

		["respuesta1pts",
		"respuesta10pts",
		"respuesta1pts",
		"respuesta5pts"]			
		
	];

	var puntosTotal = 0;
	var noRepe = false;
	var preguntas5= [];
	var numero;
	numero = Math.floor(Math.random()*preguntas.length);
	preguntas5[0] = numero;	
	var i = 1;	
	while (i < 5){
		numero = Math.floor(Math.random()*preguntas5.length);
		preguntas5[i] = numero;	

		do{
			if (preguntas5.lastIndexOf(numero,i-1) == -1){
				noRepe = true;
				i++;
				break;
			}else{
				noRepe = false;
			}
			numero = Math.floor(Math.random()*preguntas.length);
			preguntas5[i] = numero;
		}while(noRepe == false);
	}

	function resultados() {
	  var puntos = document.getElementById('btnAvanzar');
	  puntos.innerText = "Mostrar resultados calvicos";
	  puntuacion();
	}

	function puntuacion(){
		var el = document.getElementById("btnAvanzar");
		el.addEventListener("click",resultado,false);
		puntuacion2();
	}

	function puntuacion2(id){
		var el = document.getElementById("btnAvanzar");
		el.addEventListener("click",mostrar,false);
		document.getElementById(id).disabled=true;
	}

	function mostrar() {
		  var puntos = document.getElementById('btnAvanzar');
		  puntos.innerText = "Puntos:  " + puntosTotal;
	}

	var a = 0;
	var b = 0;
	var respuesta_puntuacion = [];
	var respuestas_posibles = respuestas[preguntas5[a]];
	respuesta_puntuacion = puntuaciones[preguntas5[b]];

	document.getElementById("pregunta").innerHTML = preguntas[preguntas5[a]];

	document.getElementById("opcion1").innerHTML = respuestas_posibles[0];
	document.getElementById("opcion2").innerHTML = respuestas_posibles[1];
	document.getElementById("opcion3").innerHTML = respuestas_posibles[2];
	document.getElementById("opcion4").innerHTML = respuestas_posibles[3];

	function checkOn(){
		let puntos = 0;
		var contestacion = $("input[type=radio]:checked").val();

		if (respuesta_puntuacion[contestacion -1] == "respuesta10pts"){
			puntos = 10;
		} else if (respuesta_puntuacion[contestacion -1] == "respuesta5pts"){
			puntos = 5;
		} else if (respuesta_puntuacion[contestacion -1] == "respuesta2pts"){
				 puntos =  2;
		} else if (respuesta_puntuacion[contestacion -1] == "respuesta1pts"){
				puntos++;
		}

		b++;
		respuesta_puntuacion = puntuaciones[preguntas5[b]];
		puntosTotal += puntos;
		
		var total = 0;
		total = (<%= session.getAttribute("puntuacion") %> + (puntosTotal));
		
		$(document).ready(function(){
		  $("#btnAvanzar").click(function(){
		    $("#puntua").val(total);
		  });
		});
	}
	
	function siguiente(){
		if (a<=3){
			a++;
		}else{
			a++;
			resultados();
		}
	
		respuestas_posibles = respuestas[preguntas5[a]];
	
		document.getElementById("pregunta").innerHTML = preguntas[preguntas5[a]];
		
		document.getElementById("opcion1").innerHTML = respuestas_posibles[0];
		document.getElementById("opcion2").innerHTML = respuestas_posibles[1];
		document.getElementById("opcion3").innerHTML = respuestas_posibles[2];
		document.getElementById("opcion4").innerHTML = respuestas_posibles[3];
	}
	</script>
  </body>
</html>