Algoritmo ProgramaDeEdad
    Definir edad Como Entero
    Definir input Como Cadena

    Escribir "Ingresa tu edad:"
    Leer input
    edad <- ConvertirAEntero(input)

    Si edad < 18 Entonces
        Escribir "Eres menor de edad."
    SiNo
        Si edad >= 18 Y edad <= 65 Entonces
            Escribir "Eres mayor de edad."
        SiNo
            Escribir "Eres un adulto mayor."
        FinSi
    FinSi
FinAlgoritmo
