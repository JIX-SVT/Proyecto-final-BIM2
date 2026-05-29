package org.jafethperez.model.dao;


import org.jafethperez.model.Habitaciones;

// Al poner <Habitaciones, Integer>, Java automáticamente sabe que:
// Donde decía 'T' ahora usará 'Habitaciones' y donde decía 'ID' ahora usará 'Integer'
public interface HabitacionesDAO extends CRUD<Habitaciones, Integer> {
    
    // Aquí puedes agregar métodos específicos si en el futuro los necesitas,
    // pero por ahora, al heredar de CRUD, ya incluye los 5 métodos obligatorios.
}