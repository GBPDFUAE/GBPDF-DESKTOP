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
@WebServlet(urlPatterns = {"/ForgetPassword"})
public class ForgetPassword extends HttpServlet {

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
            String mnovalue[] = request.getParameterValues("mno");
             String stud_mobno ="";
            for(int i=0;i<mnovalue.length;i++)
            {
                stud_mobno=stud_mobno+mnovalue[i].trim();
            }
            boolean res=DB_SERVICE.DOA_Service.checkUserMobile(stud_mobno);
             boolean mres= DB_SERVICE.DOA_Service.checkUserMobile(stud_mobno);
             if(mres){
            if(res)
            {
              String otp=DB_SERVICE.DOA_Service.getOTP();
              String email=DB_SERVICE.DOA_Service.getStudentEmail(stud_mobno);
             // String otpmsg="Your one time password(OTP) for WISHTOPIA LEARNINGS request is "+otp+".";
                 String otpmsg="Welcome to WISHTOPIA LEARNINGS,To Register your One Time Password(OTP) for Verification-Enter OTP :"+otp;
              DB_SERVICE.DOA_Service.SendSms(otpmsg, stud_mobno);
                try {
                    mail.mailsendSc("NO REPLY WISHTOPIA LEARNINGSS", otpmsg, email);
                } catch (MessagingException ex) {
                    Logger.getLogger(ForgetPassword.class.getName()).log(Level.SEVERE, null, ex);
                }
              DB_SERVICE.DOA_Service.updatePassword(stud_mobno, otp);
              request.getSession().setAttribute("mno", stud_mobno);
              request.setAttribute("otp", otp);
               RequestDispatcher dis = request.getRequestDispatcher("fotp.jsp");
              dis.forward(request, response);
            }else
            {
                request.setAttribute("msg", "Invalid Mobile Number");
                 request.getSession().setAttribute("mno", stud_mobno);
              request.setAttribute("otp", "0");
              
               RequestDispatcher dis = request.getRequestDispatcher("forgetPassword.jsp");
              dis.forward(request, response);
            }
             }else
            {
                 request.setAttribute("msg", "*  Mobile Number Not Registered with WISHTOPIA");               
                 request.getSession().setAttribute("mno", stud_mobno);
              request.setAttribute("otp", "0");
              
               RequestDispatcher dis = request.getRequestDispatcher("forgetPassword.jsp");
              dis.forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgetPassword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgetPassword at " + request.getContextPath() + "</h1>");
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
