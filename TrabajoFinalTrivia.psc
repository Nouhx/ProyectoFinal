Funcion PrepararCuestionario
	Limpiar Pantalla
	Definir puntaje Como Entero
	Definir puntos Como Real
	puntos<-0
	puntaje<-0
	
	Dimension preguntas[10]
	preguntas[1]<-"�Cu�l es el pa�s m�s grande del mundo por superficie?"
	preguntas[2]<-"�En qu� pa�s se encuentra la Torre Eiffel?"
	preguntas[3]<-"�Cu�l es el pa�s m�s poblado del mundo?"
	preguntas[4]<-"�En qu� pa�s se encuentra la Gran Muralla?"
	preguntas[5]<-"�Cu�l es el pa�s con m�s islas en el mundo?"
	preguntas[6]<-"�En qu� pa�s se celebra el Carnaval de R�o de Janeiro?"
	preguntas[7]<-"�Cu�l es el pa�s m�s peque�o del mundo?"
	preguntas[8]<-"�Qu� pa�s es conocido como la Tierra del Sol Naciente?"
	preguntas[9]<-"�En qu� pa�s se encuentra el r�o Nilo?"
	preguntas[10]<-"�Cu�l es el �nico pa�s que tiene una bandera con solo un color sin ning�n dise�o, emblema o detalle?"
	//
	Dimension opcionesA[10]
	opcionesA[1] <- "a) Canad�"
    opcionesA[2] <- "a) Alemania"
    opcionesA[3] <- "a) India"
    opcionesA[4] <- "a) Jap�n"
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
    opcionesB[6] <- "b) M�xico"
    opcionesB[7] <- "b) Liechtenstein"
    opcionesB[8] <- "b) Jap�n"
    opcionesB[9] <- "b) Sud�n"
    opcionesB[10] <- "b) Vietnam"
	//
	Dimension  opcionesC[10]
	opcionesC[1] <- "c) Estados Unidos"
    opcionesC[2] <- "c) Italia"
    opcionesC[3] <- "c) Estados Unidos"
    opcionesC[4] <- "c) Corea del Sur"
    opcionesC[5] <- "c) Suecia"
    opcionesC[6] <- "c) Brasil"
    opcionesC[7] <- "c) M�naco"
    opcionesC[8] <- "c) Corea del Sur"
    opcionesC[9] <- "c) Etiop�a"
    opcionesC[10] <- "c) Banglad�s"
	//
	Dimension opcionesD[10]
	opcionesD[1] <- "d) Rusia"
    opcionesD[2] <- "d) Espa�a"
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
		Escribir "�Cu�l es la respuesta correcta"
		Leer respuesta
		Limpiar Pantalla
		//
		Si respuesta==respuestasCorrectas[indice] Entonces
			puntaje<-puntaje+1
			Escribir "���Correcto!!!"
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
		Escribir "Excelente, T� eres el guerrero drag�n."
	SiNo
		Si total>=60 y total<100 Entonces
			Escribir "Lo hiciste muy bien, mi querido saltamontes."
		SiNo
			Escribir "Vuelve cuando creas que eres digno de afrontar la pruba del drag�n."
		Fin Si
	Fin Si
Fin Funcion
//
Funcion Instrucciones
	Limpiar Pantalla
	Escribir "�Bienvenido a la Trivia! Responde cada pregunta eligiendo una opci�n."
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
	Escribir "�Qu� deseas hacer?"
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
