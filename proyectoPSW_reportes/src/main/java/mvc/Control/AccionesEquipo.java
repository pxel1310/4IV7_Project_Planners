/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mvc.Control;

import mvc.Modelo.DEquipo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jaret
 */
public class AccionesEquipo {
    
    public static int registrarEquipo(DEquipo e){
        int estatus = 0, estatus2 = 0;
        
        try{
            Connection con = Conexion.getConection();
            String q = "insert into dequipo (equipo_etiqueta, lab_id, marca_id, cpu_serial, "
                    + "accesorio_id, monitor_id, config_id, edoEquipo_id, problema) "
                    + "values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, e.getEquipo_etiqueta());
            ps.setInt(2, e.getLab_id());
            ps.setInt(3, e.getMarca_id());
            ps.setString(4, e.getCpu_serial());
            ps.setInt(5, e.getAccesorio_id());
            ps.setString(6, e.getMonitor_id());
            ps.setString(7, e.getConfig_id());
            ps.setInt(8, e.getEstadoequipo_id());
            ps.setString(9, e.getProblema());
            
            estatus = ps.executeUpdate();
            
            try{
                String q2 = "insert into eequiposreportados (equipo_etiqueta) " 
                    + "values (?)";
                
                PreparedStatement ps2 = con.prepareStatement(q2);
                
                ps2.setString(1, e.getEquipo_etiqueta());
                
                estatus2 = ps2.executeUpdate();
                
                System.out.println("Todo bien");
            }catch(Exception exe){
                System.out.println("Error 2");
                System.out.println(exe.getMessage());
            }
            
            System.out.println("Registro exitoso");
            con.close();
        }catch(Exception ex){
            System.out.println("Error al registrar equipo");
            System.out.println(ex.getMessage());
        }
        return estatus;
    }
    
    
    public static List<DEquipo> getAllEquipos(){
        List <DEquipo> lista = new ArrayList<DEquipo>();
        
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "select equipo_etiqueta, lab.lab_nom, mar.marca_nom, cpu_serial, " +
                        "ac.config_descripcionTeclado, ac.config_descripcionMause, mo.monitor_descripcion, " +
                        "co.config_descripcion, ed.edoEquipo_tipo, problema from dequipo as eq " +
                        "inner join claboratorio as lab on eq.lab_id = lab.lab_id " +
                        "inner join cmarca as mar on eq.marca_id = mar.marca_id " +
                        "inner join maccesorio as ac on eq.accesorio_id = ac.accesorio_id " +
                        "inner join mmonitor as mo on eq.monitor_id = mo.monitor_id " +
                        "inner join mconfiguracion as co on eq.config_id = co.config_id " +
                        "inner join cedoequipo as ed on eq.edoEquipo_id = ed.edoEquipo_id";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                //necesito el objeto del empleado
                //cada fila es un objeto del registro
                DEquipo e = new DEquipo();
                //getter y setter
                e.setEquipo_etiqueta(rs.getString(1));
                e.setLab_nom(rs.getString(2));
                e.setMarca_nom(rs.getString(3));
                e.setCpu_serial(rs.getString(4));
                e.setConfig_teclado(rs.getString(5));
                e.setConfig_mouse(rs.getString(6));
                e.setMonitor_descripcion(rs.getString(7));
                e.setConfig_descripcion(rs.getString(8));                
                e.setEstadoequipo_tipo(rs.getString(9));
                e.setProblema(rs.getString(10));
                //los agrego a mi lista
                lista.add(e);
            }
            
        }catch(Exception ex){
            System.out.println("Error al consultar el empleado");
            System.out.println(ex.getMessage());
        }       
        return lista;       
    } 
    
    
    public static DEquipo buscarEquipoporID(String etiqueta){
            //necesito el objeto del empleado
            //cada fila es un objeto del registro
            DEquipo e = new DEquipo();
        
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "select equipo_etiqueta, lab.lab_nom, mar.marca_nom, cpu_serial, " +
                        "ac.config_descripcionTeclado, ac.config_descripcionMause, mo.monitor_descripcion, " +
                        "co.config_descripcion, ed.edoEquipo_tipo, problema from dequipo as eq " +
                        "inner join claboratorio as lab on eq.lab_id = lab.lab_id " +
                        "inner join cmarca as mar on eq.marca_id = mar.marca_id " +
                        "inner join maccesorio as ac on eq.accesorio_id = ac.accesorio_id " +
                        "inner join mmonitor as mo on eq.monitor_id = mo.monitor_id " +
                        "inner join mconfiguracion as co on eq.config_id = co.config_id " +
                        "inner join cedoequipo as ed on eq.edoEquipo_id = ed.edoEquipo_id " +
                        "where equipo_etiqueta = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, etiqueta);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                
                //getter y setter
                e.setEquipo_etiqueta(rs.getString(1));
                e.setLab_nom(rs.getString(2));
                e.setMarca_nom(rs.getString(3));
                e.setCpu_serial(rs.getString(4));
                e.setConfig_teclado(rs.getString(5));
                e.setConfig_mouse(rs.getString(6));
                e.setMonitor_descripcion(rs.getString(7));
                e.setConfig_descripcion(rs.getString(8));
                e.setEstadoequipo_tipo(rs.getString(9));
                e.setProblema(rs.getString(10));               
                //los agrego a mi lista               
            }
            System.out.println("Se encontro el equipo");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al consultar equipo");
            System.out.println(ex.getMessage());
        }
        return e;       
    }
    
    
    public static List<DEquipo> getAllSeriales(){
        List <DEquipo> lista = new ArrayList<DEquipo>();
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "select cpu_serial from mcpu";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                DEquipo e = new DEquipo();
                
                e.setCpu_serial(rs.getString(1));
                
                lista.add(e);
            }
            
        }catch(Exception ex){
            System.out.println("Error al obtener seriales");
            System.out.println(ex.getMessage());
        }              
        return lista;        
    }
    
    public static List<DEquipo> getAllEtiquetas(){
        List<DEquipo> lista = new ArrayList<DEquipo>();
                
        try{
            Connection con = Conexion.getConection();

            String q = "select equipo_etiqueta from eequiposreportados";

            PreparedStatement ps = con.prepareStatement(q);
            
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                DEquipo e = new DEquipo();

                e.setEquipo_etiqueta(rs.getString(1));

                lista.add(e);
            }
            
        }catch(Exception ex){
            System.out.println("Error al obtener etiquetas");
            System.out.println(ex.getMessage());
        }
        return lista;        
    }
    
    public static int eliminarEquipo(String etiqueta){
        int estatus = 0, estatus1 = 0;
        
        try{
            Connection con = Conexion.getConection();

            String q1 = "delete from eequiposreportados where equipo_etiqueta = ?";

            PreparedStatement ps1 = con.prepareStatement(q1);

            ps1.setString(1, etiqueta);

            estatus1 = ps1.executeUpdate();
            try{
                            
                String q = "delete from dequipo where equipo_etiqueta = ?";

                PreparedStatement ps = con.prepareStatement(q);

                ps.setString(1, etiqueta);

                estatus = ps.executeUpdate();
            }catch(Exception exe){
                System.out.println("Error 2");
                System.out.println(exe.getMessage());
            }
            System.out.println("Se elimino el equipo");
            con.close();
        }catch(Exception ex){
            System.out.println("Error al eliminar equipo");
            System.out.println(ex.getMessage());
        }
        return estatus;        
    }
}
