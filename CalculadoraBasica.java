import javax.swing.JOptionPane;

public class CalculadoraBasica {
    public static void main(String[] args) {
        int numeroA = Integer.parseInt(JOptionPane.showInputDialog("Escribe el primer número entero:"));
        int numeroB = Integer.parseInt(JOptionPane.showInputDialog("Escribe el segundo número entero:"));

        String op = JOptionPane.showInputDialog("Selecciona una operación: (+, -, *, /)");

        String salida = "";
        switch (op) {
            case "*":
                int mult = numeroA * numeroB;
                salida = numeroA + " * " + numeroB + " = " + mult;
                break;

            case "/":
                if (numeroB != 0) {
                    double div = (double) numeroA / numeroB;
                    salida = numeroA + " / " + numeroB + " = " + div;
                } else {
                    salida = "Error: división entre cero no permitida.";
                }
                break;

            case "+":
                int suma = numeroA + numeroB;
                salida = numeroA + " + " + numeroB + " = " + suma;
                break;

            case "-":
                int resta = numeroA - numeroB;
                salida = numeroA + " - " + numeroB + " = " + resta;
                break;

            default:
                salida = "Operación desconocida. Solo puedes usar: +, -, *, /.";
        }

        JOptionPane.showMessageDialog(null, salida);
    }
}
