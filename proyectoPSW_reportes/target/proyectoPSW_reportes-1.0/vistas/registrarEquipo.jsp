<%-- 
    Document   : registrarEquipo
    Created on : 2/06/2022, 11:31:11 PM
    Author     : Jaret
--%>

<%@page import="mvc.Control.AccionesEquipo"%>
<%@page import="java.util.List"%>
<%@page import="mvc.Modelo.DEquipo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = "", nombre;
    //creamos una sesion para verificar que exista en la BD
    HttpSession sesionusu = request.getSession();
    
    nombre = (String)sesionusu.getAttribute("nombre");
    request.setAttribute("nombreMuestra", nombre);
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Maquinas Batiz -Registra Equipo</title>
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

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>maquinasbatiz</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Manage-Users.css">
    <link rel="stylesheet" href="assets/css/styles.css">
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
                    <li class="nav-item"><a class="nav-link active" href="inicioPersona.jsp">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="consultarReportes.jsp">Consultar Reportes</a></li>
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
    <div class="container-fluid form-equipo" style="margin-top: 3.5rem;">
        <h3 class="text-dark mb-4" id="h3-profile" style="text-align: center;">Registrar Equipo</h3>
        <div class="row mb-3" id="row-profile">
            <div class="col-lg-8">               
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-3" id="profile-card">
                            <div class="card-header py-3">
                                <p class="text-primary m-0 fw-bold" id="p-profile">Datos del equipo</p>
                            </div>
                            <div class="card-body">
                                <form method="post" action="../servletEquipo?accion=registrarEquipo">
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3"><label class="form-label" for="email">
                                                    <strong>Laboratorio</strong><br></label>
                                                <select class="form-select" name="lab">
                                                    <optgroup label="Laboratorio">
                                                        <option value="1">LBD</option>
                                                        <option value="2">LNT</option>
                                                        <option value="3">LDS</option>
                                                        <option value="4">Aula 4.0</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="username">
                                                    <strong>Etiqueta del equipo</strong>
                                                </label>
                                                <input class="form-control" type="text" id="username" placeholder="Etiqueta" name="etiqueta" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3"><label class="form-label" for="first_name">
                                                    <strong>Marca</strong><br></label>
                                                <select class="form-select" name="marca">
                                                    <optgroup label="Marca">
                                                        <option value="1">Dell</option>
                                                        <option value="2">Hp</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="last_name">
                                                    <strong>CPU Serial</strong><br></label>
                                                <select class="form-select" name="cpu_serial">
                                                    <optgroup label="Serial">
                                                        <%
                                                           List<DEquipo> lista = AccionesEquipo.getAllSeriales();
                                                           
                                                           for(DEquipo e : lista){
                                                        %>
                                                        <option><%=e.getCpu_serial()%></option>
                                                        <%}%>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3"><label class="form-label" for="first_name">
                                                    <strong>Accesorio</strong><br></label>
                                                <select class="form-select" name="accesorios">
                                                    <optgroup label="Accesorios">
                                                        <option value="1">Teclado gris y mouse negro</option>
                                                        <option value="2">Teclado Logitech y mouse Logitech</option>
                                                        <option value="3">Teclado negro y mouse gris</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3"><label class="form-label" for="first_name">
                                                    <strong>Monitor</strong><br></label>
                                                <select class="form-select" name="monitor">
                                                    <optgroup label="Monitor">
                                                        <option value="MONITOR001" selected="">Monitor 24 pulgadas Negro</option>
                                                        <option value="MONITOR002">Monitor 24 pulgadas Blanco</option>
                                                        <option value="MONITOR003">Monitor 24 pulgadas Gris</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3"><label class="form-label" for="last_name">
                                                    <strong>Sistema Operativo</strong><br></label>
                                                <select class="form-select" name="config">
                                                    <optgroup label="Configuracion">
                                                        <option value="CONFIGURACION001" selected="">WINDOWS 10</option>
                                                        <option value="CONFIGURACION002">WINDOWS 8</option>
                                                        <option value="CONFIGURACION003">WINDOWS 7</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3"><label class="form-label" for="first_name">
                                                    <strong>Problema</strong><br></label>
                                                <textarea class="form-control" name="problema"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-sm" id="boton-guardarCambios" type="submit">Registrar Equipo</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
