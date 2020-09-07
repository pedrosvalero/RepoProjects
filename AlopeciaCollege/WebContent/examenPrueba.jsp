<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery.js"></script>
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->


</head>
<body>


    <div class="container">
        <div class="row mt-4">
            <div class="col">
                <div id="pregunta" class="form-group font-weight-bold"></div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="alternativas" value="1" checked><span
                        id="opcion1"></span>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="alternativas" value="2"><span
                        id="opcion2"></span>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="alternativas" value="3"><span
                        id="opcion3"></span>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="alternativas" value="4"><span
                        id="opcion4"></span>
                </div>
                
                <div id ="resultado" class="form-check"></div>
					<input type="button" value="mirarpuntuacion" onclick="comprobar()"><span id="puntua"></span>
                	<button id="btnAvanzar" class="btn btn-primary mt-4">Siguiente pregunta</button>
                	

           		 </div>
        </div>
    </div>
    
    <div id="respuestas"></div>

	<script>
	var preguntas = [
	    "Te levantas un buen d&iacutea, y al verte frente al espejo, observas que esa pedazo melena tuya empieza a clarear &iquestQu&eacute haces?",
	    " CACA Te levantas un buen d&iacutea, y al verte frente al espejo, observas que esa pedazo melena tuya empieza a clarear &iquestQu&eacute haces?",
	    " PEDO Te levantas un buen d&iacutea, y al verte frente al espejo, observas que esa pedazo melena tuya empieza a clarear &iquestQu&eacute haces?"

		];
	var respuestas = [
		 ["Aceptas que ha llegado la hora y te marcas un Britney",
	      "Buscas en Google informaci&oacuten sobre Turqu&iacutea",
	      "Te mientes a ti mismo diciendo que no pasa nada",
	      "Comienzas a llevar gorras y sombreros"],
		[" CACA Aceptas que ha llegado la hora y te marcas un Britney",
		" CACA Buscas en Google informaci&oacuten sobre Turqu&iacutea",
		 "CACA Te mientes a ti mismo diciendo que no pasa nada",
		"CACA Comienzas a llevar gorras y sombreros"],
	["PEDO Aceptas que ha llegado la hora y te marcas un Britney",
	"PEDO Buscas en Google informaci&oacuten sobre Turqu&iacutea",
	"PEDO Te mientes a ti mismo diciendo que no pasa nada",
	"PEDO Comienzas a llevar gorras y sombreros"]
		
	]
	

	var puntuaciones = [
		
	    ["respuesta10pts",
	    "respuesta5pts",
	    "respuesta2pts",
	    "respuesta1pts"],
	    
	    ["respuesta10pts",
		 "respuesta5pts",
		 "respuesta2pts",
		"respuesta1pts"],
		
		["respuesta10pts",
		"respuesta5pts",
		"respuesta2pts",
		"respuesta1pts"]
	]
	
	

	
	function jugar(){
		var indice_aleatorio = Math.floor(Math.random()*preguntas.length);
		
		var respuestas_posibles = respuestas[indice_aleatorio];
		
		var respuesta_puntuacion = puntuaciones[indice_aleatorio];
		

		
		for (i in respuesta_puntuacion){
			//let puntosTotal;
			let puntos = 0;
			var contestacion = $("input[type=radio]:checked").val();

			if (contestacion == "respuesta10pts"){
				puntos = respuestaCorrecta + 10;
			} else if (contestacion == "respuesta5pts"){
				puntos = respuestaCorrecta + 5;
			} else if (contestacion == "respuesta2pts"){
				  puntos = respuestaCorrecta + 2;
			} else if (contestacion == "respuesta1pts"){
				 puntos++;
			}	
			//puntosTotal += puntos;
		}
		
		
		document.getElementById("pregunta").innerHTML = preguntas[indice_aleatorio];
		
		document.getElementById("opcion1").innerHTML = respuestas_posibles[0];
		document.getElementById("opcion2").innerHTML = respuestas_posibles[1];
		document.getElementById("opcion3").innerHTML = respuestas_posibles[2];
		document.getElementById("opcion4").innerHTML = respuestas_posibles[3];
		
		
		//document.getElementById("puntua").innerHTML = puntosTotal;
		//document.getElementById("resultado").innerHTML = puntosTotal;
		
	}
	
	function comprobar(){
		alert(puntos)
	}
	

	
	</script>
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