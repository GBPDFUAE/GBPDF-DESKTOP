/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Win7
 */
@WebServlet(urlPatterns = {"/AddMapping"})
public class AddMapping extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */

            String staffs[] = request.getParameterValues("staffid");
            String students[] = request.getParameterValues("studid");
            String classfdate = request.getParameter("fdate");
            String calssftime = request.getParameter("ftime");

            String classtdate = request.getParameter("tdate");
            String calssttime = request.getParameter("totime");

            int staffsz = staffs.length;
            int studsz = students.length;
            for (int i = 0; i < staffsz; i++) {

                for (int j = 0; j < studsz; j++) {
                    DOA_Services.addMappingVideoClass(staffs[i], students[j], classfdate, calssftime, classtdate, calssttime);
                }

            }

            ArrayList<ArrayList> staffslist = DOA_Services.getStaffList();
            ArrayList<ArrayList> studs = DOA_Services.getStudentDetails();
            ArrayList<ArrayList> md = DOA_Services.getMappingVideoDetails();
            request.setAttribute("staffs", staffslist);
            request.setAttribute("studs", studs);
            request.setAttribute("md", md);
            RequestDispatcher dis = request.getRequestDispatcher("LiveClassAllot.jsp");
            dis.forward(request, response);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddMapping</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddMapping at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
