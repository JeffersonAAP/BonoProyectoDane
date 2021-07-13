/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control_vistas;

import DAO.Municipios_DAO;
import DAO.Persona_DAO;
import DTO.Municipios;
import DTO.Persona;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JeAnA
 */
public class CreatePer extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        
        Municipios_DAO daomncpo = new Municipios_DAO();
        List<Municipios> mncpo = daomncpo.readDptos();
        Integer cedula = Integer.parseInt(request.getParameter("cedula"));
        if (cedula == null)
            request.getRequestDispatcher("Error-a1.jsp").forward(request, response);
        String nombre = request.getParameter("nombre");
        if(nombre.length() == 0)
            request.getRequestDispatcher("Error-a1.jsp").forward(request, response);
        String email = request.getParameter("email");
        if(email.length() == 0)
            request.getRequestDispatcher("Error-a1.jsp").forward(request, response);
        String direccion = request.getParameter("direccion");
        if(direccion.length() == 0)
            request.getRequestDispatcher("Error-a1.jsp").forward(request, response);
        
        Persona_DAO dao = new Persona_DAO();
        List<Persona> pers = dao.readPersonas();
        
        for(Persona p: pers){
            if(p.getCedula().equals(cedula))
                request.getRequestDispatcher("Error-a1.jsp").forward(request, response);
        }
        
        String exa  = request.getParameter("municipios");
        
        Municipios idMun = null;
        
        for(Municipios var : mncpo)
            if(var.getNombre().equals(exa))
                idMun = var;
        
        Persona p = new Persona(cedula,direccion,email,nombre,idMun);
        dao.create(p);
        request.getRequestDispatcher("a13.jsp").forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CreatePer.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CreatePer.class.getName()).log(Level.SEVERE, null, ex);
        }
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
