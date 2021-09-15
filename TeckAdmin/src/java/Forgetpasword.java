/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
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
@WebServlet(urlPatterns = {"/Forgetpasword"})
public class Forgetpasword extends HttpServlet {

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
       
            /* TODO output your page here. You may use following sample code. */
             try {
            String mobno=request.getParameter("mobno");
            
          
            
            if(mobno.equalsIgnoreCase("9543790007"))
            {
             String otp=   DOA_Services.getOTP();
             
             String msg="Your OTP IS:"+otp;
             DOA_Services.SendSms(msg, mobno);
             String email=DOA_Services.getStaffidbyEmail(mobno);
                try {
                    mail.mailsendSc("Forgot Password", msg, email);
                } catch (MessagingException ex) {
                    Logger.getLogger(Forgetpasword.class.getName()).log(Level.SEVERE, null, ex);
                }
                  request.setAttribute("otp", otp);
                     request.setAttribute("mno", mobno);
                RequestDispatcher dis = request.getRequestDispatcher("OTP.jsp");
                dis.forward(request, response);
                
            }else
            {
                request.setAttribute("msg", "Invalid Mobile Number");
                RequestDispatcher dis = request.getRequestDispatcher("ForgetPassword.jsp");
                dis.forward(request, response);
                
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Forgetpasword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Forgetpasword at " + request.getContextPath() + "</h1>");
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
