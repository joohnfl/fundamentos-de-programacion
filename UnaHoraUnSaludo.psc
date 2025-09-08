Algoritmo UnaHoraUnSaludo
    Definir entrada Como Cadena
    Definir horaActual Como Entero
    Definir saludo Como Cadena

    Escribir "Escribe la hora actual (1 a 24):"
    Leer entrada
    horaActual <- ConvertirAEntero(entrada)

    Si horaActual < 1 O horaActual > 24 Entonces
        Escribir "Error: la hora debe estar entre 1 y 24."
    SiNo
        Segun horaActual Hacer
            1, 2, 3, 4, 5, 22, 23, 24:
                saludo <- "¡Que tengas buenas noches!"
            6, 7, 8, 9, 10, 11, 12:
                saludo <- "¡Buenos días a ti!"
            13, 14, 15, 16, 17, 18, 19, 20, 21:
                saludo <- "¡Buenas tardes!"
            De Otro Modo:
                saludo <- "Hora ingresada no válida."
        FinSegun

        Escribir saludo
    FinSi
FinAlgoritmo
