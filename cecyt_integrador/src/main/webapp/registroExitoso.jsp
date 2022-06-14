<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<div class="container mx-auto" style="margin-top: 40px">
  <div class="row justify-content-center">
    <div class="col-md-9 col-lg-12 col-xl-10">
      <div class="card shadow-lg o-hidden border-0 my-5">
        <div class="card-body p-0">
          <div class="row" style="height: 459.359px">
            <div class="col-lg-6 d-none d-lg-flex" style="margin-top: 7px">
              <img
                id="img-login"
                src="./img/unknown.png"
                style="
                  display: flex;
                  max-width: 100%;
                  max-height: 75%;
                  margin-top: 3rem;
                  margin-left: 3rem;
                  border-radius: 15px;
                "
              />
            </div>
            <div class="col-lg-6 top-50 p-5" id="div-bienvenido">
              <div class="text-center">
                <h1 class="text-dark mb-4" style="margin-top: 3rem">
                  Bienvenido, has creado una cuenta con éxito
                </h1>
              </div>
              <div class="text-center">
                <a
                  class="small nav-link"
                  href="${pageContext.request.contextPath}/login.html"
                  >Iniciar Sesión</a
                >
              </div>
              <div class="text-center">
                <a class="small nav-link" href="index.jsp">Ir al inicio</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />