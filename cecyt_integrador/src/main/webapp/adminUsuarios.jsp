<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid container25" style="margin-bottom: 4rem">
  <h3 class="text-dark mb-4" id="h3-usuarios">Consulta usuarios</h3>
  <div class="card shadow">
    <div class="card-header py-3">
      <p class="text-primary m-0 fw-bold">Datos de los usuarios</p>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col">
          <div class="text-md-end dataTables_filter" id="dataTable_filter">
            <label class="form-label"
              ><input
                type="search"
                class="form-control form-control-sm"
                aria-controls="dataTable"
                placeholder="Buscar "
            /></label>
          </div>
        </div>
      </div>
      <div
        class="table-responsive table mt-2"
        id="dataTable-1"
        role="grid"
        aria-describedby="dataTable_info"
      >
        <table class="table my-0" id="dataTable">
          <thead>
            <tr>
              <th>Boleta</th>
              <th>Nombre</th>
              <th>Apellido paterno</th>
              <th>Apellido materno</th>
              <th>Sexo</th>
              <th>Fecha de nacimiento</th>
              <th>Email</th>
              <th>Password</th>
              <th>Rol</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${usuarios}" var="u">
              <tr>
                <td>${u.bol_usu}</td>
                <td>${u.nom_usu}</td>
                <td>${u.app_usu}</td>
                <td>${u.apm_usu}</td>
                <td>${u.id_sex}</td>
                <td>${u.fna_usu}</td>
                <td>${u.ema_usu}</td>
                <td>${u.pas_usu}</td>
                <td>${u.id_rol}</td>
                <td>
                  <a href="${pageContext.request.contextPath}/editProfile.jsp?bol_usu=${u.bol_usu}">
                    <button
                            class="btn btn-main btn btn-outline-info btn-circle btn-lg btn-circle ml-2"
                            id="btn-admin"
                            type="button"
                    >
                      <i class="far fa-edit"></i></button>
                </a>
                </td>
              </tr>
            </c:forEach>
        </table>
      </div>
      <div class="row"></div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />
