package com.project_planners.cecyt_integrador.servicios;

import jakarta.servlet.http.HttpServletRequest;

import java.util.Optional;

public interface LoginService {
    Optional<String> getUser(HttpServletRequest request);
}
