Algoritmo CineEntradasYPromociones
    Definir cantidadPersonas, numParejas, individuales Como Entero
    Definir diaSemana Como Cadena
    Definir respuestaMembresia Como Entero
    Definir totalAPagar Como Real
    Definir PRECIO_NORMAL, PRECIO_PROMO_MIERCOLES, PRECIO_PAREJA_JUEVES, DESCUENTO_MEMBRESIA Como Real

    PRECIO_NORMAL <- 50
    PRECIO_PROMO_MIERCOLES <- 30
    PRECIO_PAREJA_JUEVES <- 75
    DESCUENTO_MEMBRESIA <- 0.10

    Escribir "¿Cuántas personas asistirán al cine?"
    Leer cantidadPersonas
    Escribir "Escribe el día de la semana (ej: lunes, martes, ...):"
    Leer diaSemana
    Escribir "¿Tienes membresía? (1 = Sí, 0 = No)"
    Leer respuestaMembresia

    totalAPagar <- 0

    Segun diaSemana Hacer
        "miercoles", "miércoles":
            totalAPagar <- cantidadPersonas * PRECIO_PROMO_MIERCOLES
        "jueves":
            numParejas <- trunc(cantidadPersonas / 2)
            individuales <- cantidadPersonas MOD 2
            totalAPagar <- (numParejas * PRECIO_PAREJA_JUEVES) + (individuales * PRECIO_NORMAL)
        De Otro Modo:
            totalAPagar <- cantidadPersonas * PRECIO_NORMAL
    FinSegun

    Si respuestaMembresia = 1 Entonces
        totalAPagar <- totalAPagar * (1 - DESCUENTO_MEMBRESIA)
    FinSi

    Escribir "El costo total de las entradas es: $", totalAPagar
FinAlgoritmo
