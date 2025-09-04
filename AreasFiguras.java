import javax.swing.JOptionPane;

public class AreasFiguras {
    public static void main(String[] args) {
        String menu = "Cálculo de Áreas\n\n"
                  + "1. Círculo\n"
                    + "2. Triángulo\n"
                    + "3. Rectángulo\n"
                    + "4. Cuadrado\n"
                    + "Elija una opción (1-4):";

        int opcion = Integer.parseInt(JOptionPane.showInputDialog(menu));

        double resultado = 0;
        String mensaje = "";

        switch (opcion) {
            case 1: // circulo
                double radio = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el radio del cuadrado:"));
                resultado = Math.PI * Math.pow(radio, 2);
                mensaje = "El área del circulo es: " + resultado;
                break;

            case 2: // triángulo
                double baseT = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la base del triángulo:"));
                double alturaT = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la altura del triángulo:"));
                resultado = baseT * alturaT;
                mensaje = "El área del triángulo es: " + resultado;
                break;

            case 3: // rectángulo
                double baseR = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la base del rectángulo:"));
                double alturaR = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la altura del rectángulo:"));
                resultado = (baseR * alturaR) / 2;
                mensaje = "El área del rectángulo es: " + resultado;
                break;

            case 4: // cuadrado
                double lado = Double.parseDouble(JOptionPane.showInputDialog("Ingrese un lado del cuadrado:"));
                resultado = lado * lado;
                mensaje = "El área del cuadrado es: " + resultado;
                break;

            default:
                mensaje = "Opción no válida. Debe elegir entre 1 y 4.";
        }

        // Mostrar resultado
        JOptionPane.showMessageDialog(null, mensaje);
    }
}
