package com.project_planners.cecyt_integrador.controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.project_planners.cecyt_integrador.modelos.Usuario;
import com.project_planners.cecyt_integrador.modelos.Situacion;
import com.project_planners.cecyt_integrador.servicios.*;

import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@WebServlet("/editarPerfil")
public class EditarPerfilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginService auth = new LoginServiceSessionImpl();
        Optional<String> usernameOptional = auth.getUser(req);
        Usuario usuario = new Usuario();
        req.setAttribute("usuario", usuario);
        req.setAttribute("title", req.getAttribute("title") + ": Editar el usuario");

        getServletContext().getRequestDispatcher("/editarAdmin.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Connection conn = (Connection) req.getAttribute("conn");
        UsuarioService service = new UsuarioServiceImpl(conn);

        Integer bol_usu = Integer.parseInt(req.getParameter("bol_usu"));
        String ema_usu = req.getParameter("ema_usu");
        String nom_usu = req.getParameter("nom_usu");
        String pas_usu = req.getParameter("pas_usu");
        String app_usu = req.getParameter("app_usu");
        String apm_usu = req.getParameter("apm_usu");
        Integer id_sex = Integer.parseInt(req.getParameter("id_sex"));
        String fna_usu = req.getParameter("fna_usu");

        Integer bol_usu1 = Integer.parseInt(req.getParameter("bol_usu"));
        Integer id_gru = Integer.parseInt(req.getParameter("id_gru"));
        Integer id_tur = Integer.parseInt(req.getParameter("id_tur"));
        Integer id_esp = Integer.parseInt(req.getParameter("id_esp"));
        Integer id_sem = Integer.parseInt(req.getParameter("id_sem"));
        Map<String, String> errores = new HashMap<>();

        Usuario usuario = new Usuario();
        Situacion situacion = new Situacion();

        usuario.setBol_usu(bol_usu);
        usuario.setEma_usu(ema_usu);
        usuario.setNom_usu(nom_usu);
        usuario.setPas_usu(pas_usu);
        usuario.setApp_usu(app_usu);
        usuario.setApm_usu(apm_usu);
        usuario.setId_sex(id_sex);
        usuario.setFna_usu(fna_usu);

        situacion.setId_gru(id_gru);
        situacion.setBol_usu(bol_usu1);
        situacion.setId_sem(id_sem);
        situacion.setId_tur(id_tur);
        situacion.setId_esp(id_esp);


        if (errores.isEmpty()) {
            service.guardar(usuario);
            service.guardarSit(situacion);
            resp.sendRedirect(req.getContextPath() + "/inicio.jsp");
        } else {
            req.setAttribute("errores", errores);
            req.setAttribute("usuario", usuario);
            req.setAttribute("title", req.getAttribute("title") + ": Formulario de usuario");
            getServletContext().getRequestDispatcher("/editarAdmin.jsp").forward(req, resp);
        }
    }
}
