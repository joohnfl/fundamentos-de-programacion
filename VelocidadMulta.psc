Algoritmo VelocidadMulta
    Definir vel Como Entero
    Definir textoVel, cumpleanos Como Cadena

    Escribir "Escribe tu velocidad en km/h:"
    Leer textoVel
    vel <- ConvertirAEntero(textoVel)

    Escribir "¿Es tu cumpleaños? (si/no)"
    Leer cumpleanos
    cumpleanos <- Minusculas(cumpleanos)

    Si cumpleanos = "si" Entonces
        Escribir "¡Feliz cumpleaños! No tienes multa 😊"
    SiNo
        Si vel < 60 Entonces
            Escribir "Tu velocidad está bien. No hay multa."
        SiNo
            Si vel <= 80 Entonces
                Escribir "Cuidado! Tienes una multa pequeña."
            SiNo
                Escribir "¡Alto riesgo! Tienes una multa grande."
            FinSi
        FinSi
    FinSi
FinAlgoritmo
