/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mvc.Control;

import mvc.Modelo.MPersona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jaret
 */
public class AccionesPersona {
    
    public static int registrarEmpleado(MPersona p){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            String q = "INSERT INTO mpersona(empleado_num, persona_nombre, persona_appat, "
                    +  "persona_apmat, persona_sexo, persona_fechanacimiento, "
                    +  "persona_user, persona_pass, grupo_id, rol_id, privilegio_id) VALUES "
                    +  "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            //ahora debo de preparar la sentencia 
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //objeto del empleado
            ps.setInt(1, p.getEmpleado_num());
            ps.setString(2, p.getPersona_nombre());
            ps.setString(3, p.getPersona_appat());
            ps.setString(4, p.getPersona_apmat());
            ps.setString(5, p.getPersona_sexo());
            ps.setString(6, p.getPersona_fechaNacimiento());
            ps.setString(7, p.getPersona_user());
            ps.setString(8, p.getPersona_password());
            ps.setInt(9, p.getGrupo_id());
            ps.setInt(10, p.getRol_id());
            ps.setInt(11, p.getPrivilegio_id());
            
            //ejecutar la querry
            estatus = ps.executeUpdate();
            
            System.out.println("Registro Exitoso");
            con.close();
            
        }catch(Exception e){
            System.out.println("Error al registrar usuario");
            System.out.println(e.getMessage());
        }
        return estatus; 
    }
    
    
    
    public static int registrarAlumno(MPersona p){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            String q = "INSERT INTO mpersona(alumno_boleta, persona_nombre, persona_appat, "
                    +  "persona_apmat, persona_sexo, persona_fechanacimiento, "
                    +  "persona_user, persona_pass, grupo_id, rol_id, privilegio_id) VALUES "
                    +  "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            //ahora debo de preparar la sentencia 
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //objeto del empleado
            ps.setInt(1, p.getAlumno_boleta());
            ps.setString(2, p.getPersona_nombre());
            ps.setString(3, p.getPersona_appat());
            ps.setString(4, p.getPersona_apmat());
            ps.setString(5, p.getPersona_sexo());
            ps.setString(6, p.getPersona_fechaNacimiento());
            ps.setString(7, p.getPersona_user());
            ps.setString(8, p.getPersona_password());
            ps.setInt(9, p.getGrupo_id());
            ps.setInt(10, p.getRol_id());
            ps.setInt(11, p.getPrivilegio_id());
            
            //ejecutar la querry
            estatus = ps.executeUpdate();
            
            System.out.println("Registro Exitoso");
            con.close();
            
        }catch(Exception e){
            System.out.println("Error al registrar usuario");
            System.out.println(e.getMessage());
        }
        return estatus; 
    }
    
    
    public static MPersona buscarPersonaporID(int id){
        //necesito el objeto del empleado
                //cada fila es un objeto del registro
                MPersona p = new MPersona();
        
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "select persona_id, alumno_boleta, empleado_num, persona_nombre, persona_appat, persona_apmat, " +
                        "persona_sexo, persona_fechanacimiento, persona_user, persona_pass, gru.grupo_tipo, ro.rol_tipo, pri.privilegio_tipo " +
                        "from mpersona as per " +
                        "inner join cprivilegio as pri on per.privilegio_id = pri.privilegio_id " +
                        "inner join cgrupo as gru on per.grupo_id = gru.grupo_id " +
                        "inner join crol as ro on per.rol_id = ro.rol_id " +
                        "where persona_id = ?";
            
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                
                //getter y setter
                p.setPersona_id(rs.getInt(1));
                p.setAlumno_boleta(rs.getInt(2));
                p.setEmpleado_num(rs.getInt(3));
                p.setPersona_nombre(rs.getString(4));
                p.setPersona_appat(rs.getString(5));
                p.setPersona_apmat(rs.getString(6));
                p.setPersona_sexo(rs.getString(7));
                p.setPersona_fechaNacimiento(rs.getString(8));
                p.setPersona_user(rs.getString(9));
                p.setPersona_password(rs.getString(10));
                p.setGrupo_tipo(rs.getString(11));
                p.setRol_tipo(rs.getString(12));
                p.setPrivilegio_tipo(rs.getString(13));
                
                //los agrego a mi lista
                
            }
            System.out.println("Se encontro al usuario");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al consultar el usuario");
            System.out.println(ex.getMessage());
        }
        return p;      
    }
    
    
    public static int actualizarEmpleado(MPersona p){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "update mpersona set empleado_num = ?, persona_nombre = ?, persona_appat = ?, " +
                        "persona_apmat = ?, persona_sexo = ?, persona_fechaNacimiento = ?, " +
                        "persona_user = ?, persona_pass = ? " +
                        "where persona_id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);

            ps.setInt(1, p.getEmpleado_num());
            ps.setString(2, p.getPersona_nombre());
            ps.setString(3, p.getPersona_appat());
            ps.setString(4, p.getPersona_apmat());
            ps.setString(5, p.getPersona_sexo());
            ps.setString(6, p.getPersona_fechaNacimiento());
            ps.setString(7, p.getPersona_user());
            ps.setString(8, p.getPersona_password());
            ps.setInt(9, p.getPersona_id());

            estatus = ps.executeUpdate();

            System.out.println("Se actualizo el empleado");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al actualizar empleado");
            System.out.println(ex.getMessage());
        }
        
        return estatus;
    }
    
    public static int actualizarAlumno(MPersona p){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "update mpersona set alumno_boleta = ?, persona_nombre = ?, persona_appat = ?, " +
                        "persona_apmat = ?, persona_sexo = ?, persona_fechaNacimiento = ?, " +
                        "persona_user = ?, persona_pass = ? " +
                        "where persona_id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);

            ps.setInt(1, p.getAlumno_boleta());
            ps.setString(2, p.getPersona_nombre());
            ps.setString(3, p.getPersona_appat());
            ps.setString(4, p.getPersona_apmat());
            ps.setString(5, p.getPersona_sexo());
            ps.setString(6, p.getPersona_fechaNacimiento());
            ps.setString(7, p.getPersona_user());
            ps.setString(8, p.getPersona_password());
            ps.setInt(9, p.getPersona_id());

            estatus = ps.executeUpdate();

            System.out.println("Se actualizo el alumno");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al actualizar alumno");
            System.out.println(ex.getMessage());
        }       
        return estatus;
    }

    
    public static int eliminarPersona(int id){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "delete from mpersona where persona_id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            
            System.out.println("Se elimino al empleado");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al eliminarPersona");
        }
        return estatus;        
    }
    
    public static List<MPersona> getAllPersonas(){
        List<MPersona> lista = new ArrayList<MPersona>();
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "select persona_id, alumno_boleta, empleado_num, persona_nombre, persona_appat, persona_apmat, " +
                        "persona_sexo, persona_fechanacimiento, persona_user, persona_pass, gru.grupo_tipo, ro.rol_tipo, pri.privilegio_tipo " +
                        "from mpersona as per " +
                        "inner join cprivilegio as pri on per.privilegio_id = pri.privilegio_id " +
                        "inner join cgrupo as gru on per.grupo_id = gru.grupo_id " +
                        "inner join crol as ro on per.rol_id = ro.rol_id";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                MPersona p = new MPersona();
                
                p.setPersona_id(rs.getInt(1));
                p.setAlumno_boleta(rs.getInt(2));
                p.setEmpleado_num(rs.getInt(3));
                p.setPersona_nombre(rs.getString(4));
                p.setPersona_appat(rs.getString(5));
                p.setPersona_apmat(rs.getString(6));
                p.setPersona_sexo(rs.getString(7));
                p.setPersona_fechaNacimiento(rs.getString(8));
                p.setPersona_user(rs.getString(9));
                p.setPersona_password(rs.getString(10));
                p.setGrupo_tipo(rs.getString(11));
                p.setRol_tipo(rs.getString(12));
                p.setPrivilegio_tipo(rs.getString(13));
                
                lista.add(p);
            }
            
        }catch(Exception ex){
            System.out.println("Error al obtener usuarios");
            System.out.println(ex.getMessage());
        }       
        return lista;       
    }
}
