<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<div class="container-fluid" style="margin-bottom: 4rem">
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
              <th>Privilegio</th>
              <th>Administrar</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>2021090116</td>
              <td>Jaret</td>
              <td>Garcia</td>
              <td>Gomez</td>
              <td>Masculino</td>
              <td>2005-06-11</td>
              <td>jaretgarciagomez@gmail.com</td>
              <td>227430J</td>
              <td>Aministrador</td>
              <td>Adminstrador</td>
              <td>
                <a href="#">
                  <button
                    class="btn btn-main btn btn-outline-info btn-circle btn-lg btn-circle ml-2"
                    id="btn-admin"
                    type="button"
                  >
                    <i class="far fa-edit"></i></button></a
                ><a href="#">
                  <button
                    class="btn btn-main btn btn-outline-info btn-circle btn-lg btn-circle ml-2"
                    type="button"
                  >
                    <i class="far fa-trash-alt"></i>
                  </button>
                </a>
              </td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td><strong>Boleta</strong></td>
              <td><strong>Nombre</strong></td>
              <td>
                <strong><br />Apellido paterno<br /><br /></strong>
              </td>
              <td>
                <strong><br />Apellido materno<br /><br /></strong>
              </td>
              <td><strong>Sexo</strong></td>
              <td><strong>Fecha de nacimiento</strong></td>
              <td><strong>Email</strong></td>
              <td><strong>Password</strong></td>
              <td><strong>Rol</strong></td>
              <td><strong>Privilegio</strong></td>
              <td><strong>Administrar</strong></td>
            </tr>
          </tfoot>
        </table>
      </div>
      <div class="row"></div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />
