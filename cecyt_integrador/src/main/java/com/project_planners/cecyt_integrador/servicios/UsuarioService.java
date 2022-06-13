package com.project_planners.cecyt_integrador.servicios;

import com.project_planners.cecyt_integrador.modelos.Material;
import com.project_planners.cecyt_integrador.modelos.Situacion;
import com.project_planners.cecyt_integrador.modelos.Usuario;

import java.util.List;
import java.util.Optional;

public interface UsuarioService {
    Optional<Usuario> login(String username, String password);
    void registrar(Usuario usuario);
    void situacion(Situacion situacion);
    List<Usuario> listar();

    void guardar(Usuario usuario);

    void guardarSit(Situacion situacion);
}
