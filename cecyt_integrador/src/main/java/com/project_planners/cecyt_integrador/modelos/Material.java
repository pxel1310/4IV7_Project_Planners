package com.project_planners.cecyt_integrador.modelos;

import com.project_planners.cecyt_integrador.util.ConexionBaseDatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Material {
    String nom_asi;
    String con_cog;
    String con_bib;
    String con_cop;
    String con_rap;

    public static Material getMaterial(int asi_id){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Material mt = new Material();
        try {
            con = ConexionBaseDatos.getConnection();

            String sql;
            sql = "SELECT a.nom_asi AS nom_asi, b.con_cog AS con_cog, c.con_bib AS con_bib FROM asignaturas AS a " +
                    "JOIN cogeneral AS b ON (a.id_asi = b.id_asi) JOIN bibliografias AS c ON (a.id_asi = c.id_asi) " +
                    "WHERE a.id_asi = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, asi_id);
            rs = ps.executeQuery();

            while(rs.next()){
                mt.setNom_asi(rs.getString("nom_asi"));
                mt.setCon_cog(rs.getString("con_cog"));
                mt.setCon_bib(rs.getString("con_bib"));
                break;
            }
            sql = "SELECT a.con_cop AS con_cop, f.con_rap AS con_rap FROM coparticulares AS a JOIN asignaturas AS b ON " +
                    "b.id_asi = a.id_asi JOIN raps AS f ON a.nom_cop = f.nom_cop WHERE a.id_asi = ?";

            ps = con.prepareStatement(sql);
            ps.setInt(1, asi_id);
            rs = ps.executeQuery();

            while(rs.next()){
                mt.setCon_cop(rs.getString("con_cop"));
                mt.setCon_rap(rs.getString("con_rap"));
                break;
            }
            rs.close();
            ps.close();
            con.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return mt;
    }

    public String getNom_asi() {
        return nom_asi;
    }

    public void setNom_asi(String nom_asi) {
        this.nom_asi = nom_asi;
    }

    public String getCon_cog() {
        return con_cog;
    }

    public void setCon_cog(String con_cog) {
        this.con_cog = con_cog;
    }

    public String getCon_bib() {
        return con_bib;
    }

    public void setCon_bib(String con_bib) {
        this.con_bib = con_bib;
    }

    public String getCon_cop() {
        return con_cop;
    }

    public void setCon_cop(String con_cop) {
        this.con_cop = con_cop;
    }

    public String getCon_rap() {
        return con_rap;
    }

    public void setCon_rap(String con_rap) {
        this.con_rap = con_rap;
    }
}


