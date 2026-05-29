package org.jafethperez.model;

public class Habitaciones {
    private int numeroDeHabitacion;
    private int pisoHabitacion;
    private double precioNocheHabitacion;
    private String tipoHabitacion;
    
    public Habitaciones() {
    }

    public Habitaciones(int numeroDeHabitacion, int pisoHabitacion, double precioNocheHabitacion, String tipoHabitacion) {
        this.numeroDeHabitacion = numeroDeHabitacion;
        this.pisoHabitacion = pisoHabitacion;
        this.precioNocheHabitacion = precioNocheHabitacion;
        this.tipoHabitacion = tipoHabitacion;
    }

    // Getters y Setters 
    public int getNumeroDeHabitacion() {
        return numeroDeHabitacion;
    }

    public void setNumeroDeHabitacion(int numeroDeHabitacion) {
        this.numeroDeHabitacion = numeroDeHabitacion;
    }

    public int getPisoHabitacion() {
        return pisoHabitacion;
    }

    public void setPisoHabitacion(int pisoHabitacion) {
        this.pisoHabitacion = pisoHabitacion;
    }

    public double getPrecioNocheHabitacion() {
        return precioNocheHabitacion;
    }

    public void setPrecioNocheHabitacion(double precioNocheHabitacion) {
        this.precioNocheHabitacion = precioNocheHabitacion;
    }

    public String getTipoHabitacion() {
        return tipoHabitacion;
    }

    public void setTipoHabitacion(String tipoHabitacion) {
        this.tipoHabitacion = tipoHabitacion;
    }
}