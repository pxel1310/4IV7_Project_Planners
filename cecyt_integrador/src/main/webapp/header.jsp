<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="img/icon.png">
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
        />
        <title>${title}</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap"
        />
        <link rel="stylesheet" href="./fonts/fontawesome-all.min.css" />
        <link rel="stylesheet" href="./css/dh-navbar-inverse.css" />
        <link rel="stylesheet" href="./css/Footer-Basic.css" />
        <link rel="stylesheet" href="./css/Hero-Carousel.css" />
        <link rel="stylesheet" href="./css/extra-style.css">
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css"
        />
        <link rel="stylesheet" href="./css/Simple-Slider.css" />
    </head>

    <body>     
      <nav class="navbar navbar-light navbar-expand-md" id="navbar1">
        <div class="container-fluid">
          <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span>
            <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-2">
                <ul class="navbar-nav">
                    <li class="nav-item"><img id="logo-img" src="./img/logo.png"></li>
                    <li class="nav-item"><a class="nav-link" id="link" style="margin-top: 2.4rem;"
                      href="${pageContext.request.contextPath}/${not empty sessionScope.username? "inicio.jsp": "login"}">
                      ${not empty sessionScope.username? "Inicio": "Requieres Iniciar Sesión"}</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" id="link" href="${pageContext.request.contextPath}/material.jsp?id_asi=1" style="margin-top: 2.4rem;">Consultar Material</a></li>
                </ul>
            </div>
            <ul class="navbar-nav" id="nav-derecho-1">
                <li class="nav-item dropdown">
                  <a class="nav-link" id="link-perfil" href="#" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                       ${not empty sessionScope.username? sessionScope.username: "Cuenta"}
                    </a>
                    <div class="dropdown-menu">
                      <a class="dropdown-item"
                               href="${pageContext.request.contextPath}/${not empty sessionScope.username? "logout": "login"}">
                               ${not empty sessionScope.username? "Cerrar Sesión": "Iniciar Sesión"}
                            </a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    
        