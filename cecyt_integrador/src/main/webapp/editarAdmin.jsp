<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<div class="container-fluid" id="container-profile1">
  <h3 class="text-dark mb-4" id="h3-profile">Perfil</h3>
  <div class="row mb-3" style="display: flex; justify-content: center">
    <div class="col-lg-8">
      <div class="row">
        <div class="col">
          <div class="card shadow mb-3">
            <div class="card-header py-3">
              <p class="text-primary m-0 fw-bold">
                Datos del usuario solicitado
              </p>
            </div>
            <div class="card-body">
              <form>
                <div class="row">
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="username"
                        ><strong>Boleta</strong><br /></label
                      ><input
                        class="form-control"
                        type="text"
                        id="bol_usu"
                        name="bol_usu"
                        placeholder="Nombre"
                        disabled=""
                        readonly=""
                        onkeypress="return soloNumeros(event)"
                      />
                    </div>
                  </div>
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="email"
                        ><strong>Email</strong><br /></label
                      ><input
                        class="form-control"
                        type="email"
                        id="ema_usu"
                        name=""
                        placeholder="user@example.com"
                        name="ema_usu"
                        disabled=""
                        readonly=""
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="username"
                        ><strong>Nombre</strong></label
                      ><input
                        class="form-control"
                        type="text"
                        id="nom_usu"
                        name=""
                        placeholder="Nombre"
                        name="nom_usu"
                        onkeypress="return validarnl(event)"
                      />
                    </div>
                  </div>
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="email"
                        ><strong>Contraseña</strong><br /></label
                      ><input
                        class="form-control"
                        type="password"
                        id="pas_usu"
                        name=""
                        placeholder="Contraseña"
                        name="pas_usu"
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="first_name"
                        ><strong>Apellido Paterno</strong><br /></label
                      ><input
                        class="form-control"
                        type="text"
                        id="app_usu"
                        name=""
                        placeholder="Appat"
                        name="app_usu"
                        onkeypress="return validarnl(event)"
                      />
                    </div>
                  </div>
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="last_name"
                        ><strong>Apellido Materno</strong><br /></label
                      ><input
                        class="form-control"
                        type="text"
                        id="apm_usu"
                        name=""
                        placeholder="Apmat"
                        name="apm_usu"
                        onkeypress="return validarnl(event)"
                      />
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="first_name"
                        ><strong>Sexo</strong><br /></label
                      ><select class="form-select" id="id_sex" name="id_sex">
                        <optgroup label="Sexo">
                          <option value="1" selected="">Masculino</option>
                          <option value="2">Femenino</option>
                        </optgroup>
                      </select>
                    </div>
                  </div>
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="last_name"
                        ><strong>Fecha de Nacimiento</strong><br /></label
                      ><input class="form-control" type="date" name="fna_usu" id="fna_usu"/>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="first_name"
                        ><strong>Rol</strong><br /></label
                      ><select class="form-select" id="id_rol" name="id_rol">
                        <optgroup label="Rol">
                          <option value="1" selected="">Alumno</option>
                          <option value="2">Adminstrador</option>
                        </optgroup>
                      </select>
                    </div>
                  </div>
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="last_name"
                        ><strong>Privilegio</strong><br /></label
                      ><select class="form-select" id="id_pri" name="id_pri">
                        <optgroup label="Privilegio">
                          <option value="1" selected="">Alumno</option>
                          <option value="2">Adminstrador</option>
                        </optgroup>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="text-center">
                  <h4 class="text-dark mb-4">Situación Académica</h4>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="first_name"
                        ><strong>Turno</strong><br /></label
                      ><select class="form-select" id="id_tur" name="id_tur">
                        <optgroup label="Turno">
                          <option value="1" selected="">Matutino</option>
                          <option value="2">Vespertino</option>
                        </optgroup>
                      </select>
                    </div>
                  </div>
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="last_name"
                        ><strong>Semestre</strong><br /></label
                      ><select class="form-select" id="id_sem" name="id_sem">
                        <optgroup label="Semestre">
                          <option value="1" selected="">Tercer Semestre</option>
                          <option value="2">Cuarto Semestre</option>
                          <option value="3">Quinto Semestre</option>
                          <option value="4">Sexto Semetre</option>
                        </optgroup>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="first_name"
                        ><strong>Especialidad</strong><br /></label
                      ><select class="form-select" id="id_esp" name="id_esp">
                        <optgroup label="Especialidad">
                          <option value="1" selected="">Tronco Común</option>
                          <option value="2">Técnico en Programación</option>
                        </optgroup>
                      </select>
                    </div>
                  </div>
                  <div class="col">
                    <div class="mb-3">
                      <label class="form-label" for="last_name"
                        ><strong>Grupo</strong><br /></label
                      ><select class="form-select" id="id_gru" name="id_gru">
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
                </div>
              </form>
              <button
                class="btn btn-main btn-sm"
                id="boton-guardarCambios"
                type="submit"
                onclick="return validarfor()"
              >
                Actualizar perfil
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp" />
