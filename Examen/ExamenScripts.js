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
      "5. ¿Cuál es el porcentaje de hombres y mujeres que con la edad sufren alopecia?",
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
