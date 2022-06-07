<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />
<main id="main">
  <div
    id="carousel"
    class="carousel slide"
    data-ride="carousel"
    data-pause="false"
  >
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img
          class="d-block w-100"
          src="./img/cecyt-img01.jpg"
          alt="cecyt-img01"
        />
      </div>
      <div class="carousel-item">
        <img
          class="d-block w-100"
          src="./img/cecyt-img02.jpg"
          alt="cecyt-img02"
        />
      </div>
      <div class="carousel-item">
        <img
          class="d-block w-100"
          src="./img/cecyt-img03.jpg"
          alt="cecyt-img03"
        />
      </div>
      <div class="carousel-item">
        <img
          class="d-block w-100"
          src="./img/cecyt-img04.jpg"
          alt="cecyt-img04"
        />
      </div>
      <div class="carousel-item">
        <img
          class="d-block w-100"
          src="./img/cecyt-img05.jpg"
          alt="cecyt-img05"
        />
      </div>
    </div>
    <div class="overlay">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6 offset-md-6 text-md-right text-center">
            <h1>CECyT Integrador</h1>
            <p class="d-none d-md-block">
              Empieza a aprovechar tu tiempo con nuestro asistente. Maneja,
              organiza y consulta información con nuestro repositorio con
              material verídico.
            </p>
            <a
              type="button"
              class="btn btn-main"
              href="${pageContext.request.contextPath}/login.html"
            >
              Iniciar Sesión
            </a>
            <a
              class="btn btn-outline-light"
              href="${pageContext.request.contextPath}/register.html"
              >Registrar Usuario</a
            >
          </div>
        </div>
      </div>
    </div>
  </div>
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
            al ser de una fuente confiable, los alumnos pueden despreocuparse por obtener 
            algún material que no tenga nada que ver con el tema solicitado, por lo que este 
            proyecto es un impacto social positivo para los estudiantes, al reducir el tiempo 
            de búsqueda de información, realización de las tareas y la disminución del estrés 
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
            Somos project Planners, Un equipo de programadores del 
            CECyT 9, actualmente con un objetivo de crear un asistente llamado
            "CECyT Integrador" el cual su funcion será ayudar con informacion a los estudiantes
            Este proyecto será mejorado con el tiempo para que pueda ser de más ayuda en un futuro para los estudiantes.
          </p>
          <div class="d-flex">
            <div></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col mb-4" id="container-car">
  <div class="card" id="twitter-card">
    <a
      class="twitter-timeline"
      data-width="100%"
      data-height="500"
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
