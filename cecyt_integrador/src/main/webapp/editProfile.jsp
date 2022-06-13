<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<div>
  <div>
    <div>
      <div>
        <div>
          <div class="container-fluid container25">
            <h3 class="text-dark mb-4 perfil-h3">Perfil</h3>
            <div class="row mb-3" style="justify-content: center">
              <div class="col-lg-8">
                <div class="row">
                  <div class="col">
                    <div class="card shadow mb-3">
                      <div class="card-header py-3">
                        <p class="text-primary m-0 fw-bold">
                          Perfil de usuario
                        </p>
                      </div>
                      <div class="card-body">
                        <form>
                          <div class="row">
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="username"
                                  ><strong>Nombre</strong></label
                                ><input
                                  class="form-control"
                                  value="${usuario.nom_usu}"
                                  type="text"
                                  id="nom_usu"
                                  placeholder="Nombre"
                                  name="nom_usu"
                                  onkeypress="return validarnl(event)"
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
                                  placeholder="user@example.com"
                                  name="ema_usu"
                                  value="${usuario.ema_usu}"
                                />
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="first_name"
                                  ><strong>Apellido Paterno</strong
                                  ><br /></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="app_usu"
                                  placeholder="Appat"
                                  name="app_usu"
                                  value="${usuario.app_usu}"
                                  onkeypress="return validarnl(event)"
                                />
                              </div>
                            </div>
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="last_name"
                                  ><strong>Apellido Materno</strong
                                  ><br /></label
                                ><input
                                  class="form-control"
                                  type="text"
                                  id="apm_usu"
                                  placeholder="Apmat"
                                  name="apm_usu"
                                  value="${usuario.apm_usu}"
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
                                ><select
                                  class="form-select"
                                  id="id_sex"
                                  name="id_sex"
                                >
                                  <optgroup label="Sexo">
                                    <option value="1" selected="">
                                      Masculino
                                    </option>
                                    <option value="2">Femenino</option>
                                  </optgroup>
                                </select>
                              </div>
                            </div>
                            <div class="col">
                              <div class="mb-3">
                                <label class="form-label" for="last_name"
                                  ><strong>Fecha de Nacimiento</strong
                                  ><br /></label
                                ><input
                                  class="form-control"
                                  type="date"
                                  id="fna_usu"
                                  name="fna_usu"
                                  value="${usuario.fna_usu}"
                                />
                              </div>
                            </div>
                          </div>
                        </form>
                        <div class="row">
                          <div class="col">
                            <div class="mb-3">
                              <label class="form-label" for="first_name"
                                ><strong>Contraseña</strong><br /></label
                              ><input
                                type="password"
                                class="form-control"
                                maxlength="30"
                                id="pas_usu"
                                name="pas_usu"
                                value="${usuario.pas_usu}"
                              />
                            </div>
                          </div>
                        </div>
                        <button
                          class="btn btn-main btn-sm"
                          id="boton-guardarCambios"
                          type="submit"
                          onclick="validarfor()"
                        >
                          Guardar Cambios
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <a class="border rounded d-inline scroll-to-top" href="#page-top"
        ><i class="fas fa-angle-up"></i
      ></a>
    </div>
    <jsp:include page="footer.jsp" />
  </div>
</div>
