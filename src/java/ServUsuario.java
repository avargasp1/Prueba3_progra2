/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Negocio.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejandrovargas
 */
public class ServUsuario extends HttpServlet {

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
            Usuario user = new Usuario();
            
            if(request.getParameter("eliminar")!=null){
               int id=Integer.parseInt(request.getParameter("eliminar"));
               
               user.setUsuario_id(id);
               user.delete();
               
               response.sendRedirect("/Prueba3/usuario/index.jsp");
               
           }if(request.getParameter("guardar").equals("1")){
                String nombre =request.getParameter("nombre");
                String clave = request.getParameter("clave");
                
                user.setNombre(nombre);
                user.setClave(clave);
                user.insert();

               response.sendRedirect("/Prueba3/usuario/index.jsp");
               
           }if(request.getParameter("editar").equals("1") ){
                String nombre =request.getParameter("nombre");
                String clave= request.getParameter("clave");
                int usuario_id = Integer.parseInt(request.getParameter("usuario_id"));
                
                user.setNombre(nombre);
                user.setClave(clave);
                user.setUsuario_id(usuario_id);
                user.update();
                
               response.sendRedirect("/Prueba3/usuario/index.jsp");
               
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
