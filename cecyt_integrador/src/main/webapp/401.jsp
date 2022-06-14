<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:include page="header.jsp" />
<div class="container-fluid 404-cont" style="padding-bottom: 25rem">
  <div class="text-center mt-5">
    <div class="error mx-auto" data-text="401">
      <p class="m-0">401</p>
    </div>
    <p class="text-dark mb-5 lead">
      Error 401: No tienes acceso para ingresar a esta seccion.
    </p>
    <p class="text-black-50 mb-0">
      Parece que haz intentado ingresar a otro sitio sin iniciar sesión
    </p>
    <a class="nav-link" href="index.jsp">← Regresar al inicio</a>
  </div>
</div>
<jsp:include page="footer.jsp" />