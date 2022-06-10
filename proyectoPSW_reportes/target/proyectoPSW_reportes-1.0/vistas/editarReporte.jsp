<%-- 
    Document   : editarReporte
    Created on : 8/06/2022, 01:22:32 AM
    Author     : Jaret
--%>

<%@page import="mvc.Control.AccionesEquipo"%>
<%@page import="mvc.Modelo.DEquipo"%>
<%@page import="java.util.List"%>
<%@page import="mvc.Modelo.DReporte"%>
<%@page import="mvc.Control.AccionesReportes"%>
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
    <title>Maquinas Batiz -Editar Reporte</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400|Roboto:300,400,700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/css/Manage-Users.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="icon" href="assets/img/ico.png">
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-md bg-dark py-3" id="navbar-main">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="#">
                <span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon">
                    <img id="img-nav" src="../assets/img/icono.png">
                </span><span>CECyT 9 "Juan de Dios Bátiz"</span>
            </a>
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
    <div class="container-fluid" id="container-profile">
        <h3 class="text-dark mb-4" id="h3-profile" style="text-align: center;">Editar reporte</h3>
        <div class="row mb-3" id="row-profile">
            <div class="col-lg-8">               
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-3" id="profile-card">
                            <div class="card-header py-3">
                                <p class="text-primary m-0 fw-bold" id="p-profile">Datos de reporte</p>
                            </div>
                            <%
                            int id = Integer.parseInt(request.getParameter("reporte_id"));
                            System.out.println(id);
                    
                            DReporte r = AccionesReportes.getReporteporID(id);
                            %>
                            <div class="card-body">
                                <form method="post" action="../servletReporte?accion=actualizarReporte">
                                    <div class="row invisible" style="margin-top: -90px;">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="username">
                                                    <strong>ID</strong>
                                                </label>
                                                <input class="form-control" type="text" value="<%=r.getReporte_id()%>"
                                                       id="username-1" placeholder="Boleta" name="idreporte2">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="username">
                                                    <strong>Etiqueta del equipo</strong>
                                                </label>
                                                <select class="form-select" name="etiqueta_reporte2" 
                                                        value="<%=r.getEtiqueta_nombre()%>">
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
                                    <%if(rol == 4){%>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Prioridad</strong><br>
                                                </label>
                                                <select class="form-select" name="prioridad2" 
                                                        value="<%=r.getPrioridad_tipo()%>">
                                                    <optgroup label="Prioridad">
                                                        <option value="1">Alta</option>
                                                        <option value="2">Media</option>
                                                        <option value="3">Baja</option>
                                                        <option value="4">Sin prioridad</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="last_name">
                                                    <strong>Estado del reporte</strong><br>
                                                </label>
                                                <select class="form-select" name="estadorep2" value="<%=r.getEstadoreporte_tipo()%>">
                                                    <optgroup label="Estado">
                                                        <option value="1">En espera</option>
                                                        <option value="2">Atendiendo</option>
                                                        <option value="3">Solucionado</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <%}%>               
                                    <button class="btn btn-primary btn-sm" id="boton-guardarCambios" type="submit">Guardar Cambios</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
