package com.project_planners.cecyt_integrador.modelos;

import com.project_planners.cecyt_integrador.util.ConexionBaseDatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Situacion {
    Integer bol_usu;
    Integer id_gru;
    Integer id_tur;
    Integer id_esp;
    Integer id_sem;

    public String getNom_gru() {
        return nom_gru;
    }

    public void setNom_gru(String nom_gru) {
        this.nom_gru = nom_gru;
    }

    public String getNom_tur() {
        return nom_tur;
    }

    public void setNom_tur(String nom_tur) {
        this.nom_tur = nom_tur;
    }

    public String getNom_esp() {
        return nom_esp;
    }

    public void setNom_esp(String nom_esp) {
        this.nom_esp = nom_esp;
    }

    public String getNom_sem() {
        return nom_sem;
    }

    public void setNom_sem(String nom_sem) {
        this.nom_sem = nom_sem;
    }

    String nom_gru;
    String nom_tur;
    String nom_esp;
    String nom_sem;

    public void setBol_usu(Integer bol_usu) {
        this.bol_usu = bol_usu;
    }

    public Integer getBol_usu() {
        return bol_usu;
    }

    public Integer getId_gru() {
        return id_gru;
    }

    public void setId_gru(Integer id_gru) {
        this.id_gru = id_gru;
    }

    public Integer getId_tur() {
        return id_tur;
    }

    public void setId_tur(Integer id_tur) {
        this.id_tur = id_tur;
    }

    public Integer getId_esp() {
        return id_esp;
    }

    public void setId_esp(Integer id_esp) {
        this.id_esp = id_esp;
    }

    public Integer getId_sem() {
        return id_sem;
    }

    public void setId_sem(Integer id_sem) {
        this.id_sem = id_sem;
    }


    public static Situacion getPro(Integer bol_usu){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Situacion pro = new Situacion();
        try {
            con = ConexionBaseDatos.getConnection();

            String sql;
            sql = "SELECT bol_usu, id_gru, id_tur, id_esp, id_sem FROM situaciones " +
                    "WHERE bol_usu = ?";

            ps = con.prepareStatement(sql);
            ps.setInt(1, bol_usu);
            rs = ps.executeQuery();

            while(rs.next()){
                pro.setBol_usu(rs.getInt("bol_usu"));
                pro.setId_tur(rs.getInt("id_gru"));
                pro.setId_tur(rs.getInt("id_tur"));
                pro.setId_esp(rs.getInt("id_esp"));
                pro.setId_sem(rs.getInt("id_sem"));
                break;
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return pro;
    }
}
