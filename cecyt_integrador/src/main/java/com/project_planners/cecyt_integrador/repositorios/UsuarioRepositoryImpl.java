package com.project_planners.cecyt_integrador.repositorios;

import com.project_planners.cecyt_integrador.modelos.Situacion;
import com.project_planners.cecyt_integrador.modelos.Usuario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsuarioRepositoryImpl implements UsuarioRepository {

    private Connection conn;

    public UsuarioRepositoryImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public void registrar(Usuario usuario) throws SQLException {
        String sql;

        sql = "INSERT INTO usuarios (bol_usu, nom_usu, app_usu, apm_usu, id_sex, fna_usu, ema_usu, pas_usu, id_rol)" +
                "VALUES (?,?,?,?,?,?,?,?,?)";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, usuario.getBol_usu());
            stmt.setString(2, usuario.getNom_usu());
            stmt.setString(3, usuario.getApp_usu());
            stmt.setString(4, usuario.getApm_usu());
            stmt.setInt(5, usuario.getId_sex());
            stmt.setString(6, usuario.getFna_usu());
            stmt.setString(7, usuario.getEma_usu());
            stmt.setString(8, usuario.getPas_usu());
            stmt.setInt(9, usuario.getId_rol());

            stmt.executeUpdate();
        }
    }

    @Override
    public List<Usuario> listar() throws SQLException {
        List<Usuario> usuarios = new ArrayList<>();
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("select * from usuarios")) {
            while (rs.next()) {
                Usuario p = getUsuario(rs);
                usuarios.add(p);
            }
        }
        return usuarios;
    }

    @Override
    public void guardar(Usuario usuario) throws SQLException {
        String sql;
        sql = "update usuarios set nom_usu=?, app_usu=?, apm_usu=?, id_sex=?, fna_usu=?, pas_usu=? " +
                "where ema_usu=? and bol_usu = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, usuario.getNom_usu());
            stmt.setString(2, usuario.getApp_usu());
            stmt.setString(3, usuario.getApm_usu());
            stmt.setInt(4, usuario.getId_sex());
            stmt.setString(5, usuario.getFna_usu());
            stmt.setString(6, usuario.getPas_usu());
            stmt.setString(7, usuario.getEma_usu());
            stmt.setInt(8, usuario.getBol_usu());

            stmt.executeUpdate();
        }
    }

    @Override
    public void guardarSit(Situacion situacion) throws SQLException {
        String sql;
        sql = "update situaciones set id_gru=?, id_tur=?, id_esp=?, id_sem=? " +
                "where bol_usu = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, situacion.getId_gru());
            stmt.setInt(2, situacion.getId_tur());
            stmt.setInt(3, situacion.getId_esp());
            stmt.setInt(4, situacion.getId_sem());
            stmt.setInt(5, situacion.getBol_usu());

            stmt.executeUpdate();
        }
    }


    @Override
    public void situacion(Situacion situacion) throws SQLException {
        String sql1;
        sql1 = "INSERT INTO situaciones (bol_usu, id_gru, id_tur, id_esp, id_sem) VALUES (?,?,?,?,?)";

        try (PreparedStatement stmt1 = conn.prepareStatement(sql1)) {
            stmt1.setInt(1, situacion.getBol_usu());
            stmt1.setInt(2, situacion.getId_gru());
            stmt1.setInt(3, situacion.getId_tur());
            stmt1.setInt(4, situacion.getId_esp());
            stmt1.setInt(5, situacion.getId_sem());

            stmt1.executeUpdate();
        }
    }

    @Override
    public Usuario porEma_usu(String email) throws SQLException {
        Usuario usuario = null;
        try (PreparedStatement stmt = conn.prepareStatement("select * from usuarios where ema_usu=?")) {
            stmt.setString(1, email);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    usuario = getUsuario(rs);
                }
            }
        }
        return usuario;
    }

    private Usuario getUsuario(ResultSet rs) throws SQLException {
        Usuario usuario = new Usuario();
        usuario.setBol_usu(rs.getInt("bol_usu"));
        usuario.setNom_usu(rs.getString("nom_usu"));
        usuario.setApp_usu(rs.getString("app_usu"));
        usuario.setApm_usu(rs.getString("apm_usu"));
        usuario.setId_sex(rs.getInt("id_sex"));
        usuario.setFna_usu(rs.getString("fna_usu"));
        usuario.setEma_usu(rs.getString("ema_usu"));
        usuario.setPas_usu(rs.getString("pas_usu"));
        usuario.setCre_usu(rs.getString("cre_usu"));
        usuario.setAct_usu(rs.getInt("act_usu"));
        usuario.setId_rol(rs.getInt("id_rol"));

        return usuario;
    }

}
