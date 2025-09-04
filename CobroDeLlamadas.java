import java.util.Scanner;

public class CobroDeLlamadas {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        double pago = 0, total, impuesto;
        int tiempo;
        boolean dia, turno;

        System.out.print("El tiempo de llamada en (minutos): ");
        tiempo = sc.nextInt();

        System.out.print("El día de hoy es un día hábil (1=si / 0=no): ");
        int esDia = sc.nextInt();
        dia = (esDia == 1);

        System.out.print("La llamada se realizó en el turno matutino (1=si / 0=no): ");
        int esTurno = sc.nextInt();
        turno = (esTurno == 1);

        // Cálculo del pago según el tiempo
        if (tiempo > 8) {
            if (tiempo > 5) {
                if (tiempo > 10) {
                    pago = 5 + 2.4 + 1.4 + (0.5 * (tiempo - 10));
                } else {
                    pago = 5 + 2.4 + (0.7 * (tiempo - 8));
                }
            } else {
                pago = 0.8 * tiempo;
            }
        } else {
            pago = tiempo;
        }

        // Cálculo del impuesto
        if (dia) {
            if (turno) {
                impuesto = 0.15;
            } else {
                impuesto = 0.10;
            }
        } else {
            impuesto = 0.03;
        }

        total = pago + (pago * impuesto);

        System.out.println("El pago a realizar es de: $" + total);

        sc.close();
    }
}
