package com.project_planners.cecyt_integrador.repositorios;

import com.project_planners.cecyt_integrador.modelos.Situacion;
import com.project_planners.cecyt_integrador.modelos.Usuario;

import java.sql.SQLException;

public interface UsuarioRepository extends Repository<Usuario>{

    void registrar(Usuario usuario) throws SQLException;

    void situacion(Situacion situacion) throws SQLException;

    Usuario porEma_usu(String ema_usu) throws SQLException;
    void guardarSit(Situacion situacion) throws SQLException;
    void guardar(Usuario usuario) throws SQLException;
}
