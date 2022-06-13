package com.project_planners.cecyt_integrador.modelos;

import com.project_planners.cecyt_integrador.util.ConexionBaseDatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Extra {
    Integer id_ext;
    String ur1_ext;
    String ur2_ext;
    Integer id_asi;

    public String getUr2_ext() {
        return ur2_ext;
    }

    public void setUr2_ext(String ur2_ext) {
        this.ur2_ext = ur2_ext;
    }

    public Integer getId_ext() {
        return id_ext;
    }

    public void setId_ext(Integer id_ext) {
        this.id_ext = id_ext;
    }

    public String getUr1_ext() {
        return ur1_ext;
    }

    public void setUr1_ext(String ur1_ext) {
        this.ur1_ext = ur1_ext;
    }

    public Integer getId_asi() {
        return id_asi;
    }

    public void setId_asi(Integer id_asi) {
        this.id_asi = id_asi;
    }

    public static Extra getExtra(int id_asi){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Extra extra = new Extra();
        try{
            con = ConexionBaseDatos.getConnection();

            String sql;
            sql = "SELECT * FROM extra WHERE id_asi = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id_asi);
            rs = ps.executeQuery();

            while(rs.next()){
                extra.setId_ext(rs.getInt("id_ext"));
                extra.setId_asi(rs.getInt("id_asi"));
                extra.setUr1_ext(rs.getString("ur1_ext"));
                extra.setUr2_ext(rs.getString("ur2_ext"));
                break;
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return extra;
    }
}
