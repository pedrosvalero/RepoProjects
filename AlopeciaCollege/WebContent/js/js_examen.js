const contenedor = document.getElementById("test");
	const botonRes = document.getElementById("boton");
	const resultadoTest = document.getElementById("resultado");
	/*--------------Aquí van las preguntas-------------*/
	const preguntas = [
	  {
	    pregunta:
	      "1. Te levantas un buen día, y al verte frente al espejo, observas que esa pedazo melena tuya empieza a clarear ¿Qué haces?",
	    respuestas: {
	      a: "Aceptas que ha llegado la hora y te marcas un Brtiney",
	      b: "Buscas en Google información sobre Turquía",
	      c: "Te mientes a ti mismo diciendo que no pasa nada",
	      d: "Comienzas a llevar gorras y sombreros",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta: "2. ¿Cuál crees que es la mayor ventaja de ser calv@",
	    respuestas: {
	      a: "No hay ninguna. Ser calv@ es una desgracia",
	      b: "Poder usar pelucas. ¡Un nuevo yo cada día!",
	      c:
	        "La fraternidad que se genera con los que tienen el mismo problema. Entre nostr@a nos entendemos",
	      d: "El ahorro. Sobretodo en champú y peluquerias",
	    },
	    respuesta10pts: "d",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta:
	      "3. Del 1 al 4, siendo 1 el mínimo y 4 el máximo ¿Cómo de acuerdo estás con la siguiente afirmación?: Una calva bien llevada puede aumentar tu Sex-appeal",
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
	      "4. ¿Qué crees que significa el lema de la Alopecia College?: Calvis et Veritas",
	    respuestas: {
	      a: "La verdad duele",
	      b: "La verdad está en la calvicie",
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
	      "5. ¿Cuál es el porcentaje de hombres y mujeres que con la edad sufren alopecia en España?",
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
	      "6. Estás a tope de rebelde. Quieres marcar la diferencia, y buscando una solución a tu alopecia, piensas que un tatuaje en la calva puede ser ese factor x que buscas ¿Qué haces? ",
	    respuestas: {
	      a: "Te haces un tatuaje tribal super agresivo para que la gente entienda que no te la dan con queso.",
	      b: "Nada de tatus. Mi calva es sagrada.",
	      c: "Te tatúas una tela de araña. THUG LIFE hasta la muerte.",
	      d: "Te haces uno estilo floral. Muy TIKI.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "a",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta: 
          "7. ¿Cuál de estos actores calvos crees que es más atractivo?",
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
	      "8. Hoy toca convención de complementos de moda, y quieres impresionar a todo el mundo. ¿Qué te pones?",
	    respuestas: {
	      a: "Una bonita gorra Herringbone. Un classic cálvico.",
	      b: "Una buena peluca Rastafari con gorrito incluido.",
	      c: "Una mítica gorra de visera plana con el logo de algún equipo de la NBA que no conoces.",
	      d: "Una gorrita con hélice multicolor o en su defecto un parasol también multicolor.",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "d",
	    respuesta2pts: "b",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta:
	      "9. Un buen calvo sabe diferenciar una gorra Herrignbone de una gorra Gatsby Hatteras ¿En qué se diferencian?",
	    respuestas: {
	      a: "odo el mundo sabe que a la Herrignbone no le sobresale la visera, y a la Gatsby Hatteras le suele sobresalir un botón en el centro.",
	      b: "La Herrignbone es para chulear y la Gatsby Hatteras para hacerse respetar.",
	      c: "No existe diferencia alguna, es la misma gorra pero se le llama de forma diferente según donde preguntes.",
	      d: "Se diferencian por el tejido. La Herrignbone suele ser de algodón, y la Gatsby Hatteras de cuero.",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta:
	      "10. ¿Cuál de estos trabajos no es Calvic friendly?",
	    respuestas: {
	      a: "Técnico de sonido.",
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
	      "11. ¿Es recomendable en invierno el uso de gorros para evitar resfriados?",
	    respuestas: {
	      a: "Es puramente decorativo. La cabeza es la parte del cuerpo que más calor desprende y no haría falta.",
	      b: "Hasta cierto punto. En climas muy fríos sí.",
	      c: "Indispensable. El cuidado cálvico es importante.",
	      d: "No. Por mucho frio que haga, al ponerte un gorro en la cabeza niegas la transpiración cálvica.",
	    },
	    respuesta10pts: "c",
	    respuesta5pts: "b",
	    respuesta2pts: "d",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta: 
          "12. Diriges la nueva revista Vogue pero con temática cálvica y quieres hacer un artículo sobre actrices que se tuvieron que rapar el pelo para un papel. ¿A quién pones en la portada?",
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
	      "13. Entras en un herbolario y en una sección ves un cartel que indica: Lociones para la calva ¿Qué loción te llevas?",
	    respuestas: {
	      a: "Una loción crece pelo que causa furor en Turquía.",
	      b: "Una loción hidratante para tener una calva suave y sana.",
	      c: "Una loción abrillantadora que acentúa los brillos de la calva.",
	      d: "Una loción transparente que resalta bajo luz negra. Ideal para discotecas y raves.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "d",
	    respuesta2pts: "c",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta:
	      "14. Del 1 al 4, siendo 1 el mínimo y 4 el máximo ¿Cómo de acuerdo estás con la siguiente afirmación?: Antes tapa calva que peluquín.",
	    respuestas: {
	      a: "1 - La tapa calva es lo más vergonzoso que puedes hacer. Ten un poco de dignidad y hazte el favor.",
	      b: "2 - Puede. Si el peluquín es de mala calidad, next.",
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
	      "15. ¿Cuál es la diferencia entre un peluquín y una peluca?",
	    respuestas: {
	      a: "La peluca es para mujeres y el peluquín para hombres.",
	      b: "Las pelucas cubren la totalidad de la cabeza y el peluquín solo cubre la parte delantera de la cabeza.",
	      c: "El peluquín y la peluca es lo mismo, pero la palabra peluquín tiene mejor sonoridad.",
	      d: "El peluquín es una peluca de talla pequeña.",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "a",
	    respuesta2pts: "d",
	    respuesta1pts: "c",
	  },
        
         {
	    pregunta:
	      "16. ¿Cuál es el país con menos alopecia a nivel mundial?",
	    respuestas: {
	      a: "Turquía",
	      b: "China",
	      c: "Rusia",
	      d: "Japón",
	    },
	    respuesta10pts: "b",
	    respuesta5pts: "d",
	    respuesta2pts: "a",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta: 
          "17. Del 1 al 4, siendo 1 el mínimo y 4 el máximo ¿Cómo de orgulloso estás de la expresión?: Ni un pelo de tonto.",
	    respuestas: {
	      a: "1 - Me resulta ofensiva. La alopecia es un tema serio.",
	      b: "2 - Es solo una expresión. Me resulta indiferente.",
	      c:
	        "3 - Me encanta. Es la hostia para romper el hielo en eventos sociales.",
	      d: "4 - Conocí a la madre/padre de mis hijos con la bromita de decir que no tengo ni un pelo de tonto/a. Se lo debo todo a esa expresión.",
	    },
	    respuesta10pts: "c",
	    respuesta5pts: "d",
	    respuesta2pts: "b",
	    respuesta1pts: "a",
	  },

	  {
	    pregunta:
	      "18. Vas a una revisión médica para hacerte unos análisis estándar, y al recibir los resultados tu médico te dice que te quedan 6 meses DE VIDA con pelo ¿Qué haces?",
	    respuestas: {
	      a: "Pides la excedencia en el curro y te marcas un YOLO (You Only Live Once) en el sudeste Asiático. Tú y tu pelo juntos, por última vez.",
	      b: "Pillas un depresión de caballo y piensas en pasar los últimos meses en una casa rural alejado de todo.",
	      c: "Te apuntas a un gimnasio para ponerte rocoso/a porque sabes lo que te espera.",
	      d: "Niegas la situación y te chutas Minoxidil en vena. La esperanza es lo último que se pierde.",
	    },
	    respuesta10pts: "a",
	    respuesta5pts: "c",
	    respuesta2pts: "b",
	    respuesta1pts: "d",
	  },

	  {
	    pregunta:
	      "19. ¿Cuál es el país con más alopecia a nivel mundial?",
	    respuestas: {
	      a: "España",
	      b: "Francia",
	      c: "Holanda",
	      d: "República Checa",
	    },
	    respuesta10pts: "d",
	    respuesta5pts: "a",
	    respuesta2pts: "b",
	    respuesta1pts: "c",
	  },

	  {
	    pregunta:
	      "20. ¿Debes de ponerte un gorro de baño en una piscina pública siendo calvo?",
	    respuestas: {
	      a: "Claramente. Son sus costumbres y hay que respetarlas.",
	      b: "Si no hay pelo no tiene ningún sentido hacerlo ¿Qué función cumple el gorro?",
	      c: "Solo si va a juego con mi bañador.",
	      d: "Ningún no calvo me va a obligar a cumplir una norma diseñada para no calvos.",
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