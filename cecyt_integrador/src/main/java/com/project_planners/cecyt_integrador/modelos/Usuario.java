package com.project_planners.cecyt_integrador.modelos;

import com.project_planners.cecyt_integrador.modelos.Usuario;
import com.project_planners.cecyt_integrador.util.ConexionBaseDatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Usuario {
    Integer id_rol;
    Integer act_usu;
    String cre_usu;
    String ema_usu;
    String pas_usu;
    String fna_usu;
    Integer id_sex;
    String apm_usu;
    String app_usu;
    String nom_usu;
    Integer bol_usu;
    String nom_sex;

    public String getNom_sex() {
        return nom_sex;
    }

    public void setNom_sex(String nom_sex) {
        this.nom_sex = nom_sex;
    }

    public Integer getId_rol() {
        return id_rol;
    }

    public void setId_rol(Integer id_rol) {
        this.id_rol = id_rol;
    }

    public Integer getAct_usu() {
        return act_usu;
    }

    public void setAct_usu(Integer act_usu) {
        this.act_usu = act_usu;
    }

    public String getCre_usu() {
        return cre_usu;
    }

    public void setCre_usu(String cre_usu) {
        this.cre_usu = cre_usu;
    }

    public String getEma_usu() {
        return ema_usu;
    }

    public void setEma_usu(String ema_usu) {
        this.ema_usu = ema_usu;
    }

    public String getPas_usu() {
        return pas_usu;
    }

    public void setPas_usu(String pas_usu) {
        this.pas_usu = pas_usu;
    }

    public String getFna_usu() {
        return fna_usu;
    }

    public void setFna_usu(String fna_usu) {
        this.fna_usu = fna_usu;
    }

    public Integer getId_sex() {
        return id_sex;
    }

    public void setId_sex(Integer id_sex) {
        this.id_sex = id_sex;
    }

    public String getApm_usu() {
        return apm_usu;
    }

    public void setApm_usu(String apm_usu) {
        this.apm_usu = apm_usu;
    }

    public String getApp_usu() {
        return app_usu;
    }

    public void setApp_usu(String app_usu) {
        this.app_usu = app_usu;
    }

    public String getNom_usu() {
        return nom_usu;
    }

    public void setNom_usu(String nom_usu) {
        this.nom_usu = nom_usu;
    }

    public Integer getBol_usu() {
        return bol_usu;
    }

    public void setBol_usu(Integer bol_usu) {
        this.bol_usu = bol_usu;
    }

    public static Usuario getProfile(String ema_usu, String pas_usu){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Usuario profile = new Usuario();
        try {
            con = ConexionBaseDatos.getConnection();

            String sql;

            sql = "SELECT bol_usu, ema_usu, nom_usu, pas_usu, app_usu, apm_usu, id_sex, fna_usu, " +
                    "usuarios.id_rol, cre_usu, roles.nom_rol FROM usuarios join roles on (usuarios.id_rol = roles.id_rol)" +
                    "WHERE ema_usu = ? AND pas_usu = ?";

            ps = con.prepareStatement(sql);
            ps.setString(1, ema_usu);
            ps.setString(2, pas_usu);
            rs = ps.executeQuery();

            while (rs.next()) {
                profile.setBol_usu(rs.getInt("bol_usu"));
                profile.setEma_usu(rs.getString("ema_usu"));
                profile.setNom_usu(rs.getString("nom_usu"));
                profile.setPas_usu(rs.getString("pas_usu"));
                profile.setApp_usu(rs.getString("app_usu"));
                profile.setApm_usu(rs.getString("apm_usu"));
                profile.setId_sex(rs.getInt("id_sex"));
                profile.setFna_usu(rs.getString("fna_usu"));
                profile.setId_rol(rs.getInt("id_rol"));
                profile.setCre_usu(rs.getString("cre_usu"));
                break;
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return profile;
    }

}
