package org.jafethperez.model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import org.jafethperez.model.Habitaciones;
import org.jafethperez.model.conexion.Conexionn;

public class HabitacionesDAOImpl implements HabitacionesDAO {

    @Override
    public List<Habitaciones> listar() {
        List<Habitaciones> lista = new ArrayList<>();

        String sql = "{call sp_listarhabitaciones()}";
        
        try (Connection con = Conexionn.getInstancia().conectar();
             CallableStatement cs = con.prepareCall(sql);
             ResultSet rs = cs.executeQuery()) {
            
            while (rs.next()) {
                // Mapeamos las columnas exactas de tu tabla 'habitaciones'
                lista.add(new Habitaciones(
                    rs.getInt("numero_de_habitacion"), 
                    rs.getInt("piso_habitacion"),
                    rs.getDouble("precio_noche_habitacion"),
                    rs.getString("tipo_habitacion")
                ));
            }
        } catch (SQLException e) {
            System.err.println("Error [Listar Habitaciones: ]" + e.getMessage());
        }
        return lista;
    }

    @Override
    public boolean insertar(Habitaciones objeto) {
        return false; 
    }

    @Override
    public Habitaciones buscar(Integer id) {
        return null;  
    }

    @Override
    public boolean actualizar(Habitaciones objeto) {
        return false; 
    }

    @Override
    public boolean eliminar(Integer id) {
        return false;
    }
}