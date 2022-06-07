package com.project_planners.cecyt_integrador.controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.project_planners.cecyt_integrador.modelos.Usuario;
import com.project_planners.cecyt_integrador.servicios.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Optional;

@WebServlet({ "/login", "/login.html" })
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
                        "                                            Bienvenido , has iniciado sesión con el correo:&nbsp;\n" +
                        "                                        </h1>\n" +
                        "                                    </div>\n" +
                        "                                    <div class=\"text-center\">\n" +
                        "                                        <h2 class=\"text-dark\">"+ usernameOptional.get() +"</h2>\n" +
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
            req.setAttribute("title", req.getAttribute("title") + ": Login");
            getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("ema_usu");
        String password = req.getParameter("pas_usu");

        UsuarioService service = new UsuarioServiceImpl((Connection) req.getAttribute("conn"));
        Optional<Usuario> usuarioOptional = service.login(username, password);
        if (usuarioOptional.isPresent()) {
            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            resp.sendRedirect(req.getContextPath() + "/login.html");
        } else {
            resp.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Lo sentimos no esta autorizado para ingresar a esta página!");
        }
    }
}
