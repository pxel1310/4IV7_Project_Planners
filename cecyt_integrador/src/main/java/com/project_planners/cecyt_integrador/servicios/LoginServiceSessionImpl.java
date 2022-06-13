package com.project_planners.cecyt_integrador.servicios;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.Optional;

public class LoginServiceSessionImpl implements LoginService{
    @Override
    public Optional<String> getUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String ema_usu = (String) session.getAttribute("ema_usu");
        if (ema_usu != null) {
            return Optional.of(ema_usu);
        }
        return Optional.empty();
    }
}
