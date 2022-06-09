<%-- 
    Document   : editarEquipo
    Created on : 8/06/2022, 01:22:25 AM
    Author     : Jaret
--%>

<%@page import="mvc.Control.AccionesEquipo"%>
<%@page import="mvc.Modelo.DEquipo"%>
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
    <title>Maquinas Batiz -Editar Equipo</title>
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
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="#">
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
                    <li class="nav-item"><a class="nav-link" href="consultarEquipos.jsp">Consultar equipos</a></li>
                </ul>
                <div class="dropdown">
                    <a class="dropdown-toggle text-light nav-link" aria-expanded="false" data-bs-toggle="dropdown" href>
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
        <h3 class="text-dark mb-4" id="h3-profile" style="text-align: center;">Editar equipo</h3>
        <div class="row mb-3" id="row-profile">
            <div class="col-lg-8">               
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-3" id="profile-card">
                            <div class="card-header py-3">
                                <p class="text-primary m-0 fw-bold" id="p-profile">Datos de equipo</p>
                            </div>
                            <%
                            String etiqueta = request.getParameter("etiqueta_nom");
                            System.out.println(etiqueta);
                    
                            DEquipo eq = AccionesEquipo.buscarEquipoporID(etiqueta);
                            %>
                            <div class="card-body">
                                <form method="post" action="../servletEquipo?accion=actulaizarEquipo">
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="email">
                                                    <strong>Laboratorio</strong><br>
                                                </label>
                                                <select class="form-select" name="lab2">
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
                                                <input class="form-control" type="text" id="username" name="etiqueta2"
                                                       placeholder="Etiqueta" name="username" autocomplete="off" value="<%=eq.getEquipo_etiqueta()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Marca</strong><br>
                                                </label>
                                                <select class="form-select" name="marca2">
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
                                                    <strong>CPU Serial</strong><br>
                                                </label>
                                                <select class="form-select" name="serial2">
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
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Accesorio</strong><br>
                                                </label>
                                                <select class="form-select" name="accesorio2">
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
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Monitor</strong><br>
                                                </label>
                                                <select class="form-select" name="monitor2">
                                                    <optgroup label="Monitor">
                                                        <option value="MONITOR001" selected="">Monitor 24 pulgadas Negro</option>
                                                        <option value="MONITOR002">Monitor 24 pulgadas Blanco</option>
                                                        <option value="MONITOR003">Monitor 24 pulgadas Gris</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="last_name">
                                                    <strong>Sistema Operativo</strong><br>
                                                </label>
                                                <select class="form-select" name="config2">
                                                    <optgroup label="Configuracion">
                                                        <option value="CONFIGURACION001" selected="">WINDOWS 10</option>
                                                        <option value="CONFIGURACION002">WINDOWS 8</option>
                                                        <option value="CONFIGURACION003">WINDOWS 7</option>
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
                                                    <strong>Estado del equipo</strong><br>
                                                </label>
                                                <select class="form-select" name="estadoe2">
                                                    <optgroup label="Estado">
                                                        <option value="1">Bien</option>
                                                        <option value="2">Mal</option>
                                                        <option value="3">En almacen</option>
                                                        <option value="4">En revision</option>
                                                        <option value="5">Ninguno</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                    </div>  
                                    <%}%>
                                    <div class="row">
                                        <div class="col">
                                            <div class="mb-3">
                                                <label class="form-label" for="first_name">
                                                    <strong>Problema</strong><br>
                                                </label>
                                                <textarea class="form-control" name="problema2" value="<%=eq.getProblema()%>"><%=eq.getProblema()%></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-sm" id="boton-guardarCambios" type="submit">Actualizar Equipo</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
    
