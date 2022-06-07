/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mvc.Servlet;

import mvc.Control.AccionesEquipo;
import mvc.Modelo.DEquipo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jaret
 */
public class servletEquipo extends HttpServlet {

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
                    case "registrarEquipo":
                        System.out.println("Registrar Equipo");
                        registrarEquipo(request, response);
                        break;
                    case "eliminarEquipo":
                        System.out.println("Eliminar Equipo");
                        eliminarEquipo(request, response);
                        break;
                    case "actulaizarEquipo":
                        System.out.println("Registrar Alumno");

                        break;
                    default:
                        response.sendRedirect("vistas/consultarReportes.jsp");
                }
            } else if (request.getParameter("cambiar") != null) {
                
            } else {
                response.sendRedirect("vistas/consultarReportes.jsp");
            }
        } catch (Exception e) {
            try {
                this.getServletConfig().getServletContext().getRequestDispatcher("/mensaje.jsp").forward(request, response);
                System.out.println(e.getMessage());
                System.out.println("exception servlet");
            } catch (Exception ex) {
                System.out.println("Error" + e.getMessage());
            }
        }
        }
    }
    
    public void registrarEquipo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
        String etiqueta_equipo, monitor, config, problema, serial;
        int lab, marca, accesorio, estado_equipo;
                
        lab = Integer.parseInt(request.getParameter("lab"));
        etiqueta_equipo = request.getParameter("etiqueta");
        marca = Integer.parseInt(request.getParameter("marca"));
        serial = request.getParameter("cpu_serial");
        accesorio = Integer.parseInt(request.getParameter("accesorios"));
        monitor = request.getParameter("monitor");
        config = request.getParameter("config");
        problema = request.getParameter("problema");
        estado_equipo = 5;
        
        DEquipo e = new DEquipo();
        
        e.setEquipo_etiqueta(etiqueta_equipo);
        e.setLab_id(lab);
        e.setMarca_id(marca);
        e.setCpu_serial(serial);
        e.setAccesorio_id(accesorio);
        e.setMonitor_id(monitor);
        e.setConfig_id(config);
        e.setEstadoequipo_id(estado_equipo);
        e.setProblema(problema);
        
        int estatus = AccionesEquipo.registrarEquipo(e);
        
        if(estatus > 0){
            response.sendRedirect("vistas/exito.jsp");
        }else{
            response.sendRedirect("error.jsp");
        } 
    }

    public void eliminarEquipo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        
        String etiqueta;
        
        etiqueta =  request.getParameter("etiqueta");
        
        int estatus = AccionesEquipo.eliminarEquipo(etiqueta);

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
