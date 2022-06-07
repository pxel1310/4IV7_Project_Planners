/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mvc.Servlet;

import mvc.Control.AccionesPersona;
import mvc.Modelo.MPersona;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jaret
 */
public class servletPersona extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String accion = request.getParameter("accion");
            System.out.println(accion);
            
            try {
            if (accion != null) {
                switch (accion) {
                    case "verificarPersona":
                        System.out.println("Verificar");
                        verificar(request, response);
                        break;
                    case "cerrar":
                        cerrarsession(request, response);
                    case "actualizarempleado":
                        System.out.println("Actualizar empleado");
                        actualizarEmpleado(request, response);
                        break;
                    case "registrarAlumno":
                        System.out.println("Registrar Alumno");
                        registrarAlumno(request, response);
                        break;
                    case "registrarEmpleado":
                        System.out.println("Registrar Empleado");
                        registrarEmpleado(request, response);
                        break;
                    case "actualizarAlumno":
                        System.out.println("Actualizar alumno");
                        actualizarAlumno(request, response);
                        break;
                    case "eliminarUsuario":
                        System.out.println("Eliminar Persona");
                        eliminarPersona(request, response);
                        break;
                    default:
                        response.sendRedirect("vistas/iniciarSesion.jsp");
                }
            } else if (request.getParameter("cambiar") != null) {
                
            } else {
                response.sendRedirect("vistas/iniciarSesion.jsp");
            }
        } catch (Exception e) {
            try {
                this.getServletConfig().getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
                System.out.println(e.getMessage());
                System.out.println("exception servlet");
            } catch (Exception ex) {
                System.out.println("Error" + e.getMessage());
            }
        }
            
        }
    }

    private void verificar(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        String user, pass;
            
            user = request.getParameter("txtUsuario");
            pass = request.getParameter("txtPassword");
            
            //creo a persona
            MPersona persona = new MPersona();
            
            //el mismo objeto mando a verificar
            persona = persona.verificarUsuario(user, pass);
            
            //creamos la sesion
            //lo primero cuando el usario si exsite en la bd
            if(persona != null){
                //si existe en la bd 
                HttpSession sesionusu = request.getSession(true);
                //enviamos el atributo de la sesion
                sesionusu.setAttribute("usuario", persona);
                sesionusu.setAttribute("id", persona.getPersona_id());
                sesionusu.setAttribute("nombre" , persona.getPersona_nombre());
                sesionusu.setAttribute("rol", persona.getRol_id());
                
                //segunda sesion para los parametros
                HttpSession sesionparemtro = request.getSession();
                sesionparemtro.setAttribute("Nombre", user);
                
                //vamos a obtener el privelegio o rol
                
                System.out.println((sesionusu.getAttribute("id")));
                
                if(persona.getPrivilegio_id() == 1 && persona.getRol_id() == 1){
                    response.sendRedirect("vistas/inicioPersona.jsp");
                }else if(persona.getPrivilegio_id() == 3 && persona.getRol_id() == 2){
                    response.sendRedirect("vistas/inicioPersona.jsp");
                }else if(persona.getPrivilegio_id() == 5 && persona.getRol_id() == 3){
                    response.sendRedirect("vistas/inicioPersona.jsp");
                }else if(persona.getPrivilegio_id() == 7 && persona.getRol_id() == 4){
                    response.sendRedirect("vistas/inicioPersona.jsp");
                }      
                               
            }else{
                //el usuario no se a registrado
                request.setAttribute("msje", "Credenciales Incorrectas");
                request.getRequestDispatcher("iniciarSesion.jsp").forward(request, response);
            }           
    }
    
    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesionusu = request.getSession();
        sesionusu.setAttribute("usuario", null);
        sesionusu.invalidate();
        response.sendRedirect("index.html");
        System.out.println("Sesion cerrada exitosamente");
    }
    
    
    private void registrarEmpleado(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
            String nom, appat, apmat, sex, fechana, pass, user;
            int num_em, rol, privilegio, grupo = 5;
            
            num_em = Integer.parseInt(request.getParameter("num_empleado"));
            nom = request.getParameter("nombre");
            appat = request.getParameter("appat");
            apmat = request.getParameter("apmat");
            sex = request.getParameter("sexo");
            fechana = request.getParameter("fecha_nac");
            user = request.getParameter("usuario");
            pass = request.getParameter("password");
            rol = Integer.parseInt(request.getParameter("rol"));
                                    
            
            MPersona p = new MPersona();
            
            p.setEmpleado_num(num_em);
            p.setPersona_nombre(nom);
            p.setPersona_appat(appat);
            p.setPersona_apmat(apmat);
            p.setPersona_sexo(sex);
            p.setPersona_fechaNacimiento(fechana);
            p.setPersona_user(user);
            p.setPersona_password(pass);
            p.setGrupo_id(grupo);
            p.setRol_id(rol);
            
            
            if(rol == 1 ){
                p.setPrivilegio_id(privilegio = 1);
            }else if(rol == 2){
                p.setPrivilegio_id(privilegio = 3);
            }else if(rol == 3){
                p.setPrivilegio_id(privilegio = 5);
            }else if(rol == 4){
                p.setPrivilegio_id(privilegio = 7);
            }
            
            
            //ejecuto la querry
            
            int estatus = AccionesPersona.registrarEmpleado(p);
            
            if(estatus > 0){
                response.sendRedirect("vistas/exito.jsp");
            }else{
                response.sendRedirect("error.jsp");
            }       
    }
    
    
    private void registrarAlumno(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
            String nom, appat, apmat, sex, fechana, pass, user;
            int bol_al, rol = 1, privilegio, grupo;
            
                       
            nom = request.getParameter("nombre");
            appat = request.getParameter("appat");
            apmat = request.getParameter("apmat");
            sex = request.getParameter("sexo");
            fechana = request.getParameter("fecha_nac");
            user = request.getParameter("usuario");
            pass = request.getParameter("password");
            grupo = Integer.parseInt(request.getParameter("grupo"));
            bol_al = Integer.parseInt(request.getParameter("bol_alumno"));
            
            
            MPersona p = new MPersona();
            
            p.setPersona_nombre(nom);
            p.setPersona_appat(appat);
            p.setPersona_apmat(apmat);
            p.setPersona_sexo(sex);
            p.setPersona_fechaNacimiento(fechana);
            p.setPersona_user(user);
            p.setPersona_password(pass);
            p.setGrupo_id(grupo);
            p.setAlumno_boleta(bol_al);
            p.setRol_id(rol);
            
            
            if(rol == 1 ){
                p.setPrivilegio_id(privilegio = 1);
            }           
            
            //ejecuto la querry
            
            int estatus = AccionesPersona.registrarAlumno(p);
            
            if(estatus > 0){
                response.sendRedirect("vistas/exito.jsp");
            }else{
                response.sendRedirect("error.jsp");
            }        
    }
        
        
    private void actualizarEmpleado(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
        String nom, appat, apmat, sex, fechana, pass, user;
        int num_em, id;
        
        id = Integer.parseInt(request.getParameter("id2"));
        
        num_em = Integer.parseInt(request.getParameter("num_empleado2"));
        nom = request.getParameter("nombre2");
        appat = request.getParameter("appat2");
        apmat = request.getParameter("apmat2");
        sex = request.getParameter("sexo2");
        fechana = request.getParameter("fecha_nac2");
        user = request.getParameter("usuario2");
        pass = request.getParameter("password2");
        
        MPersona p = new MPersona();
        
        p.setPersona_id(id);
        p.setEmpleado_num(num_em);
        p.setPersona_nombre(nom);
        p.setPersona_appat(appat);
        p.setPersona_apmat(apmat);
        p.setPersona_sexo(sex);
        p.setPersona_fechaNacimiento(fechana);
        p.setPersona_user(user);
        p.setPersona_password(pass);
        
        
        int estatus = AccionesPersona.actualizarEmpleado(p);
        HttpSession sesionusu = request.getSession();
        
        if(estatus > 0){
            response.sendRedirect("vistas/update2.jsp");
        }else{
            request.setAttribute("msje1", "Error al actualizar usuario");
            request.getRequestDispatcher("vistas/consultar_docente.jsp").forward(request, response);
        }       
    }
    
    
    public void actualizarAlumno(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
        String nom, appat, apmat, sex, fechana, pass, user;
        int bol_al, id;

        id = Integer.parseInt(request.getParameter("id2"));

        nom = request.getParameter("nombre2");
        appat = request.getParameter("appat2");
        apmat = request.getParameter("apmat2");
        sex = request.getParameter("sexo2");
        fechana = request.getParameter("fecha_nac2");
        user = request.getParameter("usuario2");
        pass = request.getParameter("password2");
        bol_al = Integer.parseInt(request.getParameter("boleta_alumno2"));
        
        MPersona p = new MPersona();
        
        p.setPersona_id(id);
        p.setAlumno_boleta(bol_al);
        p.setPersona_nombre(nom);
        p.setPersona_appat(appat);
        p.setPersona_apmat(apmat);
        p.setPersona_sexo(sex);
        p.setPersona_fechaNacimiento(fechana);
        p.setPersona_user(user);
        p.setPersona_password(pass);
        
        int estatus = AccionesPersona.actualizarAlumno(p);
        
        if(estatus > 0){
            response.sendRedirect("vistas/update2.jsp");
        }else{
            request.setAttribute("msje1", "Error al actualizar usuario");
            request.getRequestDispatcher("vistas/consultar_alumno.jsp").forward(request, response);
        }  
    }

    
    private void eliminarPersona(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        int id = Integer.parseInt(request.getParameter("per_id"));
            
        int estatus = AccionesPersona.eliminarPersona(id);

        if(estatus > 0){
            response.sendRedirect("vistas/inicioPersona.jsp");
        }else{
            response.sendRedirect("error.jsp");
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
