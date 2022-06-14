package com.project_planners.cecyt_integrador.controladores;

import com.project_planners.cecyt_integrador.modelos.Situacion;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.project_planners.cecyt_integrador.modelos.Usuario;
import com.project_planners.cecyt_integrador.servicios.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Optional;

@WebServlet({"/login", "/login.html"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LoginService auth = new LoginServiceSessionImpl();
        Optional<String> usernameOptional = auth.getUser(req);

        if (usernameOptional.isPresent()) {
            resp.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = resp.getWriter()) {
                out.println("<!DOCTYPE html>\n" +
                        "<html>\n" +
                        "  <head>\n" +
                        "    <meta charset=\"utf-8\" />\n" +
                        "    <meta\n" +
                        "      name=\"viewport\"\n" +
                        "      content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\"\n" +
                        "    />\n" +
                        "    <title>Bienvenido " + usernameOptional.get() + "</title>\n" +
                        "    <link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\" />\n" +
                        "    <link\n" +
                        "      rel=\"stylesheet\"\n" +
                        "      href=\"https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap\"\n" +
                        "    />\n" +
                        "    <link rel=\"stylesheet\" href=\"./fonts/fontawesome-all.min.css\" />\n" +
                        "    <link rel=\"stylesheet\" href=\"./css/styles.css\" />\n" +
                        "    <link rel=\"stylesheet\" href=\"./css/Manage-Users.css\" />\n" +
                        "    <link\n" +
                        "      rel=\"stylesheet\"\n" +
                        "      href=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css\"\n" +
                        "    />\n" +
                        "  </head>\n" +
                        "  <body class=\"bg-gradient-primary\" style=\"background: #9f3d5f\">\n" +
                        "    <div class=\"container mx-auto\" style=\"margin-top: 100px\">\n" +
                        "      <div class=\"row justify-content-center\">\n" +
                        "        <div class=\"col-md-9 col-lg-12 col-xl-10\">\n" +
                        "          <div class=\"card shadow-lg o-hidden border-0 my-5\">\n" +
                        "            <div class=\"card-body p-0\">\n" +
                        "              <div class=\"row\" style=\"height: 459.359px\">\n" +
                        "                <div class=\"col-lg-6 d-none d-lg-flex\" style=\"margin-top: 7px\">\n" +
                        "                  <img id=\"img-login\" src=\"./img/unknown.png\" />\n" +
                        "                </div>\n" +
                        "                <div class=\"col-lg-6 top-50 p-5\" id=\"div-bienvenido\">\n" +
                        "                  <div class=\"text-center\">\n" +
                        "                    <h1 class=\"text-dark mb-4\" style=\"margin-top: 3rem\">\n" +
                        "                      Bienvenido , has iniciado sesión con el correo:&nbsp;\n" +
                        "                    </h1>\n" +
                        "                  </div>\n" +
                        "                  <div class=\"text-center\">\n" +
                        "                    <h2 class=\"text-dark\">" + usernameOptional.get() + "</h2>\n" +
                        "                  </div>\n" +
                        "                  <div class=\"text-center\">\n" +
                        "                    <a\n" +
                        "                      class=\"small nav-link\"\n" +
                        "                      href='" + req.getContextPath() + "/inicio.jsp'\n" +
                        "                      >Ir al inicio</a\n" +
                        "                    >\n" +
                        "                  </div>\n" +
                        "                  <div class=\"text-center\">\n" +
                        "                    <a class=\"small nav-link\" href='" + req.getContextPath() + "/logout'\n" +
                        "                      >Cerrar Sesion</a\n" +
                        "                    >\n" +
                        "                  </div>\n" +
                        "                </div>\n" +
                        "              </div>\n" +
                        "            </div>\n" +
                        "          </div>\n" +
                        "        </div>\n" +
                        "      </div>\n" +
                        "    </div>\n" +
                        "    <script src=\"./js/bootstrap.min.js\"></script>\n" +
                        "    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js\"></script>\n" +
                        "    <script src=\"./js/Simple-Slider.js\"></script>\n" +
                        "    <script src=\"./js/theme.js\"></script>\n" +
                        "    <script src=\"./js/validar.js\"></script>\n" +
                        "  </body>\n" +
                        "</html>\n");
            }
        } else {
            req.setAttribute("title", req.getAttribute("title") + ": Login");
            getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("ema_usu");
        String password = req.getParameter("pas_usu");
        Integer boleta = Integer.parseInt(req.getParameter("bol_usu"));

        Usuario profile = Usuario.getProfile(username, password);
        Situacion pro = Situacion.getPro(boleta);

        UsuarioService service = new UsuarioServiceImpl((Connection) req.getAttribute("conn"));
        Optional<Usuario> usuarioOptional = service.login(username, password);
        if (usuarioOptional.isPresent()) {
            HttpSession session = req.getSession();
            session.setAttribute("bol_usu", profile.getBol_usu());
            session.setAttribute("ema_usu", profile.getEma_usu());
            session.setAttribute("nom_usu", profile.getNom_usu());
            session.setAttribute("pas_usu", profile.getPas_usu());
            session.setAttribute("app_usu", profile.getApp_usu());
            session.setAttribute("apm_usu", profile.getApm_usu());
            session.setAttribute("id_sex", profile.getNom_sex());
            session.setAttribute("fna_usu", profile.getFna_usu());
            session.setAttribute("cre_usu", profile.getCre_usu());
            session.setAttribute("id_rol", profile.getId_rol());

            session.setAttribute("id_gru", pro.getId_gru());
            session.setAttribute("id_tur", pro.getId_tur());
            session.setAttribute("id_esp", pro.getId_esp());
            session.setAttribute("id_sem", pro.getId_sem());

            resp.sendRedirect(req.getContextPath() + "/login.html");
        } else {
            resp.sendRedirect(req.getContextPath() + "/401.jsp");
        }
    }
}
