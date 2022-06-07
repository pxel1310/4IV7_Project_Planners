package com.project_planners.cecyt_integrador.filtros;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.project_planners.cecyt_integrador.servicios.LoginService;
import com.project_planners.cecyt_integrador.servicios.LoginServiceSessionImpl;

import java.io.IOException;
import java.util.Optional;

@WebFilter({"/material.jsp", "/inicio.jsp", "/adminUsuarios.jsp", "/editProfile.jsp"})
public class LoginFiltro implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        LoginService service = new LoginServiceSessionImpl();
        Optional<String> username = service.getUser((HttpServletRequest) request);
        if (username.isPresent()) {
            chain.doFilter(request, response);
        } else {
            ((HttpServletResponse)response).sendError(HttpServletResponse.SC_UNAUTHORIZED,
                    "Lo sentimos no estas autorizado para ingresar a esta pagina!");
        }
    }
}
