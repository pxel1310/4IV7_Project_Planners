package com.project_planners.cecyt_integrador.repositorios;

import java.sql.SQLException;
import java.util.List;

public interface Repository<T> {
    void registrar(T t) throws SQLException;
    List<T> listar() throws SQLException;

}
