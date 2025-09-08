Algoritmo CobroDeLlamadas
    Definir tiempo, esDia, esTurno Como Entero
    Definir dia, turno Como Logico
    Definir pago, total, impuesto Como Real

    Escribir "El tiempo de llamada en (minutos): "
    Leer tiempo

    Escribir "El día de hoy es un día hábil (1=si / 0=no): "
    Leer esDia
    Si esDia = 1 Entonces
        dia <- Verdadero
    SiNo
        dia <- Falso
    FinSi

    Escribir "La llamada se realizó en el turno matutino (1=si / 0=no): "
    Leer esTurno
    Si esTurno = 1 Entonces
        turno <- Verdadero
    SiNo
        turno <- Falso
    FinSi

    // Cálculo del pago según el tiempo
    Si tiempo > 8 Entonces
        Si tiempo > 5 Entonces
            Si tiempo > 10 Entonces
                pago <- 5 + 2.4 + 1.4 + (0.5 * (tiempo - 10))
            SiNo
                pago <- 5 + 2.4 + (0.7 * (tiempo - 8))
            FinSi
        SiNo
            pago <- 0.8 * tiempo
        FinSi
    SiNo
        pago <- tiempo
    FinSi

    // Cálculo del impuesto
    Si dia = Verdadero Entonces
        Si turno = Verdadero Entonces
            impuesto <- 0.15
        SiNo
            impuesto <- 0.10
        FinSi
    SiNo
        impuesto <- 0.03
    FinSi

    total <- pago + (pago * impuesto)

    Escribir "El pago a realizar es de: $", total
FinAlgoritmo
