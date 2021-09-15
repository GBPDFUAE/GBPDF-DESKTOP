/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DB_SERVICE.DOA_Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {

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
             String stud_name = request.getParameter("stud_name");
             String stud_mobno = request.getParameter("mno");
            String stud_pincode = request.getParameter("pincode");
            String stud_cls = request.getParameter("cls");
            String stud_email = request.getParameter("email");
            String stud_pwd = DOA_Service.getAlphaNumericString(6);
           String title="Wishtopia";
//           String msg="Your Password is:"+stud_pwd;
//            try {
//                mail.mailsendSc(title, msg, stud_email);
//            } catch (MessagingException ex) {
//                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
//            }
            
            DB_SERVICE.DOA_Service.addStudent(stud_name, stud_mobno, stud_pincode, stud_cls,stud_email,stud_pwd);            
             String otp=DB_SERVICE.DOA_Service.getOTP();
             
              String otpmsg="Welcome to WISHTOPIA LEARNINGS,To Register your One Time Password(OTP) for Verification-Enter OTP :"+otp;
           // String otpmsg1="OTP is "+otp+". Use it to verify your mobile number on WISHTOPIA LEARNINGS";
         //   DB_SERVICE.DOA_Service.SendSms(msg, stud_mobno);
            DB_SERVICE.DOA_Service.SendSms(otpmsg, stud_mobno);
             ArrayList stud=new ArrayList();
            try {
                stud = DB_SERVICE.DOA_Service.getStudentinfo(stud_mobno);
            } catch (SQLException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }

                    request.setAttribute("stud", stud);
                    String studentName = stud.get(1).toString().toUpperCase().trim();
                    String sid = stud.get(0).toString().toUpperCase().trim();
                    
                    
                     DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                Date date = new Date();
                String logindate = dateFormat.format(date);
                
                
                DateFormat tdateFormat = new SimpleDateFormat("HH:mm:ss aa");
                Date tdate = new Date();
                String logintime = tdateFormat.format(tdate);
             DB_SERVICE.DOA_Service.student_in(sid, logindate, logintime);
            try {
                mail.mailsendSc("NO REPLY WISHTOPIA LEARNINGS", otpmsg, stud_email);
            } catch (MessagingException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }
            request.setAttribute("otp", otp);
            
             request.getSession().setAttribute("mno", stud_mobno);
             request.getSession().setAttribute("mobilnno", stud_mobno);
             request.getSession().setAttribute("sname", stud_name);             
             RequestDispatcher dis = request.getRequestDispatcher("OTP.jsp");
              dis.forward(request, response);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
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
