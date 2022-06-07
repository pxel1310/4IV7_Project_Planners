<%-- 
    Document   : inicioPersona
    Created on : 1/06/2022, 12:11:35 AM
    Author     : Jaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = "", nombre;
    int rol = 0;
    //creamos una sesion para verificar que exista en la BD
    HttpSession sesionusu = request.getSession();
    
    nombre = (String)sesionusu.getAttribute("nombre");
    request.setAttribute("nombreMuestra", nombre);
    
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
    <title>Maquinas Batiz -Inicio</title>
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
                    <img id="img-nav" src="../assets/img/icono.png"></span>
                    <span>CECyT 9 "Juan de Dios Bátiz"</span></a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1">
                <span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon">                   
                </span>
            </button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"></li>
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
    <div class="container py-4 py-xl-5">
        <div class="row gy-4 gy-md-0">
            <div class="col-md-6">
                <div class="p-xl-5 m-xl-5"><img class="rounded img-fluid w-100 fit-cover" style="min-height: 300px;" src="../assets/img/equipo2.jpg"></div>
            </div>
            <div class="col-md-6 d-md-flex align-items-md-center">
                <div style="max-width: 400px;">
                    <h2 class="text-uppercase fw-bold">Bienvenido ${nombreMuestra}</h2>
                    <p class="my-3">Crear, consulta y edita los reportes de los equipos del los laboratorios de<br>programacion del CECyT 9 "Juan de Dios Batiz"<br></p>
                    <p class="h5">Empezemos, selecciona lo que desea hacer<br></p>
                    <div class="container-buttons">
                        <a class="btn btn-outline-primary btn-lg" role="button" id="btn-inicio" 
                           href="crearReporte.jsp">Crear Reporte</a>
                        <a class="btn btn-primary btn-lg me-2" role="button" 
                           id="btn-inicio2" href="consultarReportes.jsp" style="margin-left: 1rem;">Consultar Reportes</a>
                        <%if(rol == 4){%>
                        <a class="btn btn-primary btn-lg me-2" role="button" id="btn-inicio" href="usuariosTable.jsp" 
                           style="margin-top: 1rem;">Consultar Usuarios</a>
                        <a class="btn btn-primary btn-lg me-2" role="button" id="btn-inicio" href="consultarEquipos.jsp" 
                           style="margin-top: 1rem;">Consultar Equipos</a>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />