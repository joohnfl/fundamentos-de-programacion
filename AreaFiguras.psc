Algoritmo AreasFiguras
		Definir opcion Como Entero
		Definir resultado Como Real
		Definir mensaje Como Cadena
		Definir radio, baseT, alturaT, baseR, alturaR, lado Como Real
		
		Escribir "Cálculo de Áreas"
		Escribir "1. Círculo"
		Escribir "2. Triángulo"
		Escribir "3. Rectángulo"
		Escribir "4. Cuadrado"
		Escribir "Elija una opción (1-4):"
		Leer opcion
		
		resultado <- 0
		mensaje <- ""
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese el radio del círculo:"
				Leer radio
				resultado <- PI * (radio^2)
				mensaje <- "El área del círculo es: " + ConvertirATexto(resultado)
			2:
				Escribir "Ingrese la base del triángulo:"
				Leer baseT
				Escribir "Ingrese la altura del triángulo:"
				Leer alturaT
				resultado <- (baseT * alturaT) / 2
				mensaje <- "El área del triángulo es: " + ConvertirATexto(resultado)
			3:
				Escribir "Ingrese la base del rectángulo:"
				Leer baseR
				Escribir "Ingrese la altura del rectángulo:"
				Leer alturaR
				resultado <- baseR * alturaR
				mensaje <- "El área del rectángulo es: " + ConvertirATexto(resultado)
			4:
				Escribir "Ingrese un lado del cuadrado:"
				Leer lado
				resultado <- lado * lado
				mensaje <- "El área del cuadrado es: " + ConvertirATexto(resultado)
			De Otro Modo:
				mensaje <- "Opción no válida. Debe elegir entre 1 y 4."
		FinSegun
		
		Escribir mensaje
FinAlgoritmo
