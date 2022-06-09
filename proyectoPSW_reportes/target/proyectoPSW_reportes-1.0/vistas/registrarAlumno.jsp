<%-- 
    Document   : registrarAlumno
    Created on : 31/05/2022, 11:34:45 PM
    Author     : Jaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<%
    String usuario = "";
    //creamos una sesion para verificar que exista en la BD
    HttpSession sesionusu = request.getSession();
    if(sesionusu.getAttribute("usuario") == null){
        
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>maquinasbatiz</title>
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
    <div class="container" style="position:absolute; left:0; right:0; top: 50%; transform: translateY(-50%); 
         -ms-transform: translateY(-50%); -moz-transform: translateY(-50%); -webkit-transform: translateY(-50%); -o-transform: translateY(-50%);">
        <div class="row d-flex d-xl-flex justify-content-center justify-content-xl-center">
            <div class="col-sm-12 col-lg-10 col-xl-9 col-xxl-7 bg-white shadow-lg" style="border-radius: 5px;">
                <div class="p-5">
                    <div class="text-center">
                        <div><img id="img-nav" src="../assets/img/icono.png"></div>
                        <h4 class="text-dark mb-4">Crea una cuenta</h4>
                    </div>
                    <form class="user" method="post" name="registro" action="../servletPersona?accion=registrarAlumno">
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input class="form-control form-control-user" minlength="10" maxlength="10" id="bol_usu"
                                       type="text" placeholder="Boleta" name="bol_alumno" onkeypress="return soloNumeros(event)">
                            </div>
                            <div class="col-sm-6">
                                <input class="form-control" type="date" name="fecha_nac" value="2000-01-01">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input class="form-control form-control-user" id="nom_usu"
                                       type="text" placeholder="Nombre" name="nombre" onkeypress="return validarnl(event)">
                            </div>
                            <div class="col-sm-6">
                                <select class="form-select" name="sexo">
                                    <optgroup label="Sexo">
                                        <option value="none" selected disabled hidden>Sexo</option>
                                        <option>Masculino</option>
                                        <option>Femenino</option>
                                    </optgroup>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input class="form-control form-control-user" id="app_usu"
                                       type="text" placeholder="Apellido Paterno" name="appat" onkeypress="return validarnl(event)">
                            </div>
                            <div class="col-sm-6">
                                <input class="form-control form-control-user" id="apm_usu"
                                       type="text" placeholder="Apellido Materno" name="apmat" onkeypress="return validarnl(event)">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input class="form-control form-control-user" id="usu"
                                       type="text" placeholder="Usuario" name="usuario">
                            </div>
                            <div class="col-sm-6">
                                <input class="form-control form-control-user" 
                                       type="password" placeholder="Contraseña" name="password" id="inputPassword">
                                <span class="eye-password" id="eye"><i class="fas fa-eye-slash"></i></span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <select class="form-select" name="grupo">
                                <optgroup label="Grupo">
                                    <option value="none" selected disabled hidden>Grupo</option>
                                    <option value="1">4IV7</option>
                                    <option value="2">4IV8</option>
                                    <option value="3">4IV9</option>
                                    <option value="4">4IV10</option>
                                </optgroup>
                            </select>
                        </div>
                        <button class="btn btn-primary d-block btn-signin w-100" id="submitBtn"
                                onclick=" return validarforsus()" type="submit">Registrar Usuario</button>
                        <button class="btn btn-primary d-block btn-signin w-100" id="submitBtn-1" type="submit">Borrar</button>
                        <hr>
                    </form>
                    <div class="text-center"><a class="small" href="../iniciarSesion.jsp">Ya tienes una cuenta? Inicia Sesión!</a></div>
                    <div class="text-center" id="regresar"><a class="small" href="../index.html">Regresar al inicio</a></div>
                </div>
            </div>
        </div>
        <script src="../js/extra-scripts.js"></script>
        <script src="../js/validarsus.js"></script>
    </div>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
<%
    }else if(sesionusu.getAttribute("usuario")!= null){
        response.sendRedirect("inicioPersona.jsp");
    }
%>
