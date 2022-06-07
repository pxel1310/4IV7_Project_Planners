<%@page contentType="text/html" pageEncoding="UTF-8"
import="com.project_planners.cecyt_integrador.modelos.Material" %>
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
    <link rel="stylesheet" href="./css/extra-style.css" />
    <link rel="stylesheet" href="./css/Footer-Basic.css" />
    <link rel="stylesheet" href="./css/Hero-Carousel.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="./css/Simple-Slider.css" />
  </head>

  <body id="page-top">
    <div id="wrapper">
      <nav
        class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0"
        id="navbar-izquierdo"
      >
        <div class="container-fluid d-flex flex-column p-0">
          <a
            class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0"
            href="#"
          >
            <div class="sidebar-brand-icon rotate-n-15">
              <i class="fas fa-laugh-wink"></i>
            </div>
          </a>
          <hr class="sidebar-divider my-0" />
          <ul class="navbar-nav text-light" id="accordionSidebar">
            <hr class="sidebar-divider" />
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown"><a class="dropdown-toggle text-light" aria-expanded="false" data-bs-toggle="dropdown">Tercer Semestre</a>
                    <div class="dropdown-menu"><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=1">APTI I</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=3">LPTI I</a><a class="dropdown-item" href="">POO</a></div>
                </div>
              </div>
            </li>
            <li class="nav-item"></li>
            <li class="nav-item"></li>
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown"><a class="dropdown-toggle text-light" aria-expanded="false" data-bs-toggle="dropdown" >Cuarto Semestre</a>
                    <div class="dropdown-menu"><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=4">APTI II</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=5">Base de datos</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=6">LPTI II</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=7">PSW</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=8">TPPC</a></div>
                </div>
            </div>
            </li>
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown"><a class="dropdown-toggle text-light" aria-expanded="false" data-bs-toggle="dropdown">Quinto Semestre</a>
                    <div class="dropdown-menu"><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=9">Automatización de Pruebas</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=10">Desarrollo Humano y Personal</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=11">Ingeniería de Pruebas</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=12">Sistemas Distribuidos</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=13">LPTI III</a><a class="dropdown-item" href="${pageContext.request.contextPath}/material.jsp?id_asi=14">Seguridad Web y Aplicaciones</a></div>
                </div>
            </div>
            </li>
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown"><a class="dropdown-toggle text-light" aria-expanded="false" data-bs-toggle="dropdown">Sexto Semestre</a>
                    <div class="dropdown-menu"><a class="dropdown-item" href="#">Ingeniería de Software Básica</a><a class="dropdown-item" href="#">LBTI IV</a><a class="dropdown-item" href="#">Métodos Ágiles Programación</a><a class="dropdown-item" href="#">Plan de Negocios</a><a class="dropdown-item" href="#">Proyecto Integrador</a><a class="dropdown-item" href="#">Soporte de Software</a></div>
                </div>
            </div>
            </li>
          </ul>
        </div>
      </nav>
      <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
          <nav class="navbar navbar-light navbar-expand-md" id="navbar1">
            <div class="container-fluid">
              <button
                data-bs-toggle="collapse"
                class="navbar-toggler"
                data-bs-target="#navcol-2"
              >
                <span class="visually-hidden">Toggle navigation</span
                ><span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navcol-2">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <img id="logo-img" src="./img/logo.png" />
                  </li>
                  <li class="nav-item"><a class="nav-link" id="link" style="margin-top: 2.4rem;"
                    href="${pageContext.request.contextPath}/${not empty sessionScope.username? "inicio.jsp": "login"}">
                    ${not empty sessionScope.username? "Inicio": "Requieres Iniciar Sesión"}</a>
                  </li>
                  <li class="nav-item">
                    <a
                      class="nav-link"
                      id="link"
                      href="#"
                      style="margin-top: 2.4rem"
                      >Consultar Material</a
                    >
                  </li>
                </ul>
              </div>
              <ul class="navbar-nav" id="nav-derecho-1">
                <li class="nav-item dropdown">
                  <a
                    class="nav-link"
                    id="link-perfil"
                    href="#"
                    id="navbarDropdown"
                    role="button"
                    data-bs-toggle="dropdown"
                    aria-expanded="false"
                  >
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
          <% int id_asi= Integer.parseInt(request.getParameter("id_asi"));
          Material mat = Material.getMaterial(id_asi); %>
          <div
            class="container-fluid"
            id="material-container"
            style="margin-top: 2rem"
          >
            <div
              class="d-sm-flex justify-content-between align-items-center mb-4"
            >
              <h3 class="text-dark mb-0"><%=mat.getNom_asi()%></h3>
            </div>
            <div class="row">
              <div class="col" style="margin-bottom: 1rem">
                <div class="card">
                  <div class="card-body">
                    <pre><%=mat.getCon_cog()%></pre>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col" style="margin-bottom: 1rem">
                  <div class="card">
                    <div class="card-body">
                      <h6 class="text-muted card-subtitle mb-2">Competencia</h6>
                      <pre><%=mat.getCon_cop()%></pre>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col" style="margin-bottom: 1rem">
                    <div class="card">
                      <div class="card-body">
                        <h6 class="text-muted card-subtitle mb-2">RAP</h6>
                        <pre><%=mat.getCon_rap()%></pre>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col" style="margin-bottom: 1rem">
                      <div class="card">
                        <div class="card-body">
                          <h6 class="text-muted card-subtitle mb-2">
                            Bibliografía Documental&nbsp;
                          </h6>
                          <pre><%=mat.getCon_bib()%></pre>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <a class="border rounded d-inline scroll-to-top" href="#page-top"
              ><i class="fas fa-angle-up"></i
            ></a>
          </div>
          <jsp:include page="footer.jsp" />
  
