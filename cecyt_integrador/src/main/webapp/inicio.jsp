<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:include page="header.jsp" />
<% int rol = (int)session.getAttribute("id_rol"); %>
<div class="container py-4 py-xl-5">
  <div class="container-clock">
    <h1 id="time">00:00:00</h1>
    <p id="date">date</p>
  </div>
  <div class="row gy-4 gy-md-0">
    <div
      class="col-md-6 col-xxl-6 offset-xxl-0 text-center text-md-start d-flex d-sm-flex d-md-flex justify-content-center align-items-center justify-content-md-start align-items-md-center justify-content-xl-center"
    >
      <div style="max-width: 500px">
        <script src="./js/clock.js"></script>
        <h2 class="text-uppercase fw-bold">Material<br /></h2>
        <p class="fs-5 my-3">
          <strong
            >Consulta el material de las materías de programación de tu
            semestre. Encuentra la información por asignaturas,&nbsp; donde
            encontraras referencias bibliográficas y las competencias
            particulares de la asignatura.</strong
          ><br /><br />
        </p>
        <a
          class="btn btn-main btn-reportes btn-lg me-2"
          role="button"
          href="${pageContext.request.contextPath}/material.jsp?id_asi=1"
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
  <div class="row gy-4 gy-md-0">
    <div
      class="col-md-6 col-xxl-6 offset-xxl-0 text-center text-md-start d-flex d-sm-flex d-md-flex justify-content-center align-items-center justify-content-md-start align-items-md-center justify-content-xl-center"
    >
      <div style="max-width: 500px">
        <h2 class="text-uppercase fw-bold">Perfil<br /></h2>
        <p class="fs-5 my-3">
          <strong
            >Consulta y edita los datos de tu perfil si es que lo necesitas,
            podrás cambiarlos en cualquier momento tu mismo o uno de nuestros
            administradores si es que así lo deseas.</strong
          ><br /><br />
        </p>
        <a
          class="btn btn-primary btn-reportes btn-lg me-2"
          role="button"
          href="${pageContext.request.contextPath}/editarPerfil?bol_usu=${sessionScope.bol_usu}"
          >Editar Perfil</a
        >
      </div>
    </div>
    <div class="col-md-6 col-xxl-6">
      <div class="p-xl-5 m-xl-5">
        <img
          class="rounded img-fluid w-100 fit-cover"
          style="min-height: 300px"
          src="./img/perfilC.jpg"
        />
      </div>
    </div>
  </div>
</div>
<%if(rol > 1){%>
<div class="row" id="row-inicio">
  <div class="col">
    <div class="card">
      <div class="card-body" style="text-align: center">
        <h6 class="text-muted card-subtitle mb-2">Docente</h6>
        <p class="card-text">
          El Profesor tendra la opcion de subir material exclucivamente para los
          alumnos.
        </p>
        <form action="" method="post">
          <div class="input-group" style="margin: auto; justify-content: center;">
              <input class="form-control" type="file" />
              <select
                name="id_gru"
                class="form-select"
                id="id_gru"
              >
                <optgroup label="Tercer Semestre" id="Tercer Semestre">
                  <option value="1">
                    Administración de proyectos de tecnologías de la información
                    I
                  </option>
                  <option value="2">
                    Laboratorio de proyectos de tecnologias de la informacion I
                  </option>
                  <option value="3">Programacion Orientada a Objetos</option>
                </optgroup>
                <optgroup label="Cuarto Semestre" id="Cuarto Semestre">
                  <option value="4">
                    Administración de Proyectos de Tecnologías de la Información
                    II/option>
                  </option>
                  <option value="5">Bases de Datos</option>
                  <option value="6">
                    Laboratorio de Proyectos de Tecnologías de la Información II
                  </option>
                  <option value="7">Programación y Servicios Web</option>
                  <option value="8">
                    Técnicas de Programación Personal con Calidad
                  </option>
                </optgroup>
                <optgroup label="Quinto Semestre" id="Quinto Semestre">
                  <option value="9">Automatización de Pruebas</option>
                  <option value="10">Desarrollo Humano y Personal</option>
                  <option value="11">
                    Introducción a la Ingeniería de Pruebas
                  </option>
                  <option value="12">
                    Introducción a los Sistemas Distribuidos
                  </option>
                  <option value="13">
                    Laboratorio de Proyectos de Tecnologías de la Información
                    III
                  </option>
                  <option value="14">Seguridad Web y Aplicaciones</option>
                </optgroup>
                <optgroup label="Sexto Semestre" id="Sexto Semestre">
                  <option value="15">Soporte de Software</option>
                  <option value="16">
                    Laboratorio de Proyectos de Tecnologías de la Información IV
                  </option>
                  <option value="17">Métodos Ágiles de Programación</option>
                  <option value="18">Plan de Negocios</option>
                  <option value="19">Proyecto Integrador</option>
                  <option value="20">Soporte de Software</option>
                </optgroup>
              </select>
          </div>
          <input class="btn btn-primary btn-reportes btn-archivo" type="submit" value="Subir archivo">
        </form>
      </div>
    </div>
  </div>
<%} if(rol > 2){%>
<div class="row" id="row-inicio">
  <div class="col">
    <div class="card">
      <div class="card-body" style="text-align: center">
        <h6 class="text-muted card-subtitle mb-2">Adminstrador</h6>
        <p class="card-text">
          El administrador tendra la opcion activa, esto para tener un control
          de usuarios y material.
        </p>
        <a
          class="card-link"
          href="${pageContext.request.contextPath}/AdminUsuarios"
        >
          Consultar usuarios
        </a>
      </div>
    </div>
  </div>
</div>
<%}%>
<jsp:include page="footer.jsp" />
