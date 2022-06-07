package com.project_planners.cecyt_integrador.repositorios;

import com.project_planners.cecyt_integrador.modelos.Material;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MaterialRepositoryImpl implements MaterialRepository {
    private Connection conn;

    public MaterialRepositoryImpl(Connection conn) {
        this.conn = conn;
    }


    private Material getMaterial(ResultSet rs) throws SQLException {
        Material material = new Material();
        material.setNom_asi(rs.getString("nom_asi"));
        material.setCon_cog(rs.getString("con_cog"));
        material.setCon_bib(rs.getString("con_bib"));
        material.setCon_cop(rs.getString("con_cop"));
        material.setCon_rap(rs.getString("con_rap"));
        return material;
    }
}
