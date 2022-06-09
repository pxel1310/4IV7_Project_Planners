<%-- 
    Document   : crearReporte
    Created on : 2/06/2022, 10:49:39 PM
    Author     : Jaret
--%>

<%@page import="mvc.Modelo.DEquipo"%>
<%@page import="mvc.Control.AccionesEquipo"%>
<%@page import="java.util.List"%>
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
    <title>Maquinas Batiz -Crear Reporte</title>
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
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="https://www.cecyt9.ipn.mx#" target="_blank">
                <span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon">
                    <img id="img-nav" src="../assets/img/icono.png">
                </span>
                <span>CECyT 9 "Juan de Dios Bátiz"</span>
            </a>
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
                        <a class="dropdown-item" href="perfilPersona.jsp?id=<%=sesionusu.getAttribute("id")%>">Perfil</a>
                        <a class="dropdown-item" href="../servletPersona?accion=cerrar">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <section class="py-4 py-xl-5">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-md-10 col-xl-8 text-center d-flex d-sm-flex d-md-flex justify-content-center align-items-center mx-auto justify-content-md-start align-items-md-center justify-content-xl-center">
                    <div>
                        <h2 class="text-uppercase fw-bold mb-3">Lista de Equipos</h2>
                        <p class="mb-4">Para conocer los equipos registrados y así poder hacer un reporte, de click en el botón de abajo
                        NOTA: Solo podrá crear un reporte con un equipo ya registrado</p>
                        <a href="consultarEquipos.jsp">
                        <button class="btn btn-primary fs-5 me-2 py-2 px-4 btn-reportes" type="button" style="font-size: 16px !important;">Consultar todos los equipos</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container-fluid" id="form-reporte">
        <h3 class="text-dark mb-4" id="h3-profile" style="text-align: center;">Crear Reporte</h3>
        <div class="row mb-3" id="row-profile">
            <div class="col-lg-8">  
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-3" id="profile-card">
                            <div class="card-header py-3">
                                <p class="text-primary m-0 fw-bold" id="p-profile">Datos del reporte</p>
                            </div>
                            <div class="card-body">
                                <form method="post" action="../servletReporte?accion=crearReporte">
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3"><label class="form-label" for="username">
                                                    <strong>Etiqueta del equipo</strong></label>
                                                <select class="form-select" name="etiqueta_reporte">
                                                    <optgroup label="Etiquetas">
                                                        <%
                                                        int value = 1;
                                                        List<DEquipo> lista = AccionesEquipo.getAllEtiquetas();
                                                        for(DEquipo e : lista){
                                                        %>
                                                        <option value="<%=value++%>"><%=e.getEquipo_etiqueta()%></option>
                                                        <%}%>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row invisible" style="margin-top: -80px;">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="username">
                                                    <strong>ID hidden</strong><br>
                                                </label>
                                                <input class="form-control" type="text" disabled="" readonly="" value="<%=sesionusu.getAttribute("id")%>">
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-sm" id="boton-guardarCambios" type="submit">Crear Reporte</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
