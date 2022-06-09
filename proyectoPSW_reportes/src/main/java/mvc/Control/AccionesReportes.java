/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mvc.Control;

import mvc.Modelo.DReporte;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jaret
 */
public class AccionesReportes {
    
    public static int registrarReporte(DReporte r){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "insert into dreporte (equiposRepor_id, reportePer_id, prioridad_id,"
                    + "edoRe_id, detalleReporte_fecha,"
                    + "detalleReporte_hora) values (?, ?, ?, ?, ?, ?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, r.getEtiqueta_id());
            ps.setInt(2, r.getPersonareporte_id());
            ps.setInt(3, r.getPrioridad_id());
            ps.setInt(4, r.getEstadoreporte_id());
            ps.setString(5, r.getFechareporte());
            ps.setString(6, r.getHorareporte());
            
            estatus = ps.executeUpdate();
            
            System.out.println("Registro de reporte exitoso");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al registrar reporte");
            System.out.println(ex.getMessage());
        }       
        return estatus;       
    }
    
    public static List<DReporte> getAllReportes(){
        List<DReporte> lista = new ArrayList<DReporte>();
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "select detalleReporte_id, er.equipo_etiqueta, per.persona_user, pr.prioridad_tipo, " +
                        "ere.edoRe_tipo, detalleReporte_fecha, detalleReporte_hora " +
                        "from dreporte as rep " +
                        "inner join eequiposreportados as er on er.equiposrepor_id = rep.equiposrepor_id " +
                        "inner join ereportespersona as rp on rep.reporteper_id = rp.reporteper_id " +
                        "inner join mpersona as per on rp.persona_id = per.persona_id " +
                        "inner join cprioridad as pr on rep.prioridad_id = pr.prioridad_id " +
                        "inner join cestadoreporte as ere on rep.edoRe_id = ere.edoRe_id ";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                DReporte r = new DReporte();
                
                r.setReporte_id(rs.getInt(1));
                r.setEtiqueta_nombre(rs.getString(2));
                r.setPersonareporte_user(rs.getString(3));
                r.setPrioridad_tipo(rs.getString(4));
                r.setEstadoreporte_tipo(rs.getString(5));
                r.setFechareporte(rs.getString(6));
                r.setHorareporte(rs.getString(7));
                
                lista.add(r);
            }
            System.out.println("Se encontraron los reportes");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al consultar todos los reportes");
            System.out.println(ex.getMessage());
        }
        
        return lista;        
    }
    
    
    public static List<DReporte> getReportesporIDPersona(int idPersona){
        List<DReporte> lista = new ArrayList<DReporte>();
               
        try{
            Connection con = Conexion.getConection();
            
            String q = "select detalleReporte_id, er.equipo_etiqueta, per.persona_user, pr.prioridad_tipo, " +
"                        ere.edoRe_tipo, detalleReporte_fecha, detalleReporte_hora " +
"                        from dreporte as rep " +
"                        inner join eequiposreportados as er on er.equiposrepor_id = rep.equiposrepor_id " +
"                        inner join ereportespersona as rp on rep.reporteper_id = rp.reporteper_id " +
"                        inner join mpersona as per on rp.persona_id = per.persona_id " +
"                        inner join cprioridad as pr on rep.prioridad_id = pr.prioridad_id " +
"                        inner join cestadoreporte as ere on rep.edoRe_id = ere.edoRe_id " +
"                        where rep.reporteper_id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, idPersona);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                DReporte r = new DReporte();
                
                r.setReporte_id(rs.getInt(1));
                r.setEtiqueta_nombre(rs.getString(2));
                r.setPersonareporte_user(rs.getString(3));
                r.setPrioridad_tipo(rs.getString(4));
                r.setEstadoreporte_tipo(rs.getString(5));
                r.setFechareporte(rs.getString(6));
                r.setHorareporte(rs.getString(7));
                
                lista.add(r);
            }
            System.out.println("Se encontraron los reportes");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al obtener reportes");
            System.out.println(ex.getMessage());
        }
        return lista;
    }
    
    public static int actualizarReporte(DReporte r){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "update dreporte set equiposRepor_id = ?, prioridad_id = ?, "
                    + "edoRe_id = ? where detalleReporte_id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, r.getEtiqueta_id());
            ps.setInt(2, r.getPrioridad_id());
            ps.setInt(3, r.getEstadoreporte_id());
            ps.setInt(4, r.getReporte_id());
            
            estatus = ps.executeUpdate();

            System.out.println("Se actualizo el reporte");
            con.close();
                      
        }catch(Exception ex){
            System.out.println("Error al actualizar reporte");
            System.out.println(ex.getMessage());
        }      
        return estatus;    
    }
    
    public static int eliminarReporte(int id){
        int estatus = 0;
        
        try{
            Connection con = Conexion.getConection();
            
            String q = "delete from dreporte where detalleReporte_id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            
            System.out.println("Se elimino el reporte");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al eliminarPersona");
        }
        return estatus;
    }
    
    
    public static DReporte getReporteporID(int id){
        DReporte r = new DReporte();
               
        try{
            Connection con = Conexion.getConection();
            
            String q = "select detalleReporte_id, er.equipo_etiqueta, per.persona_user, pr.prioridad_tipo, " +
"                        ere.edoRe_tipo, detalleReporte_fecha, detalleReporte_hora " +
"                        from dreporte as rep " +
"                        inner join eequiposreportados as er on er.equiposrepor_id = rep.equiposrepor_id " +
"                        inner join ereportespersona as rp on rep.reporteper_id = rp.reporteper_id " +
"                        inner join mpersona as per on rp.persona_id = per.persona_id " +
"                        inner join cprioridad as pr on rep.prioridad_id = pr.prioridad_id " +
"                        inner join cestadoreporte as ere on rep.edoRe_id = ere.edoRe_id " +
"                        where rep.detalleReporte_id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){                    
                r.setReporte_id(rs.getInt(1));
                r.setEtiqueta_nombre(rs.getString(2));
                r.setPersonareporte_user(rs.getString(3));
                r.setPrioridad_tipo(rs.getString(4));
                r.setEstadoreporte_tipo(rs.getString(5));
                r.setFechareporte(rs.getString(6));
                r.setHorareporte(rs.getString(7));
                
            }
            System.out.println("Se encontraro el reporte");
            con.close();
            
        }catch(Exception ex){
            System.out.println("Error al obtener reportes");
            System.out.println(ex.getMessage());
        }
        return r;
    }
}

