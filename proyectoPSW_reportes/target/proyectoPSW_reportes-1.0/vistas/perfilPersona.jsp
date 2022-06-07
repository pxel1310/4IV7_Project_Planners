<%-- 
    Document   : perfilPersona
    Created on : 1/06/2022, 11:33:33 AM
    Author     : Jaret
--%>

<%@page import="mvc.Control.AccionesPersona"%>
<%@page import="mvc.Modelo.MPersona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = "", nombre;
    int rolInt, rol;
    //creamos una sesion para verificar que exista en la BD
    HttpSession sesionusu = request.getSession();
    
    nombre = (String)sesionusu.getAttribute("nombre");
    request.setAttribute("nombreMuestra", nombre);
    
    rol = (int)sesionusu.getAttribute("rol");
    request.setAttribute("getRol", rol);
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Maquinas Batiz -Perfil</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="icon" href="assets/img/ico.png">
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-md bg-dark py-3" id="navbar-main">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="https://www.cecyt9.ipn.mx#" target="_blank">
                <span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon">
                    <img id="img-nav" src="../assets/img/icono.png">
                </span><span>CECyT 9 "Juan de Dios Bátiz"</span></a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1">
                <span class="visually-hidden">Toggle navigation</span>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link active" href="inicioPersona.jsp">Inicio</a></li>
                </ul>
                <div class="dropdown">
                    <a class="dropdown-toggle text-light nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#">
                        <span><i class="far fa-user"></i></span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Perfil</a>
                        <a class="dropdown-item" href="../servletPersona?accion=cerrar">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <%
                    int id = Integer.parseInt(request.getParameter("id"));
                    System.out.println(id);
                    
                    MPersona p = AccionesPersona.buscarPersonaporID(id);
                %>
    <div class="container-fluid" id="container-profile">
        <h3 class="text-dark mb-4" id="h3-profile" style="text-align: center;">Perfil</h3>
        <div class="row mb-3" id="row-profile">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-3" id="profile-card">
                            <div class="card-header py-3">
                                <p class="text-primary m-0 fw-bold" id="p-profile">Datos de usuario</p>
                            </div>
                            <div class="card-body">
                                <form method="post" name="updateForm"
                                    <%if(rol == 1){%>
                                    action="../servletPersona?accion=actualizarAlumno">
                                    <%}else if(rol == 2 || rol == 4){                                       
                                    %>
                                    action="../servletPersona?accion=actualizarempleado">
                                    <%}%>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3 invisible" style="margin: -100px;">
                                                <label class="form-label" for="first_name">
                                                <strong>Usuario</strong><br /></label>
                                                <input id="last_name-3" class="form-control" type="text" 
                                                       placeholder="ID" name="id2" value="<%=p.getPersona_id()%>"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <%
                                            if(rol == 1){
                                        %>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="username">
                                                    <strong>Boleta</strong>
                                                </label>
                                                <input class="form-control" type="number" id="username"
                                                       placeholder="Boleta" name="boleta_alumno2" value="<%=p.getAlumno_boleta()%>">
                                            </div>
                                        </div>
                                        <%}else if(rol == 2 || rol == 4){                                       
                                        %>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="username">
                                                    <strong>Numero de empleado</strong>
                                                </label>
                                                <input class="form-control" type="number" id="username"
                                                       placeholder="Numero de Empleado" name="num_empleado2" value="<%=p.getEmpleado_num()%>">
                                            </div>
                                        </div>
                                        <%}%>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="email">
                                                    <strong>Nombre</strong><br>
                                                </label>
                                                <input class="form-control" type="text" id="nombre"
                                                       placeholder="Nombre" name="nombre2" value="<%=p.getPersona_nombre()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Apellido Paterno</strong><br>
                                                </label>
                                                <input class="form-control" type="text" id="first_name"
                                                       placeholder="Apellido Paterno" name="appat2" value="<%=p.getPersona_appat()%>">
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="last_name">
                                                    <strong>Apellido Materno</strong><br></label>
                                                <input class="form-control" type="text" id="last_name"
                                                       placeholder="Apellido Materno" name="apmat2" value="<%=p.getPersona_apmat()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Sexo</strong><br></label>
                                                <select class="form-select" id="sexo-select" 
                                                        value="<%=p.getPersona_sexo()%>" name="sexo2">
                                                    <optgroup label="Sexo">
                                                        <option value="1" selected="">Masculino</option>
                                                        <option value="2">Femenino</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="last_name">
                                                    <strong>Fecha de Nacimiento</strong><br></label>
                                                <input class="form-control" type="date" name="fecha_nac2" value="<%=p.getPersona_fechaNacimiento()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Usuario</strong><br></label>
                                                <input class="form-control" type="text" id="last_name-2"
                                                       placeholder="Usuario" name="usuario2" value="<%=p.getPersona_user()%>">
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="last_name">
                                                    <strong>Contraseña</strong><br></label>
                                                <input class="form-control" type="password" id="last_name-1"
                                                       placeholder="Contraseña" name="password2" value="<%=p.getPersona_password()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-sm" id="boton-guardarCambios" type="submit">Guardar Cambios</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="row">
            <div class="col-sm-6 col-md-4 footer-navigation">
                <h3><a href="#"><img id="img-nav" src="../assets/img/icono.png"></a></h3><p class="links">
                    <a href="inicioPersona.jsp">Incio</a><strong> · </strong><a href="#">Consultar reportes</a></p>
                <p class="company-name">Reportes Maquinas CECyT 9 © 2022</p>
            </div>
            <div class="col-md-4 footer-about">
                <h4><br>Garcia Gomez Jaret Xchel y Gomez Herrera Axel<br><br></h4>
                <p>4IV7<br>Programación de Servicios Web<br></p>
                <div class="social-links social-icons">
                    <a href="https://github.com/P0T4TO1/4IV7_PSW_Garcia-Gomez-Jaret-Xchel.git" target="_blank"">
                        <i class="fa fa-github"></i>
                    </a>
                </div>
            </div>
        </div>
    </footer>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script>
        window.location.hash="no-back-button";
        window.location.hash="Again-No-back-button";//esta linea es necesaria para chrome
        window.onhashchange=function(){window.location.hash="no-back-button";}
</script>
</body>

</html>