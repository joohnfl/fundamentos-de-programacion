import javax.swing.JOptionPane;

public class Pasteleria {
    public static void main(String[] args) {
        try {
            double precioTotal = 0.0;

            // Preguntar el sabor de la tarta
            String eleccionSabor = JOptionPane.showInputDialog(
                "Elige el sabor de la tarta:\n- manzana\n- fresa\n- chocolate"
            ).toLowerCase();

            // Selección de sabor
            switch (eleccionSabor) {
                case "chocolate":
                    String tipoChoco = JOptionPane.showInputDialog("¿Qué tipo de chocolate deseas? (negro o blanco)").toLowerCase();
                    if (tipoChoco.equals("negro")) {
                        precioTotal = 280;
                    } else if (tipoChoco.equals("blanco")) {
                        precioTotal = 300;
                    } else {
                        JOptionPane.showMessageDialog(null, "Opción no válida, se asignará chocolate negro por defecto.");
                        precioTotal = 280;
                    }
                    break;

                case "fresa":
                    precioTotal = 250;
                    break;

                case "manzana":
                    precioTotal = 200;
                    break;

                default:
                    JOptionPane.showMessageDialog(null, "Sabor no válido, se asignará tarta de manzana por defecto.");
                    precioTotal = 200;
            }

            // Preguntar si se agregan snacks
            int respuestaSnack = JOptionPane.showConfirmDialog(null, "¿Deseas añadir snacks? Cada uno cuesta $25", "Snacks", JOptionPane.YES_NO_OPTION);
            if (respuestaSnack == JOptionPane.YES_OPTION) {
                int cantidadSnacks = Integer.parseInt(JOptionPane.showInputDialog("¿Cuántos snacks quieres agregar?"));
                precioTotal += cantidadSnacks * 25;
            }

            // Preguntar si se personaliza con nombre
            int respuestaNombre = JOptionPane.showConfirmDialog(null, "¿Deseas personalizar la tarta con un nombre? (+$30)", "Personalización", JOptionPane.YES_NO_OPTION);
            if (respuestaNombre == JOptionPane.YES_OPTION) {
                String nombreTarta = JOptionPane.showInputDialog("Escribe el nombre que irá en la tarta:");
                precioTotal += 30;
            }

            // Mostrar precio final
            JOptionPane.showMessageDialog(null, "El precio final de tu tarta es: $" + precioTotal);

        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(null, "Error: debes ingresar un número válido.");
        }
    }
}
