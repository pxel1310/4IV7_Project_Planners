<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />
<main id="main">
  <section>
    <div
      style="
        height: 500px;
        background-image: url(./img/cecyt-img01.jpg);
        background-position: center;
        background-size: cover;
      "
    >
      <div class="container h-100">
        <div class="row h-100">
          <div
            class="col-md-6 text-center text-md-start d-flex d-sm-flex d-md-flex justify-content-center align-items-center justify-content-md-start align-items-md-center justify-content-xl-center"
          >
            <div style="max-width: 350px">
              <h1 class="text-uppercase fw-bold" style="color: white">
                CECYT INTEGRADOR
              </h1>
              <p class="my-3" style="color: #ffffff">
                Empieza a aprovechar el tiempo con nuestro asistente. Maneja,
                organiza y consulta información con nuestro repositorio con
                material veridico
              </p>
              <a
                class="btn btn-lg me-2 btn-main"
                role="button"
                href="${pageContext.request.contextPath}/login.html"
                >Iniciar Sesión</a
              ><a
                class="btn btn-lg btn-outline-light btn-registrar"
                role="button"
                href="${pageContext.request.contextPath}/register.html"
                >Registrarse</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>
<div class="container py-4 py-xl-5">
  <div class="row mb-5">
    <div class="col-md-8 col-xl-6 text-center mx-auto">
      <p class="w-lg-50">Información de apoyo<br /></p>
      <h2>CECyT Integrador<br /></h2>
    </div>
  </div>
  <div class="row gy-4 row-cols-1 row-cols-md-2 row-cols-xl-3">
    <div class="col">
      <div class="card">
        <img
          class="img-fluid card-img-top w-100 d-block d-flex fit-cover"
          id="img-cards"
          src="./img/cecytmas.png"
        />
        <div class="card-body p-4">
          <p class="text-primary card-text mb-0"></p>
          <h4 class="card-title">Propósito:</h4>
          <p class="card-text">
            El propósito del “CECyT Integrador” es ofrecer al alumno del CECyT
            09 una&nbsp;<br />facilidad para la obtención de páginas web,
            material bibliográfico, de contenido veraz y completo sobre el tema
            a buscar, y principalmente la obtención del material&nbsp;<br />del
            plantel sobre el cual será mostrado a base de de los datos que usted
            proporcione.
          </p>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <img
          class="img-fluid card-img-top w-100 d-block d-flex fit-cover"
          id="img-cards"
          style="height: 200px"
          src="img/impacto_social.jpg"
        />
        <div class="card-body p-4">
          <p class="text-primary card-text mb-0"></p>
          <h4 class="card-title">Impacto social:</h4>
          <p class="card-text">
            Los alumnos del CECyT 09 han podido aumentar las calificaciones,
            gracias a que la información proporcionada por el asistente ya que
            es de mucha ayuda al realizar una actividad académica además de que
            al ser de una fuente confiable, los alumnos pueden despreocuparse
            por obtener algún material que no tenga nada que ver con el tema
            solicitado, por lo que este proyecto es un impacto social positivo
            para los estudiantes, al reducir el tiempo de búsqueda de
            información, realización de las tareas y la disminución del estrés
            generado por las actividades académicas.
          </p>
          <div class="d-flex">
            <div></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <img
          class="img-fluid card-img-top w-100 d-block d-flex fit-cover"
          id="img-cards"
          style="height: 200px; height: 200px; width: 340px"
          src="img/icon.png"
        />
        <div class="card-body p-4">
          <p class="text-primary card-text mb-0"></p>
          <h4 class="card-title">Quienes somos:</h4>
          <p class="card-text">
            Somos project Planners, Un equipo de programadores del CECyT 9,
            actualmente con un objetivo de crear un asistente llamado "CECyT
            Integrador" el cual su funcion será ayudar con informacion a los
            estudiantes Este proyecto será mejorado con el tiempo para que pueda
            ser de más ayuda en un futuro para los estudiantes.
          </p>
          <div class="d-flex">
            <div></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col mb-4" style="display: flex;
  justify-content: center;">
  <div class="card twitter-card" style="display: flex;
    justify-content: center;">
    <a
      class="twitter-timeline"
      data-width="900"
      data-height="600"
      href="https://twitter.com/_cecyt9"
      >CECyT 09 Twitter</a
    >
    <script
      async
      src="https://platform.twitter.com/widgets.js"
      charset="utf-8"
    ></script>
  </div>
</div>
<jsp:include page="footer.jsp" />
