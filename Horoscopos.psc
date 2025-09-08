Algoritmo Horoscopos
    Definir diaNacimiento, mesNacimiento Como Entero
    Definir signoZodiacal Como Cadena

    Escribir "Escribe el día de tu nacimiento (1-31): "
    Leer diaNacimiento
    Escribir "Escribe el mes de tu nacimiento (1-12): "
    Leer mesNacimiento

    signoZodiacal <- ""

    Segun mesNacimiento Hacer
        12:  // Diciembre
            Si diaNacimiento >= 1 Y diaNacimiento <= 21 Entonces
                signoZodiacal <- "Sagitario"
            SiNo
                signoZodiacal <- "Capricornio"
            FinSi
        11:  // Noviembre
            Si diaNacimiento >= 1 Y diaNacimiento <= 21 Entonces
                signoZodiacal <- "Escorpio"
            SiNo
                signoZodiacal <- "Sagitario"
            FinSi
        10:  // Octubre
            Si diaNacimiento >= 1 Y diaNacimiento <= 22 Entonces
                signoZodiacal <- "Libra"
            SiNo
                signoZodiacal <- "Escorpio"
            FinSi
        9:  // Septiembre
            Si diaNacimiento >= 1 Y diaNacimiento <= 22 Entonces
                signoZodiacal <- "Virgo"
            SiNo
                signoZodiacal <- "Libra"
            FinSi
        8:  // Agosto
            Si diaNacimiento >= 1 Y diaNacimiento <= 22 Entonces
                signoZodiacal <- "Leo"
            SiNo
                signoZodiacal <- "Virgo"
            FinSi
        7:  // Julio
            Si diaNacimiento >= 1 Y diaNacimiento <= 22 Entonces
                signoZodiacal <- "Cáncer"
            SiNo
                signoZodiacal <- "Leo"
            FinSi
        6:  // Junio
            Si diaNacimiento >= 1 Y diaNacimiento <= 20 Entonces
                signoZodiacal <- "Géminis"
            SiNo
                signoZodiacal <- "Cáncer"
            FinSi
        5:  // Mayo
            Si diaNacimiento >= 1 Y diaNacimiento <= 20 Entonces
                signoZodiacal <- "Tauro"
            SiNo
                signoZodiacal <- "Géminis"
            FinSi
        4:  // Abril
            Si diaNacimiento >= 1 Y diaNacimiento <= 19 Entonces
                signoZodiacal <- "Aries"
            SiNo
                signoZodiacal <- "Tauro"
            FinSi
        3:  // Marzo
            Si diaNacimiento >= 1 Y diaNacimiento <= 20 Entonces
                signoZodiacal <- "Piscis"
            SiNo
                signoZodiacal <- "Aries"
            FinSi
        2:  // Febrero
            Si diaNacimiento >= 1 Y diaNacimiento <= 18 Entonces
                signoZodiacal <- "Acuario"
            SiNo
                signoZodiacal <- "Piscis"
            FinSi
        1:  // Enero
            Si diaNacimiento >= 1 Y diaNacimiento <= 19 Entonces
                signoZodiacal <- "Capricornio"
            SiNo
                signoZodiacal <- "Acuario"
            FinSi
        De Otro Modo:
            signoZodiacal <- "Mes ingresado no válido."
    FinSegun

    Escribir "Según tu fecha de nacimiento, tu signo es: ", signoZodiacal
FinAlgoritmo
