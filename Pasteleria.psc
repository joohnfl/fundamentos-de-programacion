Algoritmo Pasteleria
    Definir precioTotal, cantidadSnacks Como Real
    Definir eleccionSabor, tipoChoco, nombreTarta Como Cadena
    Definir respuestaSnack, respuestaNombre Como Entero

    precioTotal <- 0

    // Preguntar el sabor de la tarta
    Escribir "Elige el sabor de la tarta: manzana, fresa, chocolate"
    Leer eleccionSabor
    eleccionSabor <- Minusculas(eleccionSabor)

    // Selección de sabor
    Segun eleccionSabor Hacer
        "chocolate":
            Escribir "¿Qué tipo de chocolate deseas? (negro o blanco)"
            Leer tipoChoco
            tipoChoco <- Minusculas(tipoChoco)
            Si tipoChoco = "negro" Entonces
                precioTotal <- 280
            SiNo
                Si tipoChoco = "blanco" Entonces
                    precioTotal <- 300
                SiNo
                    Escribir "Opción no válida, se asignará chocolate negro por defecto."
                    precioTotal <- 280
                FinSi
            FinSi
        "fresa":
            precioTotal <- 250
        "manzana":
            precioTotal <- 200
        De Otro Modo:
            Escribir "Sabor no válido, se asignará tarta de manzana por defecto."
            precioTotal <- 200
    FinSegun

    // Preguntar si se agregan snacks
    Escribir "¿Deseas añadir snacks? Cada uno cuesta $25 (1=Sí, 0=No)"
    Leer respuestaSnack
    Si respuestaSnack = 1 Entonces
        Escribir "¿Cuántos snacks quieres agregar?"
        Leer cantidadSnacks
        precioTotal <- precioTotal + (cantidadSnacks * 25)
    FinSi

    // Preguntar si se personaliza con nombre
    Escribir "¿Deseas personalizar la tarta con un nombre? (+$30) (1=Sí, 0=No)"
    Leer respuestaNombre
    Si respuestaNombre = 1 Entonces
        Escribir "Escribe el nombre que irá en la tarta:"
        Leer nombreTarta
        precioTotal <- precioTotal + 30
    FinSi

    // Mostrar precio final
    Escribir "El precio final de tu tarta es: $", precioTotal
FinAlgoritmo
