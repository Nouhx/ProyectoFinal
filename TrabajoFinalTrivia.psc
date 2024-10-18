Funcion PrepararCuestionario
	Limpiar Pantalla
	Definir puntaje Como Entero
	Definir puntos Como Real
	puntos<-0
	puntaje<-0
	
	Dimension preguntas[10]
	preguntas[1]<-"¿Cuál es el país más grande del mundo por superficie?"
	preguntas[2]<-"¿En qué país se encuentra la Torre Eiffel?"
	preguntas[3]<-"¿Cuál es el país más poblado del mundo?"
	preguntas[4]<-"¿En qué país se encuentra la Gran Muralla?"
	preguntas[5]<-"¿Cuál es el país con más islas en el mundo?"
	preguntas[6]<-"¿En qué país se celebra el Carnaval de Río de Janeiro?"
	preguntas[7]<-"¿Cuál es el país más pequeño del mundo?"
	preguntas[8]<-"¿Qué país es conocido como la Tierra del Sol Naciente?"
	preguntas[9]<-"¿En qué país se encuentra el río Nilo?"
	preguntas[10]<-"¿Cuál es el único país que tiene una bandera con solo un color sin ningún diseño, emblema o detalle?"
	//
	Dimension opcionesA[10]
	opcionesA[1] <- "a) Canadá"
    opcionesA[2] <- "a) Alemania"
    opcionesA[3] <- "a) India"
    opcionesA[4] <- "a) Japón"
    opcionesA[5] <- "a) Indonesia"
    opcionesA[6] <- "a) Argentina"
    opcionesA[7] <- "a) San Marino"
    opcionesA[8] <- "a) China"
    opcionesA[9] <- "a) Egipto"
    opcionesA[10] <- "a) Libia"
	//
	Dimension opcionesB[10]
	opcionesB[1] <- "b) China"
    opcionesB[2] <- "b) Francia"
    opcionesB[3] <- "b) China"
    opcionesB[4] <- "b) China"
    opcionesB[5] <- "b) Filipinas"
    opcionesB[6] <- "b) México"
    opcionesB[7] <- "b) Liechtenstein"
    opcionesB[8] <- "b) Japón"
    opcionesB[9] <- "b) Sudán"
    opcionesB[10] <- "b) Vietnam"
	//
	Dimension  opcionesC[10]
	opcionesC[1] <- "c) Estados Unidos"
    opcionesC[2] <- "c) Italia"
    opcionesC[3] <- "c) Estados Unidos"
    opcionesC[4] <- "c) Corea del Sur"
    opcionesC[5] <- "c) Suecia"
    opcionesC[6] <- "c) Brasil"
    opcionesC[7] <- "c) Mónaco"
    opcionesC[8] <- "c) Corea del Sur"
    opcionesC[9] <- "c) Etiopía"
    opcionesC[10] <- "c) Bangladés"
	//
	Dimension opcionesD[10]
	opcionesD[1] <- "d) Rusia"
    opcionesD[2] <- "d) España"
    opcionesD[3] <- "d) Brasil"
    opcionesD[4] <- "d) Mongolia"
    opcionesD[5] <- "d) Noruega"
    opcionesD[6] <- "d) Portugal"
    opcionesD[7] <- "d) Vaticano"
    opcionesD[8] <- "d) Tailandia"
    opcionesD[9] <- "d) Uganda"
    opcionesD[10] <- "d) Arabia Saudita"
	//
	Dimension respuestasCorrectas[10]
	respuestasCorrectas[1] <- "d"
    respuestasCorrectas[2] <- "b"
    respuestasCorrectas[3] <- "a"
    respuestasCorrectas[4] <- "b"
    respuestasCorrectas[5] <- "c"
    respuestasCorrectas[6] <- "c"
    respuestasCorrectas[7] <- "d"
    respuestasCorrectas[8] <- "b"
    respuestasCorrectas[9] <- "a"
    respuestasCorrectas[10] <- "a"
	//
	Para indice<-1 Hasta 10 Con Paso 1 Hacer
		Escribir indice,". ",preguntas[indice]
		Escribir opcionesA[indice]
		Escribir opcionesB[indice]
		Escribir opcionesC[indice]
		Escribir opcionesD[indice]
		Escribir "¿Cuál es la respuesta correcta"
		Leer respuesta
		Limpiar Pantalla
		//
		Si respuesta==respuestasCorrectas[indice] Entonces
			puntaje<-puntaje+1
			Escribir "¡¡¡Correcto!!!"
			Escribir "Puntaje: ",puntaje
			Escribir ""
		SiNo
			puntaje<-puntaje
			Escribir "Incorrecto!!"
			Escribir "Puntaje: ",puntaje
			Escribir ""
		Fin Si
	Fin Para
	//
	total<-(puntaje/10)*100
	Limpiar Pantalla
	Escribir "Su porcentaje de acierto fue del: ",total,"%"
	//
	Si total==100 Entonces
		Escribir "Excelente, TÚ eres el guerrero dragón."
	SiNo
		Si total>=60 y total<100 Entonces
			Escribir "Lo hiciste muy bien, mi querido saltamontes."
		SiNo
			Escribir "Vuelve cuando creas que eres digno de afrontar la pruba del dragón."
		Fin Si
	Fin Si
Fin Funcion
//
Funcion Instrucciones
	Limpiar Pantalla
	Escribir "¡Bienvenido a la Trivia! Responde cada pregunta eligiendo una opción."
	Escribir "Dale ENTER para continuar."
	Leer enter
	Limpiar Pantalla
	trivia()
Fin Funcion
//
Funcion final
	Limpiar pantalla
	Escribir "Goodbye, my little friend."
	FinAlgoritmo
Fin Funcion
//
Algoritmo trivia
	definir decision como entero
	definir preguntas, opcionesA, opcionesB, opcionesC, opcionesD, respuestasCorrectas, enter Como Caracter
	
	decision<-0
	
	Escribir "Hola, bienvenido a la Trivia"
	Escribir "++++++++++++++++++++++++++++++++++++++++"
	Escribir "¿Qué deseas hacer?"
	Escribir "1. Iniciar juego."
	Escribir "2. Ver instrucciones."
	Escribir "3. Salir."
	Escribir "++++++++++++++++++++++++++++++++++++++++"
	
	Mientras decision<=0 o decision>3 Hacer
		leer decision
	Fin Mientras
	
	Segun decision Hacer
		Caso 1:
			PrepararCuestionario()
		Caso 2:
			Instrucciones()
		Caso 3:
			final()
	Fin Segun
FinAlgoritmo
