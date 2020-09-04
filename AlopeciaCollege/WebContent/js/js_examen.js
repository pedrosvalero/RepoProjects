const contenedor = document.getElementById("test");
	const botonRes = document.getElementById("boton");
	const resultadoTest = document.getElementById("resultado");
	/*--------------Aquí van las preguntas-------------*/
	const preguntas = [
	  {
	    pregunta:
	      "1. Te levantas un buen d&iacutea, y al verte frente al espejo, observas que esa pedazo melena tuya empieza a clarear &iquestQu&eacute haces?",
	    respuestas: {
	      a: "Aceptas que ha llegado la hora y te marcas un Britney",
	      b: "Buscas en Google informaci&oacuten sobre Turqu&iacutea",
	      c: "Te mientes a ti mismo diciendo que no pasa nada",
	      d: "Comienzas a llevar gorras y sombreros",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta: "2. &iquestCu&aacutel crees que es la mayor ventaja de ser calv@",
	    respuestas: {
	      a: "No hay ninguna. Ser calv@ es una desgracia",
	      b: "Poder usar pelucas. &iexclUn nuevo yo cada d&iacutea!",
	      c:"La fraternidad que se genera con los que tienen el mismo problema. Entre nostr@a nos entendemos",
	      d: "El ahorro. Sobretodo en champ&uacute y peluquerias",
	    },
	    respuesta10pts: "d",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta:
	      "3. Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de acuerdo est&aacutes con la siguiente afirmaci&oacuten?: Una calva bien llevada puede aumentar tu Sex-appeal",
	    respuestas: {
	      a: "1 - Nada de acuerdo",
	      b: "2 - Poco de acuerdo",
	      c: "3 - Bastante de acuerdo",
	      d: "4 - Indiscutible. Tan cierto como la calva de Bruce Willis",
	    },
	    respuesta10pts: "d",
	    respuesta5pts: "c",
	    respuesta2pts: "b",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta:
	      "4. &iquestQu&eacute crees que significa el lema de la Alopecia College?: Calvis et Veritas",
	    respuestas: {
	      a: "La verdad duele",
	      b: "La verdad est&aacute en la calvicie",
	      c: "Calvicie y verdad",
	      d: "Calvo de verdad",
	    },
	    respuesta10pts: "c",
	    respuesta5pts: "b",
	    respuesta2pts: "a",
	    respuesta1pts: "d",
	  },

	  {
	    pregunta:
	      "5. &iquestCu&aacutel es el porcentaje de hombres y mujeres que con la edad sufren alopecia en Espa&ntildea?",
	    respuestas: {
	      a: "40% en hombres y 15% en mujeres",
	      b: "50% en hombres y entre un 30% y 50% en mujeres",
	      c: "10% en hombres y 7% en mujeres",
	      d: "70% en hombres y 50% en mujeres",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "a",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },
        
         {
	    pregunta:
	      "6. Est&aacutes a tope de rebelde. Quieres marcar la diferencia, y buscando una soluci&oacuten a tu alopecia, piensas que un tatuaje en la calva puede ser ese factor x que buscas &iquestQu&eacute haces? ",
	    respuestas: {
	      a: "Te haces un tatuaje tribal super agresivo para que la gente entienda que no te la dan con queso.",
	      b: "Nada de tatus. Mi calva es sagrada.",
	      c: "Te tat&uacuteas una tela de ara&nacutea. THUG LIFE hasta la muerte.",
	      d: "Te haces uno estilo floral. Muy TIKI.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "a",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta: 
          "7. &iquestCu&aacutel de estos actores calvos crees que es m&aacutes atractivo?",
	    respuestas: {
	      a: "Vin Diesel.",
	      b: "Dwayne Johnson.",
	      c: "John Malkovich.",
	      d: "Samuel L. Jackson.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "d",
	    respuesta2pts: "a",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta:
	      "8. Hoy toca convenci&oacuten de complementos de moda, y quieres impresionar a todo el mundo. &iquestQu&eacute te pones?",
	    respuestas: {
	      a: "Una bonita gorra Herringbone. Un classic c&aacutelvico.",
	      b: "Una buena peluca Rastafari con gorrito incluido.",
	      c: "Una m&iacutetica gorra de visera plana con el logo de alg&uacuten equipo de la NBA que no conoces.",
	      d: "Una gorrita con h&eacutelice multicolor o en su defecto un parasol tambi&eacuten multicolor.",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "d",
	    respuesta2pts: "b",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta:
	      "9. Un buen calvo sabe diferenciar una gorra Herrignbone de una gorra Gatsby Hatteras &iquestEn qu&eacute se diferencian?",
	    respuestas: {
	      a: "Todo el mundo sabe que a la Herrignbone no le sobresale la visera, y a la Gatsby Hatteras le suele sobresalir un bot&oacuten en el centro.",
	      b: "La Herrignbone es para chulear y la Gatsby Hatteras para hacerse respetar.",
	      c: "No existe diferencia alguna, es la misma gorra pero se le llama de forma diferente seg&uacuten donde preguntes.",
	      d: "Se diferencian por el tejido. La Herrignbone suele ser de algod&oacuten, y la Gatsby Hatteras de cuero.",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta:
	      "10. &iquestCu&aacutel de estos trabajos no es Calvic friendly?",
	    respuestas: {
	      a: "T&eacutecnico de sonido.",
	      b: "Actor porno.",
	      c: "Presidente de Svenson.",
	      d: "No hay trabajos NO Calvic friendly.",
	    },
	    respuesta10pts: "d",
	    respuesta5pts: "c",
	    respuesta2pts: "b",
	    respuesta1pts: "a",
	  },
        
         {
	    pregunta:
	      "11. &iquestEs recomendable en invierno el uso de gorros para evitar resfriados?",
	    respuestas: {
	      a: "Es puramente decorativo. La cabeza es la parte del cuerpo que m&aacutes calor desprende y no har&iacutea falta.",
	      b: "Hasta cierto punto. En climas muy fr&iacuteos s&iacute.",
	      c: "Indispensable. El cuidado c&aacutelvico es importante.",
	      d: "No. Por mucho frio que haga, al ponerte un gorro en la cabeza niegas la transpiraci&oacuten c&aacutelvica.",
	    },
	    respuesta10pts: "c",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta: 
          "12. Diriges la nueva revista Vogue pero con tem&aacutetica c&aacutelvica y quieres hacer un art&iacuteculo sobre actrices que se tuvieron que rapar el pelo para un papel. &iquestA qui&eacuten pones en la portada?",
	    respuestas: {
	      a: "Natalie Portman en V de Vendetta.",
	      b: "Charlize Theron en Mad Max 4: Fury Road.",
	      c: "Sigourney Weaver en Alien 3.",
	      d: "Deni Moore en G.I Jane.",
	    },
	    respuesta10pts: "d",
	    respuesta5pts: "a",
	    respuesta2pts: "c",
	    respuesta1pts: "b",
	  },

	  {
	    pregunta:
	      "13. Entras en un herbolario y en una secci&oacuten ves un cartel que indica: Lociones para la calva &iquestQu&eacute loci&oacuten te llevas?",
	    respuestas: {
	      a: "Una loci&oacuten crece pelo que causa furor en Turqu&iacutea.",
	      b: "Una loci&oacuten hidratante para tener una calva suave y sana.",
	      c: "Una loci&oacuten abrillantadora que acent&uacutea los brillos de la calva.",
	      d: "Una loci&oacuten transparente que resalta bajo luz negra. Ideal para discotecas y raves.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "d",
	    respuesta2pts: "c",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta:
	      "14. Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de acuerdo est&aacutes con la siguiente afirmaci&oacuten?: Antes tapa calva que peluqu&iacuten.",
	    respuestas: {
	      a: "1 - La tapa calva es lo m&aacutes vergonzoso que puedes hacer. Ten un poco de dignidad y hazte el favor.",
	      b: "2 - Puede. Si el peluqu&iacuten es de mala calidad, next.",
	      c: "3 - Bastante. Una tapa calva bien llevada puede dar el pego.",
	      d: "4 - Absolutamente. La tapa calva es pelo real tuyo 100%, mucho mejor que llevar pelo falso.",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "b",
	    respuesta2pts: "c",
	    respuesta1pts: "d",
	  },

	  {
	    pregunta:
	      "15. &iquestCu&aacutel es la diferencia entre un peluqu&iacuten y una peluca?",
	    respuestas: {
	      a: "La peluca es para mujeres y el peluqu&iacuten para hombres.",
	      b: "Las pelucas cubren la totalidad de la cabeza y el peluqu&iacuten solo cubre la parte delantera de la cabeza.",
	      c: "El peluqu&iacuten y la peluca es lo mismo, pero la palabra peluqu&iacuten tiene mejor sonoridad.",
	      d: "El peluqu&iacuten es una peluca de talla peque&nacutea.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "a",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },
        
         {
	    pregunta:
	      "16. &iquestCu&aacutel es el pa&iacutes con menos alopecia a nivel mundial?",
	    respuestas: {
	      a: "Turqu&iacutea",
	      b: "China",
	      c: "Rusia",
	      d: "Jap&oacuten",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "d",
	    respuesta2pts: "a",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta: 
          "17. Del 1 al 4, siendo 1 el m&iacutenimo y 4 el m&aacuteximo &iquestC&oacutemo de orgulloso est&aacutes de la expresi&oacuten?: Ni un pelo de tonto.",
	    respuestas: {
	      a: "1 - Me resulta ofensiva. La alopecia es un tema serio.",
	      b: "2 - Es solo una expresi&oacuten. Me resulta indiferente.",
	      c:
	        "3 - Me encanta. Es la hostia para romper el hielo en eventos sociales.",
	      d: "4 - Conoc&iacute a la madre/padre de mis hijos con la bromita de decir que no tengo ni un pelo de tonto/a. Se lo debo todo a esa expresi&oacuten.",
	    },
	    respuesta10pts: "c",
	    respuesta5pts: "d",
	    respuesta2pts: "b",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta:
	      "18. Vas a una revisi&oacuten m&eacutdica para hacerte unos an&aacutelisis est&aacutendar, y al recibir los resultados tu m&eacutedico te dice que te quedan 6 meses DE VIDA con pelo &iquestQu&eacute haces?",
	    respuestas: {
	      a: "Pides la excedencia en el curro y te marcas un YOLO (You Only Live Once) en el sudeste Asi&aacutetico. T&uacute y tu pelo juntos, por &uacuteltima vez.",
	      b: "Pillas un depresi&oacuten de caballo y piensas en pasar los &uacuteltimos meses en una casa rural alejado de todo.",
	      c: "Te apuntas a un gimnasio para ponerte rocoso/a porque sabes lo que te espera.",
	      d: "Niegas la situaci&oacuten y te chutas Minoxidil en vena. La esperanza es lo &uacuteltimo que se pierde.",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "c",
	    respuesta2pts: "b",
	    respuesta1pts: "d",
	  },

	  {
	    pregunta:
	      "19. &iquestCu&aacutel es el pa&iacutes con m&aacutes alopecia a nivel mundial?",
	    respuestas: {
	      a: "Espa&ntildea",
	      b: "Francia",
	      c: "Holanda",
	      d: "Rep&uacuteblica Checa",
	    },
	    respuesta10pts: "d",
	    respuesta5pts: "a",
	    respuesta2pts: "b",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta:
	      "20. &iquestDebes de ponerte un gorro de ba&ntildeo en una piscina p&uacuteblica siendo calvo?",
	    respuestas: {
	      a: "Claramente. Son sus costumbres y hay que respetarlas.",
	      b: "Si no hay pelo no tiene ning&uacuten sentido hacerlo &iquestQu&eacute funci&oacuten cumple el gorro?",
	      c: "Solo si va a juego con mi ba&ntildeador.",
	      d: "Ning&uacuten no calvo me va a obligar a cumplir una norma dise&ntildeada para no calvos.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "d",
	    respuesta2pts: "b",
	    respuesta1pts: "a",
	  },
	];
	/*----------Aquí van las funciones---------*/

	function mostrarTest() {
	  const preguntasYrespuestas = [];

	  preguntas.forEach((preguntaActual, numeroDePregunta) => {
	    const respuestas = [];
	    for (letraRspuesta in preguntaActual.respuestas) {
	      respuestas.push(
	        `<label>
	                <input type="radio" name="${numeroDePregunta}" value="${letraRspuesta}">
	                ${letraRspuesta} : ${preguntaActual.respuestas[letraRspuesta]}
	            
	            </label>`
	      );
	    }
	    preguntasYrespuestas.push(
	      `<div class="cuestion"> ${preguntaActual.pregunta} </div>
	            <div class="respuestas"> ${respuestas.join("")} </div>
	            `
	    );
	  });
	  contenedor.innerHTML = preguntasYrespuestas.join("");
	}

	mostrarTest();

	function mostrarResultado() {
	  const respuestas = contenedor.querySelectorAll(" .respuestas");
	  let respuestaCorrecta = 0;

	  preguntas.forEach((preguntaActual, numeroDePregunta) => {
	    const todasLasRespuestas = respuestas[numeroDePregunta];
	    const checkboxRespuestas = `input[name='${numeroDePregunta}']:checked`;
	    const respuestaElegida = (
	      todasLasRespuestas.querySelector(checkboxRespuestas) || {}
	    ).value;
	    if (respuestaElegida === preguntaActual.respuesta10pts) {
	      respuestaCorrecta = respuestaCorrecta + 10;
	    } else if (respuestaElegida === preguntaActual.respuesta5pts) {
	      respuestaCorrecta = respuestaCorrecta + 5;
	    } else if (respuestaElegida === preguntaActual.respuesta2pts) {
	      respuestaCorrecta = respuestaCorrecta + 2;
	    } else if (respuestaElegida === preguntaActual.respuesta1pts) {
	      respuestaCorrecta++;
	    }
	  });
	  resultadoTest.innerHTML =
	    "Has calveado los siguientes puntos " + respuestaCorrecta;
	}

	botonRes.addEventListener("click", mostrarResultado);
