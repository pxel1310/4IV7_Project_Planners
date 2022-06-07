<%@page contentType="text/html" pageEncoding="UTF-8" import="java.time.format.*"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />

<div class="container mx-auto" style="margin-top: 100px">
  <div class="row justify-content-center">
    <div class="col-md-9 col-lg-12 col-xl-10">
      <div class="card shadow-lg o-hidden border-0 my-5">
        <div class="card-body p-0">
          <div class="row" style="height: 459.359px">
            <div class="col-lg-6 d-none d-lg-flex" style="margin-top: 7px">
              <img id="img-login" src="./img/unknown.png" />
            </div>
            <div class="col-lg-6">
              <div class="p-5" style="margin-top: 54px">
                <div class="text-center">
                  <h4 class="text-dark mb-4">Iniciar Sesión</h4>
                </div>
                <form
                  class="user"
                  action="${pageContext.request.contextPath}/login"
                  method="post"
                >
                  <div class="mb-3">
                    <input
                      class="form-control form-control-user"
                      type="email"
                      id="ema_usu"
                      aria-describedby="emailHelp"
                      placeholder="Email"
                      name="ema_usu"
                      maxlength="124"
                    />
                  </div>
                  <div class="mb-3">
                    <input
                      class="form-control form-control-user"
                      type="password"
                      id="pas_usu"
                      placeholder="Contraseña"
                      name="pas_usu"
                      maxlength="30"
                    />
                  </div>
                  <div class="mb-3">
                    <div class="custom-control custom-checkbox small"></div>
                  </div>
                  <input
                    class="btn btn-primary d-block btn-user w-100"
                    type="submit"
                    style="background: #9f3d5f"
                    value="Iniciar Sesión"
                    onclick="return validarlogin()"
                  />
                  <hr />
                </form>
                <div class="text-center">
                  <a
                    class="small"
                    href="${pageContext.request.contextPath}/register.jsp"
                    >Si no tiene una cuenta regístrate aquí!</a
                  >
                </div>
                <div class="text-center" id="div-regresar">
                  <a class="small" href="index.jsp">Regresar al inicio</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />
