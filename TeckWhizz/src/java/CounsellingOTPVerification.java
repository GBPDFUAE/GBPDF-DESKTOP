/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/CounsellingOTPVerification"})
public class CounsellingOTPVerification extends HttpServlet {

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
              String gotp = request.getParameter("gotp");
                String gmno = request.getParameter("gmno");
                 String otpval[] = request.getParameterValues("otps");
                   String stud_otp ="";
            for(int i=0;i<otpval.length;i++)
            {
                stud_otp=stud_otp+otpval[i].trim();
            }
              if(gotp.equalsIgnoreCase(stud_otp))
            {
                DB_SERVICE.DOA_Service.addConselling(gmno);
                request.setAttribute("cmsg", "Couselling Session Added,Admin will Contact Soon  ");
                 RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
              dis.forward(request, response);
            }else
              {
                  request.setAttribute("mno",gmno);
              request.setAttribute("otp",gotp);
               request.setAttribute("msg","Enter Wrong OTP Number");
             RequestDispatcher dis = request.getRequestDispatcher("CounsellingOTP.jsp");
              dis.forward(request, response);
              }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CounsellingOTPVerification</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CounsellingOTPVerification at " + request.getContextPath() + "</h1>");
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
