import os
#Funcion para mostrar en pantalla las preguntas y opciones de respuesta.
def PrepararCuestionario():
    #variables.
    os.system("cls")
    num=0
    puntaje=0
    #Listas.
    preguntas=["",
           "¿Cuál es el país más grande del mundo por superficie?",
           "¿En qué país se encuentra la Torre Eiffel?",
           "¿Cuál es el país más poblado del mundo?",
           "¿En qué país se encuentra la Gran Muralla?",
           "¿Cuál es el país con más islas en el mundo?",
           "¿En qué país se celebra el Carnaval de Río de Janeiro?",
           "¿Cuál es el país más pequeño del mundo?",
           "¿Qué país es conocido como la Tierra del Sol Naciente?",
           "¿En qué país se encuentra el río Nilo?",
           "¿Cuál es el único país que tiene una bandera con solo un color sin ningún diseño, emblema o detalle?"]

    opcionesA=["","a) Canadá","a) Alemania","a) India","a) Japón","a) Indonesia",
           "a) Argentina","a) San Marino","a) China","a) Egipto","a) Libia"]

    opcionesB=["","b) China","b) Francia","b) China","b) China","b) Filipinas",
           "b) México","b) Liechtenstein","b) Japón","b) Sudán","b) Vietnam"]

    opcionesC=["","c) Estados Unidos","c) Italia","c) Estados Unidos","c) Corea del Sur",
           "c) Suecia","c) Brasil","c) Mónaco","c) Corea del Sur","c) Etiopía",
           "c) Bangladés"]

    opcionesD=["","d) Rusia","d) España","d) Brasil","d) Mongolia","d) Noruega",
           "d) Portugal","d) Vaticano","d) Tailandia","d) Uganda","d) Arabia Saudita"]

    respuestasCorecctas=["","d","b","a","b","c","c","d","b","a","a"]
    #Impresión de preguntas y opciones de respuesta.
    for num in range(10):
        num=num+1
        print(f"{num}.{preguntas[num]}")
        print(f"{opcionesA[num]}")
        print(f"{opcionesB[num]}")
        print(f"{opcionesC[num]}")
        print(f"{opcionesD[num]}")
        respuesta=input("\n¿Cuál es la respuesta correcta?\n")
        os.system("cls")
        #Condicional para sumar los puntos por las respuestas correctas.
        if respuesta==respuestasCorecctas[num]:
            puntaje=puntaje+1
            print(f"¡¡¡CORRECTO!!!\nPuntaje: {puntaje}\n")
        else:
            puntaje=puntaje
            print(f"¡¡¡INCORRECTO!!!\nPuntaje: {puntaje}\n")
    #
    total=(puntaje/10)*100
    os.system("cls")
    print(f"Su porcentaje de acierto fue del: {total}")
    #
    if total==100:
        print("Excelente, tú eres el GUERRERO DRAGÓN.")
    elif total>=60 and total<100:
        print("Lo hiciste muy bien, mi querido SALTAMONTES.")
    else:
        print("Vuelve cuando creas que eres digno de afrontar la prueba del DRAGÓN.")

def Instrucciones():
    os.system("cls")
    print("¡Bienvenido a la Trivia! Responde cada pregunta eligiendo una opción.")
    print("\n1. Asegúrate de entender completamente la pregunta antes de mirar las opciones.")
    print("2. Lee todas las opciones antes de decidir.")
    print("3. Responde las preguntas escribiendo la letra de la respuesta que creas, por favor responde en minúsculas.")
    enter=input("\nDale ENTER para continuar.")
    os.system("cls")

def Salida():
    os.system("cls")
    print("Goodbye, my little friend.")
