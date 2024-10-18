import os
from funciones import PrepararCuestionario, Instrucciones, Salida

def main():
    while True:
        print("*******************************************************")
        print("Hola, bienvenido a la TRIVIA DEL DRAGÓN")
        print("*******************************************************")
        print("¿Qué deseas hacer?\n1.Iniciar la trivia.\n2. Ver instrucciones.\n3. Salir\n")

        decision=0
        while decision <=0 or decision>3:
            decision=int(input())

        if decision==1:
            PrepararCuestionario()
            continuar=input("\nDeseas volver a presentar la TRIVIA DEL DRAGÓN?(si/no)\n")
            if continuar=="si":
                os.system("cls")
                main()
            else:
                Salida()
                exit()
        elif decision==2:
            Instrucciones()
        else:
            Salida()
            break
main()
