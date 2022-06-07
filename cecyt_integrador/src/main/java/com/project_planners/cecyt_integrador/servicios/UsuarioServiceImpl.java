package com.project_planners.cecyt_integrador.servicios;

import com.project_planners.cecyt_integrador.modelos.Situacion;
import com.project_planners.cecyt_integrador.modelos.Usuario;
import com.project_planners.cecyt_integrador.repositorios.UsuarioRepository;
import com.project_planners.cecyt_integrador.repositorios.UsuarioRepositoryImpl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Optional;

public class UsuarioServiceImpl implements UsuarioService {

    private UsuarioRepository usuarioRepository;

    public UsuarioServiceImpl(Connection connection) {
        this.usuarioRepository = new UsuarioRepositoryImpl(connection);
    }

    @Override
    public Optional<Usuario> login(String username, String password) {
        try {
            return Optional.ofNullable(usuarioRepository.porEma_usu(username)).filter(u -> u.getPas_usu().equals(password));
        } catch (SQLException e) {
            throw new ServiceJdbcException(e.getMessage(), e.getCause());
        }
    }

    @Override
    public void registrar(Usuario usuario) {
        try {
            usuarioRepository.registrar(usuario);
        } catch (SQLException e) {
            throw new ServiceJdbcException(e.getMessage(), e.getCause());
        }
    }

    @Override
    public void situacion(Situacion situacion) {
        try {
            usuarioRepository.situacion(situacion);
        } catch (SQLException e) {
            throw new ServiceJdbcException(e.getMessage(), e.getCause());
        }
    }

}
