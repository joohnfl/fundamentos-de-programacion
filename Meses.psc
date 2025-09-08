Algoritmo Meses
    Definir opcion, cantidadDias Como Entero
    Definir mesNombre Como Cadena
    Definir entrada Como Cadena

    Escribir "Escribe un número de mes entre 1 y 12:"
    Leer entrada

    // Convertir entrada a entero
    opcion <- ConvertirAEntero(entrada)

    mesNombre <- ""
    cantidadDias <- 0

    Si opcion >= 1 Y opcion <= 12 Entonces
        Segun opcion Hacer
            1:
                mesNombre <- "Enero"
                cantidadDias <- 31
            2:
                mesNombre <- "Febrero"
                cantidadDias <- 28
            3:
                mesNombre <- "Marzo"
                cantidadDias <- 31
            4:
                mesNombre <- "Abril"
                cantidadDias <- 30
            5:
                mesNombre <- "Mayo"
                cantidadDias <- 31
            6:
                mesNombre <- "Junio"
                cantidadDias <- 30
            7:
                mesNombre <- "Julio"
                cantidadDias <-
