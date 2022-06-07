<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
<jsp:include page="header.jsp" />
    <div class="container py-4 py-xl-5">
      <div class="row gy-4 gy-md-0">
        <div
          class="col-md-6 col-xxl-6 offset-xxl-0 text-center text-md-start d-flex d-sm-flex d-md-flex justify-content-center align-items-center justify-content-md-start align-items-md-center justify-content-xl-center"
        >
          <div style="max-width: 500px">
            <h2 class="text-uppercase fw-bold">Material<br /></h2>
            <p class="fs-5 my-3">
              <strong
                >Consulta el material de las materías de programación de tu
                semestre. Encuentra la información por asignaturas,&nbsp; donde
                encontraras referencias bibliográficas y las competencias
                particulares de la asignatura.</strong
              ><br /><br />
            </p>
            <a class="btn btn-main btn-lg me-2" role="button" href="${pageContext.request.contextPath}/material.jsp?id_asi=1"
              >Consultar</a
            >
          </div>
        </div>
        <div class="col-md-6 col-xxl-6">
          <div class="p-xl-5 m-xl-5">
            <img
              class="rounded img-fluid w-100 fit-cover"
              style="min-height: 300px"
              src="./img/miniblog.jpg"
            />
          </div>
        </div>
      </div>
    </div>
    <div class="container py-4 py-xl-5">
      <div class="row gy-4 row-cols-1 row-cols-md-2 row-cols-xl-3" style="display: flex;justify-content: center;">
          <div class="col">
              <div class="card"><img id="img-cards" class="card-img-top w-100 d-block fit-cover" style="height: 200px;" src="./img/perfilC.jpg" />
                  <div class="card-body p-4">
                      <h4 class="card-title">Perfil<br /></h4>
                      <p class="card-text">Consulta y edita los datos de tu perfil si es que lo necesitas, 
                        podrás cambiarlos en cualquier momento tu mismo o uno de nuestros administradores si es que así lo deseas.<br /></p>
                      <div class="d-flex">
                          <div>
                              <p class="fw-bold mb-0"></p>
                          </div>
                          <a href="${pageContext.request.contextPath}/editProfile.jsp">
                            <button class="btn btn-main" type="button" style="margin-top: 25px;">Consultar Perfil</button>
                          </a>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
    <div class="row" id="row-inicio">
      <div class="col">
        <div class="card">
          <div class="card-body">
            <h6 class="text-muted card-subtitle mb-2">Adminstrador</h6>
            <p class="card-text">
              El administrador tendra la opcion activa, esto para tener un
              control de usuarios y material.
            </p>
            <a class="card-link" href="#">Consultar usuarios</a
            ><a class="card-link" href="#">Consultar material</a>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="footer.jsp" />