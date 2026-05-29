package org.jafethperez.view;

import java.util.Scanner;
import org.jafethperez.controller.HabitacionesController;

public class MenuPrincipall {
    private final Scanner scanner = new Scanner(System.in);

    public void arrancarSistema() {
        int opcion;
        do {
            System.out.println("\n==============================================");
            System.out.println("           SISTEMA MNU - HOTEL IN4CM        ");
            System.out.println("==============================================");
            System.out.println("1. Entrar a Habitaciones");
            System.out.println("2. Entrar a Clientes(proximamente)");
            System.out.println("2. Salir del Sistema");
            System.out.print("Seleccione una opcion: ");
            opcion = scanner.nextInt();

            switch (opcion) {
                case 1 -> {
                    HabitacionesView vistaHab = new HabitacionesView();
                    HabitacionesController controlHab = new HabitacionesController(vistaHab);
                    controlHab.iniciarModulo(); 
                }
                case 2 -> {
                    System.out.println("\nNo disponible");
                }
                default -> {
                    System.out.println("\nOpcion invalida en el menu .");
                }
            }
        } while (opcion != 3);
    }
}