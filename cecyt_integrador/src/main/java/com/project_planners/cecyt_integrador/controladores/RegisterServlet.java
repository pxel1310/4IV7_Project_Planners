package com.project_planners.cecyt_integrador.controladores;

import com.project_planners.cecyt_integrador.modelos.Situacion;
import com.project_planners.cecyt_integrador.servicios.LoginService;
import com.project_planners.cecyt_integrador.servicios.LoginServiceSessionImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.project_planners.cecyt_integrador.modelos.Usuario;
import com.project_planners.cecyt_integrador.servicios.UsuarioService;
import com.project_planners.cecyt_integrador.servicios.UsuarioServiceImpl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@WebServlet({"/register", "/register.html"})
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginService auth = new LoginServiceSessionImpl();
        Optional<String> usernameOptional = auth.getUser(req);

        if (usernameOptional.isPresent()) {
            resp.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = resp.getWriter()) {
                out.println("<!DOCTYPE html>\n" +
                        "<html>\n" +
                        "    <head>\n" +
                        "        <meta charset=\"utf-8\" />\n" +
                        "        <meta\n" +
                        "            name=\"viewport\"\n" +
                        "            content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\"\n" +
                        "        />\n" +
                        "        <title>Bienvenido " + usernameOptional.get() + "</title>\n" +
                        "        <link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\" />\n" +
                        "        <link\n" +
                        "            rel=\"stylesheet\"\n" +
                        "            href=\"https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap\"\n" +
                        "        />\n" +
                        "        <link rel=\"stylesheet\" href=\"./fonts/fontawesome-all.min.css\" />\n" +
                        "        <link rel=\"stylesheet\" href=\"./css/dh-navbar-inverse.css\" />\n" +
                        "        <link rel=\"stylesheet\" href=\"./css/extra-style.css\" />\n" +
                        "        <link rel=\"stylesheet\" href=\"./css/Footer-Basic.css\" />\n" +
                        "        <link rel=\"stylesheet\" href=\"./css/Hero-Carousel.css\" />\n" +
                        "        <link\n" +
                        "            rel=\"stylesheet\"\n" +
                        "            href=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css\"\n" +
                        "        />\n" +
                        "        <link rel=\"stylesheet\" href=\"./css/Simple-Slider.css\" />\n" +
                        "    </head>\n" +
                        "\n" +
                        "    <body class=\"bg-gradient-primary\" style=\"background: #9f3d5f\">\n" +
                        "        <div class=\"container mx-auto\" style=\"margin-top: 100px\">\n" +
                        "            <div class=\"row justify-content-center\">\n" +
                        "                <div class=\"col-md-9 col-lg-12 col-xl-10\">\n" +
                        "                    <div class=\"card shadow-lg o-hidden border-0 my-5\">\n" +
                        "                        <div class=\"card-body p-0\">\n" +
                        "                            <div class=\"row\" style=\"height: 459.359px\">\n" +
                        "                                <div\n" +
                        "                                    class=\"col-lg-6 d-none d-lg-flex\"\n" +
                        "                                    style=\"margin-top: 7px\"\n" +
                        "                                >\n" +
                        "                                    <img\n" +
                        "                                        id=\"img-login\"\n" +
                        "                                        src=\"./img/unknown.png\"\n" +
                        "                                    />\n" +
                        "                                </div>\n" +
                        "                                <div\n" +
                        "                                    class=\"col-lg-6 top-50 p-5\"\n" +
                        "                                    id=\"div-bienvenido\"\n" +
                        "                                >\n" +
                        "                                    <div class=\"text-center\">\n" +
                        "                                        <h1 class=\"text-dark mb-4\">\n" +
                        "                                            Disculpa , has iniciado sesión con el correo:&nbsp;\n" +
                        "                                        </h1>\n" +
                        "                                    </div>\n" +
                        "                                    <div class=\"text-center\">\n" +
                        "                                        <h2 class=\"text-dark\">"+ usernameOptional.get() +"</h2>\n" +
                        "                                        <h2 class=\"text-dark\">No puedes crear una cuenta</h2>\n"+
                        "                                    </div>\n" +
                        "                                    <div class=\"text-center\" id=\"div-regresar\">\n" +
                        "                                        <a class=\"small\" href='" + req.getContextPath() + "/inicio.jsp'>Ir al inicio</a\n" +
                        "                                        >\n" +
                        "                                    </div>\n" +
                        "                                    <div\n" +
                        "                                        class=\"text-center\"\n" +
                        "                                        id=\"div-regresar-1\"\n" +
                        "                                    >\n" +
                        "                                        <a class=\"small\" href='" + req.getContextPath() + "/logout'>Cerrar Sesión</a\n" +
                        "                                        >\n" +
                        "                                    </div>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "        <script src=\"./js/bootstrap.min.js\"></script>\n" +
                        "        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js\"></script>\n" +
                        "        <script src=\"./js/Simple-Slider.js\"></script>\n" +
                        "        <script src=\"./js/theme.js\"></script>\n" +
                        "    </body>\n" +
                        "</html>\n");
            }
        } else {
            req.setAttribute("title", req.getAttribute("title") + ": Register");
            getServletContext().getRequestDispatcher("/register.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Connection conn = (Connection) req.getAttribute("conn");
        UsuarioService service = new UsuarioServiceImpl(conn);


        Integer bol_usu = Integer.parseInt(req.getParameter("bol_usu"));
        String nom_usu = req.getParameter("nom_usu");
        String app_usu = req.getParameter("app_usu");
        String apm_usu = req.getParameter("apm_usu");
        Integer id_sex = Integer.parseInt(req.getParameter("id_sex"));
        String fna_usu = req.getParameter("fna_usu");
        String ema_usu = req.getParameter("ema_usu");
        String pas_usu = req.getParameter("pas_usu");
        Integer id_rol = Integer.parseInt(req.getParameter("id_rol"));

        Integer id_gru = Integer.parseInt(req.getParameter("id_gru"));
        Integer id_tur = Integer.parseInt(req.getParameter("id_tur"));
        Integer id_esp = Integer.parseInt(req.getParameter("id_esp"));
        Integer id_sem = Integer.parseInt(req.getParameter("id_sem"));

        Map<String, String> errores = new HashMap<>();

        if (nom_usu == null || nom_usu.isBlank()) {
            errores.put("nom_usu", "El username es requerido!");
        }
        if (app_usu == null || app_usu.isBlank()) {
            errores.put("app_usu", "El apellido paterno es requerido!");
        }
        if (apm_usu == null || apm_usu.isBlank()) {
            errores.put("apm_usu", "El apellido materno es requerido!");
        }
        if (ema_usu == null || ema_usu.isBlank()) {
            errores.put("ema_usu", "El email es requerido!");
        }
        if (pas_usu == null || pas_usu.isBlank()) {
            errores.put("pas_usu", "La contraseña es requerido!");
        }
        Usuario usuario = new Usuario();
        Situacion situacion = new Situacion();

        usuario.setBol_usu(bol_usu);
        usuario.setNom_usu(nom_usu);
        usuario.setApp_usu(app_usu);
        usuario.setApm_usu(apm_usu);
        usuario.setEma_usu(ema_usu);
        usuario.setPas_usu(pas_usu);
        usuario.setId_sex(id_sex);
        usuario.setFna_usu(fna_usu);
        usuario.setId_rol(id_rol);

        situacion.setBol_usu(bol_usu);
        situacion.setId_gru(id_gru);
        situacion.setId_tur(id_tur);
        situacion.setId_esp(id_esp);
        situacion.setId_sem(id_sem);


        if (errores.isEmpty()) {
            service.registrar(usuario);
            service.situacion(situacion);
            resp.sendRedirect(req.getContextPath() + "/registroExitoso.jsp");
        } else {
            req.setAttribute("errores", errores);
            req.setAttribute("usuario", usuario);
            req.setAttribute("situacion", situacion);
            req.setAttribute("title", req.getAttribute("title") + ": Formulario de usuario");
            getServletContext().getRequestDispatcher("/register.jsp").forward(req, resp);
        }
    }
}
