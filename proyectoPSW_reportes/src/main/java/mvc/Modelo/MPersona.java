/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mvc.Modelo;

import mvc.Control.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Jaret
 */
public class MPersona {
    
    private int persona_id;
    private int alumno_boleta;
    private int empleado_num;
    private String persona_nombre;
    private String persona_appat;
    private String persona_apmat;
    private String persona_sexo;
    private String persona_fechaNacimiento;
    private String persona_user;
    private String persona_password;
    private int grupo_id;
    private int rol_id;
    private int privilegio_id;
    private String grupo_tipo, rol_tipo, privilegio_tipo;

    public MPersona() {
        
    }

    public int getPersona_id() {
        return persona_id;
    }

    public void setPersona_id(int persona_id) {
        this.persona_id = persona_id;
    }

    public int getAlumno_boleta() {
        return alumno_boleta;
    }

    public void setAlumno_boleta(int alumno_boleta) {
        this.alumno_boleta = alumno_boleta;
    }

    public int getEmpleado_num() {
        return empleado_num;
    }

    public void setEmpleado_num(int empleado_num) {
        this.empleado_num = empleado_num;
    }

    public String getPersona_nombre() {
        return persona_nombre;
    }

    public void setPersona_nombre(String persona_nombre) {
        this.persona_nombre = persona_nombre;
    }

    public String getPersona_appat() {
        return persona_appat;
    }

    public void setPersona_appat(String persona_appat) {
        this.persona_appat = persona_appat;
    }

    public String getPersona_apmat() {
        return persona_apmat;
    }

    public void setPersona_apmat(String persona_apmat) {
        this.persona_apmat = persona_apmat;
    }

    public String getPersona_sexo() {
        return persona_sexo;
    }

    public void setPersona_sexo(String persona_sexo) {
        this.persona_sexo = persona_sexo;
    }

    public String getPersona_fechaNacimiento() {
        return persona_fechaNacimiento;
    }

    public void setPersona_fechaNacimiento(String persona_fechaNacimiento) {
        this.persona_fechaNacimiento = persona_fechaNacimiento;
    }

    public String getPersona_user() {
        return persona_user;
    }

    public void setPersona_user(String persona_user) {
        this.persona_user = persona_user;
    }

    public String getPersona_password() {
        return persona_password;
    }

    public void setPersona_password(String persona_password) {
        this.persona_password = persona_password;
    }

    public int getGrupo_id() {
        return grupo_id;
    }

    public void setGrupo_id(int grupo_id) {
        this.grupo_id = grupo_id;
    }

    public int getRol_id() {
        return rol_id;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    public int getPrivilegio_id() {
        return privilegio_id;
    }

    public void setPrivilegio_id(int privilegio_id) {
        this.privilegio_id = privilegio_id;
    }

    public String getGrupo_tipo() {
        return grupo_tipo;
    }

    public void setGrupo_tipo(String grupo_tipo) {
        this.grupo_tipo = grupo_tipo;
    }

    public String getRol_tipo() {
        return rol_tipo;
    }

    public void setRol_tipo(String rol_tipo) {
        this.rol_tipo = rol_tipo;
    }

    public String getPrivilegio_tipo() {
        return privilegio_tipo;
    }

    public void setPrivilegio_tipo(String privilegio_tipo) {
        this.privilegio_tipo = privilegio_tipo;
    }
    
    public MPersona verificarUsuario(String user, String pass) throws ClassNotFoundException{
        //primero creamos el objeto persona
        MPersona persona = null;
        //Connection
        Connection con = null;
        //PreparedStatement
        PreparedStatement ps = null;
        //Consulta
        ResultSet rs = null;
        try{
            //establecemos la conexion
            con = Conexion.getConection();
            //querry            
            /* String q = "select persona_nombre, pri.privilegio_tipo from persona as per"
                    + "inner join privilegio as pri" +
                    "on per.privilegio_id = pri.privilegio_id"
                    + "where persona_user = ? and persona_pass = ?";*/
            
            String q = "select * from mpersona "
                    + "inner join cprivilegio "
                    + "on (mpersona.privilegio_id = cprivilegio.privilegio_id) "
                    + "where persona_user = ? and persona_pass = ?";


            //prearo la sentencia
            
            
            ps = con.prepareStatement(q);
            //obtengo los elementos
            ps.setString(1, user);
            ps.setString(2, pass);
            //ejecuto la consulta
            rs = ps.executeQuery();
            //recorrer la tabla
            while(rs.next()){
                //objeto persona
                persona = new MPersona();
                CPrivilegio pri = new CPrivilegio();
                persona.setPersona_id(rs.getInt("persona_id"));
                persona.setAlumno_boleta(rs.getInt("alumno_boleta"));
                persona.setEmpleado_num(rs.getInt("empleado_num"));
                persona.setPersona_nombre(rs.getString("persona_nombre"));
                persona.setPersona_appat(rs.getString("persona_appat"));
                persona.setPersona_apmat(rs.getString("persona_apmat"));
                persona.setPersona_sexo(rs.getString("persona_sexo"));
                persona.setPersona_fechaNacimiento(rs.getString("persona_fechaNacimiento"));
                persona.setPersona_user(rs.getString("persona_user"));
                persona.setPersona_password(rs.getString("persona_pass"));
                persona.setGrupo_id(rs.getInt("grupo_id"));
                persona.setRol_id(rs.getInt("rol_id"));
                persona.setPrivilegio_id(rs.getInt("privilegio_id"));
                pri.setPrivilegio_tipo(rs.getString("privilegio_tipo"));
                break;
            }
            
        }catch(SQLException eq){
            System.out.println("Error al verificar el usuario");
            System.out.println(eq.getMessage());
        }finally{
            try{
                rs.close();
                ps.close();
                con.close();
            }catch(Exception ex){
                System.out.println("No se encontro los elementos de la clase");
                System.out.println(ex.getMessage());
            }
        }
        return persona;   
    }
}
