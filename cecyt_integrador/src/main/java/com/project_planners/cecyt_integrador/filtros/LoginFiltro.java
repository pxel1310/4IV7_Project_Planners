package com.project_planners.cecyt_integrador.filtros;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.project_planners.cecyt_integrador.servicios.LoginService;
import com.project_planners.cecyt_integrador.servicios.LoginServiceSessionImpl;

import java.io.IOException;
import java.util.Optional;

@WebFilter({"/material.jsp", "/inicio.jsp", "/adminUsuarios.jsp", "/editProfile.jsp", "/editarAdmin.jsp",
        "/AdminUsuariosEditar,", "/AdminUsuarios", "/editarPerfil"})
public class LoginFiltro implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        LoginService service = new LoginServiceSessionImpl();
        Optional<String> ema_usu = service.getUser((HttpServletRequest) request);
        if (ema_usu.isPresent()) {
            chain.doFilter(request, response);
        } else {
            ((HttpServletResponse)response).sendRedirect(((HttpServletRequest) request).getContextPath() + "/401.jsp");
        }
    }
}
