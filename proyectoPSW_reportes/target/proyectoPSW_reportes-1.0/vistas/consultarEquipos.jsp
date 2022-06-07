<%-- 
    Document   : consultarEquipos
    Created on : 4/06/2022, 01:18:22 AM
    Author     : Jaret
--%>

<%@page import="java.util.List"%>
<%@page import="mvc.Modelo.DEquipo"%>
<%@page import="mvc.Control.AccionesEquipo"%>
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
    <title>Maquinas Batiz -Equipos</title>
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
                    <div class="dropdown-menu"><a class="dropdown-item" href="perfilPersona.jsp?id=<%=sesionusu.getAttribute("id")%>">Perfil</a>
                        <a class="dropdown-item" href="../servletPersona?accion=cerrar">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <div class="container-fluid reportes">
        <h3 class="text-dark mb-4" style="text-align: center;">Equipos</h3>
        <div class="card shadow card-reportes">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col">
                        <p class="text-primary m-0 fw-bold">Datos de los equipos</p>
                    </div>
                    <div class="col col-regresar">
                        <a href="crearReporte.jsp">
                            <button class="btn btn-primary btn-reportes" type="button">Regresar</button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <div><a href="registrarEquipo.jsp"><button class="btn btn-primary btn-reportes" type="button">Agregar Equipo</button></a>
                            <p></p>
                        </div>
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
                                <th>Etiqueta</th>
                                <th>Laboratorio</th>
                                <th>Marca</th>
                                <th>Serial del CPU</th>
                                <th>Teclado</th>
                                <th>Mouse</th>
                                <th>Monitor</th>
                                <th>Sistema Operativo</th>
                                <th>Estado del equipo</th>
                                <th>Problema</th>
                            <%if(rol == 4){%>     
                                <th>Editar</th>
                                <th>Eliminar</th>
                            <%}%>     
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<DEquipo> lista = AccionesEquipo.getAllEquipos();
                                
                                for(DEquipo e : lista){                            
                            %>
                            <tr>
                                <td><%=e.getEquipo_etiqueta()%></td>
                                <td><%=e.getLab_nom()%></td>
                                <td><%=e.getMarca_nom()%></td>
                                <td><%=e.getCpu_serial()%></td>
                                <td><%=e.getConfig_teclado()%></td>
                                <td><%=e.getConfig_mouse()%></td>
                                <td><%=e.getMonitor_descripcion()%></td>
                                <td><%=e.getConfig_descripcion()%></td>
                                <td><%=e.getEstadoequipo_tipo()%></td>
                                <td><%=e.getProblema()%></td>
                            <%if(rol == 4){%>    
                                <td><a href="editarEquipo?etiqueta=<%=e.getEquipo_etiqueta()%>">
                                        <button class="btn btn-primary btn-reportes" type="button">
                                            <i class="far fa-edit"></i>
                                        </button>
                                    </a>
                                </td>
                                <td>
                                    <a href="../servletEquipo?accion=eliminarEquipo&etiqueta=<%=e.getEquipo_etiqueta()%>">
                                        <button class="btn btn-primary btn-reportes" type="button">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </a>
                                </td>
                            <%}%>     
                            </tr>
                            <%}%>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td><strong>Etiqueta</strong></td>
                                <td><strong>Laboratorio</strong></td>
                                <td><strong>Marca</strong></td>
                                <td><strong>Serial del CPU</strong></td>
                                <td><strong>Teclado</strong></td>
                                <td><strong>Mouse</strong></td>
                                <td><strong>Monitor</strong></td>
                                <td><strong>Sistema Operativo</strong></td>
                                <td><strong>Estado del equipo</strong></td>
                                <td><strong>Problema</strong></td>
                            <%if(rol == 4){%>    
                                <td><strong>Editar</strong></td>
                                <td><strong>Eliminar</strong></td>
                            <%}%>    
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>