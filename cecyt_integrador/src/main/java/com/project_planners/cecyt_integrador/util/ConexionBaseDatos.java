package com.project_planners.cecyt_integrador.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBaseDatos {
    public static Connection getConnection() throws SQLException {

        String url = "jdbc:mysql://localhost:3306/cecyt-integrador";
        String username = "root";
        String password = "99310675";

        return DriverManager.getConnection(url, username, password);
    }
}
