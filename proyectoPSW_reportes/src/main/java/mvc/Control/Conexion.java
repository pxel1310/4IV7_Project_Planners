/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mvc.Control;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Jaret
 */
public class Conexion {
    
    public static Connection getConection(){
        String url, username, password;
        
        url = "jdbc:mysql://localhost/maquinasbatiz";
        username = "";
        password = "";
        
        Connection con = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Se conecto con la BD");
        }catch(Exception e){
            System.out.println("No se conecto con la bd");
            System.out.println(e.getMessage());
        
        }
        return con;
    }
}
