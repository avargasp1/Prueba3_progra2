/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Negocio.Sis_Operativo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServSistema_Op extends HttpServlet {

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
            
            Sis_Operativo sis = new Sis_Operativo(); 
            
            if(request.getParameter("eliminar")!=null){
                int id=Integer.parseInt(request.getParameter("eliminar"));
                sis.setSistema_id(id);
                sis.delete();
                
                response.sendRedirect("/Prueba3/sistema_operativo/index.jsp");
              
           }if(request.getParameter("guardar")!=null){
                String nombre =request.getParameter("nombre");
                String fecha_creacion = request.getParameter("fecha_creacion");
                int lenguaje_id = Integer.parseInt(request.getParameter("lenguaje_id"));
                
                sis.setNombre(nombre);
                sis.setFecha_creacion(fecha_creacion);
                sis.setLenguaje_id(lenguaje_id);
                sis.insert();
                
                response.sendRedirect("/Prueba3/celular/index.jsp");
               
           }if(request.getParameter("editar")!=null){
                String nombre =request.getParameter("nombre");
                String fecha_creacion = request.getParameter("fecha_creacion");
                int lenguaje_id = Integer.parseInt(request.getParameter("lenguaje_id"));
                int id = Integer.parseInt(request.getParameter("sistema_id"));
                
                sis.setSistema_id(id);
                sis.setNombre(nombre);
                sis.setFecha_creacion(fecha_creacion);
                sis.setLenguaje_id(lenguaje_id);
                sis.update();
                
                response.sendRedirect("/Prueba3/celular/index.jsp");
           }
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
