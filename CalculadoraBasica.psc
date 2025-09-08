Algoritmo CalculadoraBasica
    Definir numeroA, numeroB, suma, resta, mult Como Entero
    Definir op Como Cadena
    Definir div Como Real
    Definir salida Como Cadena

    Escribir "Escribe el primer número entero:"
    Leer numeroA
    Escribir "Escribe el segundo número entero:"
    Leer numeroB

    Escribir "Selecciona una operación: (+, -, *, /)"
    Leer op

    salida <- ""

    Segun op Hacer
        "+":
            suma <- numeroA + numeroB
            salida <- ConvertirATexto(numeroA) + " + " + ConvertirATexto(numeroB) + " = " + ConvertirATexto(suma)
        "-":
            resta <- numeroA - numeroB
            salida <- ConvertirATexto(numeroA) + " - " + ConvertirATexto(numeroB) + " = " + ConvertirATexto(resta)
        "*":
            mult <- numeroA * numeroB
            salida <- ConvertirATexto(numeroA) + " * " + ConvertirATexto(numeroB) + " = " + ConvertirATexto(mult)
        "/":
            Si numeroB <> 0 Entonces
                div <- numeroA / numeroB
                salida <- ConvertirATexto(numeroA) + " / " + ConvertirATexto(numeroB) + " = " + ConvertirATexto(div)
            SiNo
                salida <- "Error: división entre cero no permitida."
            FinSi
        De Otro Modo:
            salida <- "Operación desconocida. Solo puedes usar: +, -, *, /."
    FinSegun

    Escribir salida
FinAlgoritmo
