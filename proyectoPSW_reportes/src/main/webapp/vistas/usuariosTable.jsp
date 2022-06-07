<%-- 
    Document   : usuariosTable
    Created on : 3/06/2022, 11:25:33 PM
    Author     : Jaret
--%>

<%@page import="java.util.List"%>
<%@page import="mvc.Modelo.MPersona"%>
<%@page import="mvc.Control.AccionesPersona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = "", nombre;
    int rol = 0;
    //creamos una sesion para verificar que exista en la BD
    HttpSession sesionusu = request.getSession();
    
    if(session.getAttribute("usuario") != null){
    
        rol = (int)sesionusu.getAttribute("rol");
        request.setAttribute("getRol", rol);
        System.out.println(rol);
    }
    
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Maquinas Batiz -Usuarios</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="../assets/css/Manage-Users.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="icon" href="assets/img/ico.png">
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-md bg-dark py-3" id="navbar-main">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="#">
                <span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon">
                    <img id="img-nav" src="../assets/img/icono.png"></span>
                    <span>CECyT 9 "Juan de Dios Bátiz"</span></a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1">
                <span class="visually-hidden">Toggle navigation</span>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link active" href="inicioPersona.jsp">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="consultarReportes.jsp">Consultar reportes</a></li>
                </ul>
                <div class="dropdown">
                    <a class="dropdown-toggle text-light nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#">
                        <span><i class="far fa-user"></i></span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="perfilPersona.jsp?id=<%=sesionusu.getAttribute("id")%>">Perfil</a>
                        <a class="dropdown-item" href="../servletPersona?accion=cerrar">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="container-fluid reportes">
        <h3 class="text-dark mb-4" style="text-align: center;">Tabla de usuarios</h3>
        <div class="card shadow card-reportes">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col">
                        <p class="text-primary m-0 fw-bold">Usuarios</p>
                    </div>
                    <div class="col col-regresar">
                        <a href="inicioPersona.jsp">
                            <button class="btn btn-primary btn-reportes" type="button">Regresar</button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <a href="#">
                            <button class="btn btn-primary btn-reportes" type="button">Agregar usuario</button>
                        </a>
                    </div>
                    <div class="col">
                        <div class="text-md-end dataTables_filter" id="dataTable_filter">
                            <label class="form-label">
                                <input type="search" class="form-control form-control-sm" aria-controls="dataTable" placeholder="Buscar">
                            </label>
                        </div>
                    </div>
                </div>
                <div class="table-responsive table mt-2" id="dataTable-1" role="grid" aria-describedby="dataTable_info">
                    <table class="table my-0" id="dataTable">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Boleta</th>
                                <th>Numero de empleado</th>
                                <th>Nombre</th>
                                <th>Apellido paterno</th>
                                <th>Apellido materno</th>
                                <th>Sexo</th>
                                <th>Fecha de nacimiento</th>
                                <th>Usuario</th>
                                <th>Contraseña</th>
                                <th>Grupo</th>
                                <th>Rol</th>
                                <th>Privilegio</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<MPersona> lista = AccionesPersona.getAllPersonas();
                                
                                for(MPersona p : lista){
                            %>
                            <tr>
                                <td><%=p.getPersona_id()%></td>
                                <td><%=p.getAlumno_boleta()%></td>
                                <td><%=p.getEmpleado_num()%></td>
                                <td><%=p.getPersona_nombre()%></td>
                                <td><%=p.getPersona_appat()%></td>
                                <td><%=p.getPersona_apmat()%></td>
                                <td><%=p.getPersona_sexo()%></td>
                                <td><%=p.getPersona_fechaNacimiento()%></td>
                                <td><%=p.getPersona_user()%></td>
                                <td><%=p.getPersona_password()%></td>
                                <td><%=p.getGrupo_tipo()%></td>
                                <td><%=p.getRol_tipo()%></td>
                                <td><%=p.getPrivilegio_tipo()%></td>
                                <td><a href="perfilPersona.jsp?id=<%=p.getPersona_id()%>">
                                        <button class="btn btn-primary btn-reportes" type="button">
                                            <i class="far fa-edit"></i></button></a>
                                </td>
                                <td><a href="../servletPersona?accion=eliminarUsuario&per_id=<%=p.getPersona_id()%>">
                                        <button class="btn btn-primary btn-reportes" type="button">
                                            <i class="fas fa-trash"></i></button></a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td><strong>ID</strong></td>
                                <td><strong>Boleta</strong></td>
                                <td><strong>Numero de empleado</strong></td>
                                <td><strong>Nombre</strong></td>
                                <td><strong>Apellido paterno</strong></td>
                                <td><strong>Apellido materno</strong></td>
                                <td><strong>Sexo</strong></td>
                                <td><strong>Fecha de nacimiento</strong></td>
                                <td><strong>Usuario</strong></td>
                                <td><strong>Contraseña</strong></td>
                                <td><strong>Grupo</strong></td>
                                <td><strong>Rol</strong></td>
                                <td><strong>Privilegio</strong></td>
                                <td><strong>Editar</strong></td>
                                <td><strong>Eliminar</strong></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <footer style="margin-top: 11rem">
        <div class="row">
            <div class="col-sm-6 col-md-4 footer-navigation">
                <h3><a href="#"><img id="img-nav" src="../assets/img/icono.png"></a></h3><p class="links">
                    <a href="#">Incio</a><strong> · </strong><a href="#">Consultar reportes</a></p>
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
    <script src="https://geodata.solutions/includes/countrystate.js"></script>
</body>

</html>
