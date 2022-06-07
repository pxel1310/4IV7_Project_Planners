<%-- 
    Document   : update2
    Created on : 1/06/2022, 12:23:42 PM
    Author     : Jaret
--%>

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
    <title>Maquinas Batiz -Usuario Actualizado</title>
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
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="https://www.cecyt9.ipn.mx#" target="_blank">
                <span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon">
                    <img id="img-nav" src="../assets/img/icono.png">
                </span><span>CECyT 9 "Juan de Dios Bátiz"</span></a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1">
                <span class="visually-hidden">Toggle navigation</span>
                <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link active" href="inicioPersona.jsp">Inicio</a></li>
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
    <section class="py-4 py-xl-5">
        <div class="container">
            <div class="text-center p-4 p-lg-5">
                <h1 class="fw-bold mb-4">Perfil actualizado con exito</h1>
                <a href="inicioPersona.jsp">
                    <button class="btn btn-primary fs-5 me-2 py-2 px-4" id="btn-updates" type="button">Inicio</button>
                </a>
                <a href="perfilPersona.jsp?id=<%=sesionusu.getAttribute("id")%>">
                    <button class="btn btn-light fs-5 py-2 px-4" id="btn-updates" type="button">Perfil</button>
                </a>
            </div>
        </div>
    </section>
    <footer style="margin-top: 14.4rem;">
        <div class="row">
            <div class="col-sm-6 col-md-4 footer-navigation">
                <h3><a href="#"><img id="img-nav" src="assets/img/icono.png"></a></h3><p class="links">
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
</body>

</html>
