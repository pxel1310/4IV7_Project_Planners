/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mvc.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mvc.Control.AccionesReportes;
import mvc.Modelo.DReporte;

/**
 *
 * @author Jaret
 */
public class servletReporte extends HttpServlet {

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
                        case "crearReporte":
                            System.out.println("Crear Reporte");
                            crearReporte(request, response);
                            break;
                        case "actualizarReporte":
                            System.out.println("Actualizar reporte");
                            actualizarReporte(request, response);
                            break;
                        case "eliminarReporte":
                            System.out.println("Eliminar Reporte");
                            eliminarReporte(request, response);
                            break;
                        default:
                            response.sendRedirect("vistas/consultarEquipo.jsp");
                    }
                } else if (request.getParameter("cambiar") != null) {

                } else {
                    response.sendRedirect("vistas/consultarReportes.jsp");
                }
            } catch (Exception e) {
                try {
                    this.getServletConfig().getServletContext().getRequestDispatcher("error.jsp").forward(request, response);
                    System.out.println(e.getMessage());
                    System.out.println("exception servlet");
                } catch (Exception ex) {
                    System.out.println("Error" + e.getMessage());
                }
            }          
        }
    }

    
    public void crearReporte(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        int persona_id, etiqueta_id, prioridad_id = 4, estado_id = 1; 
        
        HttpSession sesionusu = request.getSession();       
        
        etiqueta_id = Integer.parseInt(request.getParameter("etiqueta_reporte"));
        persona_id = (int)sesionusu.getAttribute("id");
        System.out.println(persona_id);
        LocalDateTime hora = LocalDateTime.now();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();       
	String dateToStr = dateFormat.format(date);
        System.out.println(dateToStr);
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("H:mm:ss[.SSSSSS]");  
	String timeToStr = dtf.format(hora);
        
        DReporte r = new DReporte();
        
        r.setEtiqueta_id(etiqueta_id);
        r.setPersonareporte_id(persona_id);
        r.setPrioridad_id(prioridad_id);
        r.setEstadoreporte_id(estado_id);
        r.setFechareporte(dateToStr);
        r.setHorareporte(timeToStr);
        
        int estatus = AccionesReportes.registrarReporte(r);
        
        if(estatus > 0){
                response.sendRedirect("vistas/exito.jsp");
        }else{
            response.sendRedirect("error.jsp");
        }        
    }
    
    public void actualizarReporte(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        int etiqueta_id, prioridad_id, estado_id, reporte_id;
        
        reporte_id = Integer.parseInt(request.getParameter("idreporte2"));
        etiqueta_id = Integer.parseInt(request.getParameter("etiqueta_reporte2"));
        prioridad_id = Integer.parseInt(request.getParameter("prioridad2"));
        estado_id = Integer.parseInt(request.getParameter("estadorep2"));
        
        DReporte r = new DReporte();
        
        r.setReporte_id(reporte_id);
        r.setEtiqueta_id(etiqueta_id);
        r.setPrioridad_id(prioridad_id);
        r.setEstadoreporte_id(estado_id);
        
        int estatus = AccionesReportes.actualizarReporte(r);
        
        if(estatus > 0){
            response.sendRedirect("vistas/update2.jsp");
        }else{
            request.setAttribute("msje1", "Error al actualizar usuario");
            request.getRequestDispatcher("vistas/editarReporte.jsp").forward(request, response);
        } 
    }
    
    public void eliminarReporte(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        int id = Integer.parseInt(request.getParameter("rep_id"));
            
        int estatus = AccionesReportes.eliminarReporte(id);

        if(estatus > 0){
            response.sendRedirect("vistas/consultarReportes.jsp");
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
