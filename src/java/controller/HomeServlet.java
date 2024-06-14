/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class HomeServlet extends HttpServlet {

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
            String uri = request.getRequestURI();
            if(uri.equals("/choose")){
                request.getRequestDispatcher("/WEB-INF/view/choose.jsp").forward(request, response);
            }else if(uri.equals("/main")){
                request.getRequestDispatcher("/WEB-INF/view/main.jsp").forward(request, response);
            }else if(uri.equals("/mainBeronio")){
                request.getRequestDispatcher("/WEB-INF/view/mainBeronio.jsp").forward(request, response);
            }else if(uri.equals("/buttons")){
                request.getRequestDispatcher("/WEB-INF/view/buttons.jsp").forward(request, response);
            }else if(uri.equals("/button1")){
                    request.getRequestDispatcher("/WEB-INF/view/button1.jsp").forward(request, response);
            }else if(uri.equals("/button2")){
                    request.getRequestDispatcher("/WEB-INF/view/button2.jsp").forward(request, response);
            }else if(uri.equals("/button3")){
                    request.getRequestDispatcher("/WEB-INF/view/button3.jsp").forward(request, response);
            }else if(uri.equals("/buttonsBeronio")){
                    request.getRequestDispatcher("/WEB-INF/view/buttonsBeronio.jsp").forward(request, response);  
            }else if(uri.equals("/button1Beronio")){
                    request.getRequestDispatcher("/WEB-INF/view/button1Beronio.jsp").forward(request, response);  
            }else{
            request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
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
