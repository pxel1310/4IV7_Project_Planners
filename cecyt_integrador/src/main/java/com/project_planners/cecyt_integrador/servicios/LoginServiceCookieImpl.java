package com.project_planners.cecyt_integrador.servicios;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

import java.util.Arrays;
import java.util.Optional;

public class LoginServiceCookieImpl implements LoginService {
    @Override
    public Optional<String> getUser(HttpServletRequest req) {
        Cookie[] cookies = req.getCookies() != null ? req.getCookies(): new Cookie[0];
        return Arrays.stream(cookies)
                .filter(c-> "ema_usu".equals(c.getName()))
                .map(Cookie::getValue)
                .findAny();
    }
}
