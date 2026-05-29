package org.jafethperez.controller;

import java.util.List;
import org.jafethperez.model.Habitaciones;
import org.jafethperez.model.dao.HabitacionesDAO;
import org.jafethperez.model.dao.HabitacionesDAOImpl;
import org.jafethperez.view.HabitacionesView;

public class HabitacionesController {
    private final HabitacionesView vista;
    private final HabitacionesDAO dao;

    public HabitacionesController(HabitacionesView vista) {
        this.vista = vista;
        this.dao = new HabitacionesDAOImpl();
    }

    public void iniciarModulo() {
        int opcion;
        do {
            opcion = vista.mostrarMenu();
            switch (opcion) {
                case 1 -> listar(); 
                case 2 -> vista.mostrarMensaje("Saliendo del menu de habitaciones...");
                default -> vista.mostrarMensaje("Opcion invalida.");
            }
        } while (opcion != 2); 
    }

    private void listar() {
        List<Habitaciones> lista = dao.listar();
        if (lista.isEmpty()) {
            vista.mostrarMensaje("No hay habitaciones registradas.");
        } else {
            vista.desplegarLista(lista);
        }
    }
}
