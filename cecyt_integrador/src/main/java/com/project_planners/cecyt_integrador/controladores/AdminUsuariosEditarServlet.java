package com.project_planners.cecyt_integrador.controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.project_planners.cecyt_integrador.modelos.Usuario;
import com.project_planners.cecyt_integrador.servicios.UsuarioService;
import com.project_planners.cecyt_integrador.servicios.UsuarioServiceImpl;

import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/AdminUsuariosEditar")
public class AdminUsuariosEditarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn = (Connection) req.getAttribute("conn");
        UsuarioService service = new UsuarioServiceImpl(conn);

        Usuario usuario = new Usuario();

        req.setAttribute("usuario", usuario);
        req.setAttribute("title", req.getAttribute("title") + ": Registro de usuario");

        getServletContext().getRequestDispatcher("/AdminUsuarios").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Connection conn = (Connection) req.getAttribute("conn");
        UsuarioService service = new UsuarioServiceImpl(conn);

        String nom_usu = req.getParameter("nom_usu");
        String app_usu = req.getParameter("app_usu");
        String apm_usu = req.getParameter("apm_usu");
        Integer sex_id = Integer.parseInt(req.getParameter("sex_id"));
        String fna_usu = req.getParameter("fna_usu");
        String pas_usu = req.getParameter("pas_usu");
        String ema_usu = req.getParameter("ema_usu");

        Map<String, String> errores = new HashMap<>();

        if (nom_usu == null || nom_usu.isBlank()) {
            errores.put("nom_usu", "el nombre es requerido!");
        }
        if (app_usu == null || app_usu.isBlank()) {
            errores.put("app_usu", "el apellido paterno es requerido!");
        }
        if (apm_usu == null || apm_usu.isBlank()) {
            errores.put("apm_usu", "el apellido materno es requerido!");
        }
        if (pas_usu == null || pas_usu.isBlank()) {
            errores.put("pas_usu", "el password es requerido!");
        }
        Usuario usuario = new Usuario();

        usuario.setNom_usu(nom_usu);
        usuario.setApp_usu(app_usu);
        usuario.setApm_usu(apm_usu);
        usuario.setId_sex(sex_id);
        usuario.setFna_usu(fna_usu);
        usuario.setPas_usu(apm_usu);
        usuario.setEma_usu(ema_usu);

        if (errores.isEmpty()) {
            service.guardar(usuario);
            resp.sendRedirect(req.getContextPath() + "/AdminUsuarios");
        } else {
            req.setAttribute("errores", errores);
            req.setAttribute("usuario", usuario);
            req.setAttribute("title", req.getAttribute("title") + ": Actualizar de usuario");
            getServletContext().getRequestDispatcher("/editProfile.jsp").forward(req, resp);
        }
    }

}
