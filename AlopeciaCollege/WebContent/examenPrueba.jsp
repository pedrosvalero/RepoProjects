<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Examen</title>
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
                    <input class="form-check-input" type="radio" name="alternativas" value="1" ><span
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
                	<button id="btnAvanzar" class="btn btn-primary mt-4">Siguiente pregunta</button>
           		 </div>
        </div>
    </div>
    

	<script>
	var preguntas = [
	    "Te levantas un buen d&iacutea, y al verte frente al espejo, observas que esa pedazo melena tuya empieza a clarear &iquestQu&eacute haces?",
	    "&iquestCu&aacutel crees que es la mayor ventaja de ser calv@",
	    "Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de acuerdo est&aacutes con la siguiente afirmaci&oacuten?: Una calva bien llevada puede aumentar tu Sex-appeal",
	    "&iquestQu&eacute crees que significa el lema de la Alopecia College?: Calvis et Veritas",
	    "&iquestCu&aacutel es el porcentaje de hombres y mujeres que con la edad sufren alopecia en Espa&ntildea?",
	    "Est&aacutes a tope de rebelde. Quieres marcar la diferencia, y buscando una soluci&oacuten a tu alopecia, piensas que un tatuaje en la calva puede ser ese factor x que buscas &iquestQu&eacute haces? ",
        "&iquestCu&aacutel de estos actores calvos crees que es m&aacutes atractivo?",
	    "Hoy toca convenci&oacuten de complementos de moda, y quieres impresionar a todo el mundo. &iquestQu&eacute te pones?",
	    "Un buen calvo sabe diferenciar una gorra Herrignbone de una gorra Gatsby Hatteras &iquestEn qu&eacute se diferencian?",
	    "&iquestCu&aacutel de estos trabajos no es Calvic friendly?",
	    "&iquestEs recomendable en invierno el uso de gorros para evitar resfriados?",
        "Diriges la nueva revista Vogue pero con tem&aacutetica c&aacutelvica y quieres hacer un art&iacuteculo sobre actrices que se tuvieron que rapar el pelo para un papel. &iquestA qui&eacuten pones en la portada?",
	    "Entras en un herbolario y en una secci&oacuten ves un cartel que indica: Lociones para la calva &iquestQu&eacute loci&oacuten te llevas?",
	    "Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de acuerdo est&aacutes con la siguiente afirmaci&oacuten?: Antes tapa calva que peluqu&iacuten.",
	    "&iquestCu&aacutel es la diferencia entre un peluqu&iacuten y una peluca?",
	    "&iquestCu&aacutel es el pa&iacutes con menos alopecia a nivel mundial?",
        "Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de orgulloso est&aacutes de la expresi&oacuten?: Ni un pelo de tonto.",
	    "Vas a una revisi&oacuten m&eacutdica para hacerte unos an&aacutelisis est&aacutendar, y al recibir los resultados tu m&eacutedico te dice que te quedan 6 meses DE VIDA con pelo &iquestQu&eacute haces?",
	    "&iquestCu&aacutel es el pa&iacutes con m&aacutes alopecia a nivel mundial?",
	    "&iquestDebes de ponerte un gorro de ba&ntildeo en una piscina p&uacuteblica siendo calvo?"    		
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
	]
	

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
		"respuesta5pts"],			
		
	]
	
	var puntosTotal;
	var noRepe = false;
	var preguntas5= [];
	var numero;
	var i = 0;
	while (i < 5){
		numero = Math.floor(Math.random()*preguntas.length);
		preguntas5[i] = numero;		
		while (noRepe == false){
			if (preguntas5.indexOf(numero) === -1){
				noRepe = true;
				break;
			}else{
				noRepe = false;
			}
			numero = Math.floor(Math.random()*preguntas.length);
			preguntas5[i] = numero;
		}
		i++;
	}
	
	
	for (i = 0; i<5;i++){
		var respuestas_posibles = respuestas[i];
		var respuesta_puntuacion = puntuaciones[i];
		
		document.getElementById("pregunta").innerHTML = preguntas[indice_aleatorio];
		
		document.getElementById("opcion1").innerHTML = respuestas_posibles[0];
		document.getElementById("opcion2").innerHTML = respuestas_posibles[1];
		document.getElementById("opcion3").innerHTML = respuestas_posibles[2];
		document.getElementById("opcion4").innerHTML = respuestas_posibles[3];
		
		let puntos = 0;
		var contestacion = $("input[type=radio]:checked").val();

		if (respuesta_puntuacion[contestacion -1] == "respuesta10pts"){
			puntos = 10;
		} else if (respuesta_puntuacion[contestacion -1] == "respuesta5pts"){
			puntos = 5;
		} else if (respuesta_puntuacion[contestacion -1] == "respuesta2pts"){
				 puntos =  2;
		} else if (respuesta_puntuacion[contestacion -1]== "respuesta1pts"){
				puntos++;
		}	
		
		puntosTotal +=puntos;
		
	}
		
		//document.getElementById("puntua").innerHTML = puntosTotal;
		//document.getElementById("resultado").innerHTML = puntosTotal;
		
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