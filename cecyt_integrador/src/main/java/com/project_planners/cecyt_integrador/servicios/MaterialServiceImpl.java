package com.project_planners.cecyt_integrador.servicios;


import com.project_planners.cecyt_integrador.modelos.Material;
import com.project_planners.cecyt_integrador.repositorios.MaterialRepository;
import com.project_planners.cecyt_integrador.repositorios.MaterialRepositoryImpl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Optional;

public class MaterialServiceImpl implements MaterialService{
    private MaterialRepository materialRepository;

    public MaterialServiceImpl(Connection connection) {
        this.materialRepository = new MaterialRepositoryImpl(connection);
    }

}
