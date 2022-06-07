<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" />
<div class="container" style="padding-top: 50px; margin-top: 30px">
  <div class="card shadow-lg o-hidden border-0 my-5" style="height: 780px">
    <div class="card-body p-0" id="card-registro">
      <div class="row" id="row-registro">
        <div class="col-lg-7" id="con-form2">
          <div class="p-5">
            <div class="text-center">
              <h4 class="text-dark mb-4">Registrar Usuario</h4>
            </div>
            <form
              class="user"
              action="${pageContext.request.contextPath}/register"
              method="post"
            >
              <div class="row mb-3">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input
                    class="form-control form-control-user"
                    type="text"
                    id="bol_usu"
                    name="bol_usu"
                    placeholder="Boleta"
                    maxlength="10"
                    minlength="10"
                    onkeypress="return soloNumeros(event)"
                  />
                </div>
                <div class="col-sm-6">
                  <input
                    class="form-control form-control-user"
                    type="text"
                    id="nom_usu"
                    placeholder="Nombre"
                    name="nom_usu"
                    maxlength="32"
                    onkeypress="return validarnl(event)"
                  />
                </div>
              </div>
              <div class="mb-3"></div>
              <div class="row mb-3">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input
                    class="form-control form-control-user"
                    type="text"
                    id="app_usu"
                    placeholder="Apellido Paterno"
                    name="app_usu"
                    maxlength="32"
                    onkeypress="return validarnl(event)"
                  />
                </div>
                <div class="col-sm-6">
                  <input
                    class="form-control form-control-user"
                    type="text"
                    id="apm_usu"
                    placeholder="Apellido Materno"
                    name="apm_usu"
                    maxlength="32"
                    onkeypress="return validarnl(event)"
                  />
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <select
                    name="id_sex"
                    id="id_sex"
                    class="form-select"
                    style="height: 52px; border-radius: 10rem; font-size: 13px"
                  >
                    <optgroup label="Sexo">
                      <option value="1">Masculino</option>
                      <option value="2">Femenino</option>
                    </optgroup>
                  </select>
                </div>
                <div class="col-sm-6">
                  <input
                    class="form-control"
                    id="fna_usu"
                    name="fna_usu"
                    type="date"
                    value="2001-01-01"
                  />
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <input
                    class="form-control form-control-user"
                    type="email"
                    id="ema_usu"
                    name="ema_usu"
                    placeholder="Email"
                    maxlength="124"
                  />
                </div>
                <div class="col-sm-6">
                  <input
                    class="form-control form-control-user"
                    type="password"
                    id="pas_usu"
                    placeholder="Contraseña"
                    name="pas_usu"
                    maxlength="30"
                  />
                </div>
              </div>
              <h4 class="text-dark mb-4" id="h4-god" style="text-align: center">
                Situación Académica
              </h4>
              <div class="row mb-3">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <select
                    name="id_tur"
                    class="form-select"
                    id="id_tur"
                    style="height: 52px; border-radius: 10rem; font-size: 13px"
                  >
                    <optgroup label="Turno">
                      <option value="1">Matutino</option>
                      <option value="2">Vespertino</option>
                    </optgroup>
                  </select>
                </div>
                <div class="col-sm-6">
                  <select
                    name="id_gru"
                    class="form-select"
                    id="id_gru"
                    style="height: 52px; border-radius: 10rem; font-size: 13px"
                  >
                    <optgroup label="Matutino" id="matutino">
                      <option value="14">3IM7</option>
                      <option value="15">3IM8</option>
                      <option value="16">3IM9</option>
                      <option value="17">4IM7</option>
                      <option value="18">4IM8</option>
                      <option value="19">4IM9</option>
                      <option value="20">4IM10</option>
                      <option value="21">5IM7</option>
                      <option value="22">5IM8</option>
                      <option value="23">5IM9</option>
                      <option value="24">6IM7</option>
                      <option value="25">6IM8</option>
                      <option value="26">6IM9</option>
                    </optgroup>
                    <optgroup label="Vespertino" id="vespertino">
                      <option value="1">3IV7</option>
                      <option value="2">3IV8</option>
                      <option value="3">3IV9</option>
                      <option value="4">4IV7</option>
                      <option value="5">4IV8</option>
                      <option value="6">4IV9</option>
                      <option value="7">4IV10</option>
                      <option value="8">5IV7</option>
                      <option value="9">5IV8</option>
                      <option value="10">5IV9</option>
                      <option value="11">6IV7</option>
                      <option value="12">6IV8</option>
                      <option value="13">6IV9</option>
                    </optgroup>
                  </select>
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-sm-6 mb-3 mb-sm-0">
                  <select
                    name="id_esp"
                    class="form-select"
                    id="id_esp"
                    style="height: 52px; border-radius: 10rem; font-size: 13px"
                  >
                    <optgroup label="Especialidad">
                      <option value="1">Tronco Común</option>
                      <option value="2">Técnico en Programación</option>
                    </optgroup>
                  </select>
                </div>
                <div class="col-sm-6">
                  <select
                    name="id_sem"
                    class="form-select"
                    id="id_sem"
                    style="height: 52px; border-radius: 10rem; font-size: 13px"
                  >
                    <optgroup label="semestre">
                      <option value="1">Tercer Semestre</option>
                      <option value="2">Cuarto Semestre</option>
                      <option value="3">Quinto Semestre</option>
                      <option value="4">Sexto Semestre</option>
                    </optgroup>
                  </select>
                </div>
              </div>
              <button
                class="btn btn-primary d-block btn-user w-100"
                type="submit"
                style="background: #9f3d5f"
                onclick="return validarfor()"
              >
                Registrar Usuario
              </button>
              <hr />
            </form>
            <div class="text-center">
              <a
                class="small"
                href="${pageContext.request.contextPath}/login.html"
                >Ya tiene una cuenta? Inicia Sesión!</a
              >
            </div>
            <div class="text-center" id="div-regresar2">
              <a class="small" href="index.jsp">Regresar al inicio</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="./js/validar.js"></script>
<jsp:include page="footer.jsp" />
