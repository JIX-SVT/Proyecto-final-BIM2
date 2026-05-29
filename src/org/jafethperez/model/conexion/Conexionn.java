package org.jafethperez.model.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexionn {
    private static Conexionn instancia;
    

    private static final String URL = "jdbc:mysql://localhost:3306/hotel_ddl_in4cm?serverTimezone=UTC";
    private static final String USER = "admin";
    private static final String PASSWORD = "admin"; 

    private Conexionn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("Error Driver: " + e.getMessage());
        }
    }

    public static synchronized Conexionn getInstancia() {
        if (instancia == null) {
            instancia = new Conexionn();
        }
        return instancia;
    }

    public Connection conectar() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}