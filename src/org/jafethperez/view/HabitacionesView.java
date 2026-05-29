package org.jafethperez.view;

import java.util.List;
import java.util.Scanner;
import org.jafethperez.model.Habitaciones;

public class HabitacionesView {
    private final Scanner scanner = new Scanner(System.in);

    public int mostrarMenu() {
        System.out.println("\n--- GESTION DE HABITACIONES ---");
        System.out.println("1. Listar todas las habitaciones");
        System.out.println("2. Regresar al Menu Principal");
        System.out.print("Seleccione una opcion: ");
        return scanner.nextInt();
    }

    public void desplegarLista(List<Habitaciones> habitaciones) {
        System.out.println("\n=========================== LISTADO DE HABITACIONES ===========================");
        System.out.printf("%-15s %-10s %-20s %-15s\n", "NO. HABITACION", "PISO", "PRECIO POR NOCHE", "TIPO");
        System.out.println("-------------------------------------------------------------------------------");
        
        for (Habitaciones hab : habitaciones) {
            System.out.printf("%-15d %-10d Q%-19.2f %-15s\n", 
                hab.getNumeroDeHabitacion(), 
                hab.getPisoHabitacion(), 
                hab.getPrecioNocheHabitacion(), 
                hab.getTipoHabitacion());
        }
        System.out.println("===============================================================================");
    }

    public void mostrarMensaje(String mensaje) {
        System.out.println(mensaje);
    }
}