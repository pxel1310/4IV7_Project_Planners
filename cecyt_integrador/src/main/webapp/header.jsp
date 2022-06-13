<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <link rel="shortcut icon" type="image/x-icon" href="img/icon.png" />
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
    <link rel="stylesheet" href="./css/Manage-Users.css" />
    <link rel="stylesheet" href="./css/styles.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css"
    />
  </head>

  <body>
    <nav
      id="navbar-main"
      class="navbar navbar-dark navbar-expand-md bg-dark py-3"
      style="background: #9f3d5f !important"
    >
      <div class="container">
        <a class="navbar-brand d-flex align-items-center" href="#">
          <span
            class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon"
          >
            <img id="img-nav" src="./img/logo.png" />
          </span>
        </a>
        <button
          class="navbar-toggler"
          data-bs-toggle="collapse"
          data-bs-target="#navcol-1"
        >
          <span class="visually-hidden">Toggle navigation</span>
          <span class="navbar-toggler-icon"></span>
        </button>
        <div id="navcol-1" class="collapse navbar-collapse">
          <ul class="navbar-nav me-auto">
            <li class="nav-item">
              <a class="nav-link active" href="${pageContext.request.contextPath}/${not empty sessionScope.ema_usu? "inicio.jsp": "login"}">
                ${not empty sessionScope.ema_usu? "Inicio": "Requieres Iniciar Sesión"}</a>
            </li>
            <li class="nav-item">
              <a
                class="nav-link"
                href="${pageContext.request.contextPath}/material.jsp?id_asi=1"
                >Consultar Material</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link"
                href="${pageContext.request.contextPath}/editarPerfil?bol_usu=${sessionScope.bol_usu}"
                >Editar Perfil</a
              >
            </li>
          </ul>
          <div class="dropdown">
            <a
              class="dropdown-toggle text-light nav-link"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              href="#"
            >
              <span><i class="far fa-user"></i></span>
            </a>
            <div class="dropdown-menu">
                <p class="dropdown-item" href="#" role="button"
                   data-bs-toggle="dropdown" aria-expanded="false">Boleta: ${not empty sessionScope.bol_usu? sessionScope.bol_usu: ""}</p>
                  <p class="dropdown-item" href="#" role="button"
                     data-bs-toggle="dropdown" aria-expanded="false">Nombre: ${not empty sessionScope.nom_usu? sessionScope.nom_usu: ""}</p>
                <a class="dropdown-item"
                  href="${pageContext.request.contextPath}/${not empty sessionScope.ema_usu? "logout": "login"}">
                  ${not empty sessionScope.ema_usu? "Cerrar Sesión": "Iniciar Sesión"}
                </a>
            </div>
          </div>
        </div>
      </div>
    </nav>
