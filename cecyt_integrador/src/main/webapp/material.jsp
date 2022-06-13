<%@page contentType="text/html" pageEncoding="UTF-8"
import="com.project_planners.cecyt_integrador.modelos.Material" %> <%@ page
import="com.project_planners.cecyt_integrador.modelos.Extra"%> <% int id_sem =
(int)session.getAttribute("id_sem");%>
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
    <link rel="stylesheet" href="./css/styles.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css"
    />
  </head>

  <body id="page-top">
    <div id="wrapper">
      <nav
        class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0 navbar-izquierdo"
        style="background: #2e2826"
      >
        <div
          class="container-fluid d-flex flex-column p-0"
          style="margin-top: 1.5rem"
        >
          <a
            class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0"
            href="#"
          >
            <div class="sidebar-brand-icon rotate-n-15" style="margin-top: 2rem;">
              <i class="fas fa-laugh-wink"></i>
            </div>
          </a>
          <hr class="sidebar-divider my-0" />
          <ul class="navbar-nav text-light" id="accordionSidebar">
            <hr class="sidebar-divider" />
            <%if(id_sem >0){%>
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown">
                  <a
                    class="dropdown-toggle text-light"
                    aria-expanded="false"
                    data-bs-toggle="dropdown"
                    >Tercer Semestre</a
                  >
                  <div class="dropdown-menu">
                    <a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=1"
                      >APTI I</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=2"
                      >LPTI I</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=3"
                      >POO</a
                    >
                  </div>
                </div>
              </div>
          <%}; if(id_sem >1){%>
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown">
                  <a
                    class="dropdown-toggle text-light"
                    aria-expanded="false"
                    data-bs-toggle="dropdown"
                    >Cuarto Semestre</a
                  >
                  <div class="dropdown-menu">
                    <a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=4"
                      >APTI II</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=5"
                      >Base de datos</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=6"
                      >LPTI II</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=7"
                      >PSW</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=8"
                      >TPPC</a
                    >
                  </div>
                </div>
              </div>
            </li>
            <%}; if(id_sem >2){%>
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown">
                  <a
                    class="dropdown-toggle text-light"
                    aria-expanded="false"
                    data-bs-toggle="dropdown"
                    >Quinto Semestre</a
                  >
                  <div class="dropdown-menu">
                    <a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=9"
                      >Automatización de Pruebas</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=10"
                      >Desarrollo Humano y Personal</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=11"
                      >Ingeniería de Pruebas</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=12"
                      >Sistemas Distribuidos</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=13"
                      >LPTI III</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=14"
                      >Seguridad Web y Aplicaciones</a
                    >
                  </div>
                </div>
              </div>
            </li>
            <%}; if(id_sem >3){%>
            <li class="nav-item">
              <div class="d-flex justify-content-center" id="div-link-material">
                <div class="nav-item dropdown">
                  <a
                    class="dropdown-toggle text-light"
                    aria-expanded="false"
                    data-bs-toggle="dropdown"
                    >Sexto Semestre</a
                  >
                  <div class="dropdown-menu">
                    <a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=15"
                      >Ingeniería de Software Básica</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=16"
                      >LBTI IV</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=17"
                      >Métodos Ágiles Programación</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=18"
                      >Plan de Negocios</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=19"
                      >Proyecto Integrador</a
                    ><a
                      class="dropdown-item"
                      href="${pageContext.request.contextPath}/material.jsp?id_asi=20"
                      >Soporte de Software</a
                    >
                  </div>
                </div>
              </div>
            </li>
            <%};%>
          </ul>
        </div>
      </nav>
      <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
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
          <% int id_asi= Integer.parseInt(request.getParameter("id_asi"));
          Material mat = Material.getMaterial(id_asi); Extra extra =
          Extra.getExtra(id_asi);%>
          <div class="container-fluid" style="margin-top: 2rem">
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
                      <h3 class="text-muted card-subtitle mb-2">Competencia</h3>
                      <pre><%=mat.getCon_cop()%></pre>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col" style="margin-bottom: 1rem">
                    <div class="card">
                      <div class="card-body">
                        <h3 class="text-muted card-subtitle mb-2">RAP</h3>
                        <pre><%=mat.getCon_rap()%></pre>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col" style="margin-bottom: 1rem">
                      <div class="card">
                        <div class="card-body">
                          <h3 class="text-muted card-subtitle mb-2">
                            Bibliografía Documental
                          </h3>
                          <pre><%=mat.getCon_bib()%></pre>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col">
                      <div class="card">
                        <div class="card-body">
                          <div class="row">
                            <div class="col">
                              <div class="card">
                                <div class="card-body">
                                  <h3 class="text-muted card-subtitle mb-2">
                                    Documento oficial
                                  </h3>
                                  <iframe
                                    src="<%=mat.getUrl_pdf()%>"
                                    frameborder="0"
                                    style="height: 23rem; width: 100%"
                                  ></iframe>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <div class="card">
                  <div class="card-body">
                    <h3 class="text-muted card-subtitle mb-2">
                      Materiales del profesor
                    </h3>
                    <div class="row">
                      <% String ur1 =extra.getUr1_ext(); if(ur1 != null){ %>
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <iframe
                              src="<%=ur1%>"
                              frameborder="0"
                              style="height: 23rem; width: 100%"
                            ></iframe>
                          </div>
                        </div>
                      </div>
                      <%}
                        if(ur1 == null){%>
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <h3 class="text-muted card-subtitle mb-2">
                              Ninguno Profesor ha subido algo material
                            </h3>
                          </div>
                        </div>
                      </div>
                      <%} String ur2 =extra.getUr2_ext();
                          if(ur2 != null){%>
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <iframe
                              src="<%=ur2%>"
                              frameborder="0"
                              style="height: 23rem; width: 100%"
                            ></iframe>
                          </div>
                        </div>
                      </div>
                      <%}
                          if(ur2 == null){%>
                      <div class="col">
                        <div class="card">
                          <div class="card-body">
                            <h3 class="text-muted card-subtitle mb-2">
                              Ninguno Profesor ha subido algo material
                            </h3>
                          </div>
                        </div>
                      </div>
                      <%}%>
                    </div>
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
  </body>
</html>
