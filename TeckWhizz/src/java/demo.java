/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(urlPatterns = {"/demo"})
public class demo extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String mnovalue[] = request.getParameterValues("mno");
            String pwd = request.getParameter("pwd");

            String stud_mobno = "6382556797";
          
//            String otp=DB_SERVICE.DOA_Service.getOTP();
//            String otpmsg="OTP is "+otp+". Use it to verify your mobile number on Teckwhizz";
//            
//            DB_SERVICE.DOA_Service.SendSms(otpmsg, stud_mobno);
//            request.setAttribute("otp", otp);
//             request.getSession().setAttribute("mno", stud_mobno);
//             RequestDispatcher dis = request.getRequestDispatcher("OTP.jsp");
// dis.forward(request, response);
                try {
              // String sid=   DB_SERVICE.DOA_Service.getStudentLastMobileNumberbyid();

                    ArrayList stud = DB_SERVICE.DOA_Service.getStudentinfo(stud_mobno);

                    request.setAttribute("stud", stud);
                    String studentName ="student1";
                    String sid = "2";
                    
                    
                     DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                Date date = new Date();
                String logindate = dateFormat.format(date);
                
                
                DateFormat tdateFormat = new SimpleDateFormat("HH:mm:ss aa");
                Date tdate = new Date();
                String logintime = tdateFormat.format(tdate);
                DB_SERVICE.DOA_Service.student_in(sid, logindate, logintime);
                
                    request.getSession().setAttribute("sname", studentName);
                    request.getSession().setAttribute("mobilnno", stud_mobno);
                    request.getSession().setAttribute("sid", sid);
                    request.setAttribute("cp", "3");
                    request.setAttribute("fp", "2");
                    RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
                    dis.forward(request, response);

                } catch (SQLException ex) {
                    Logger.getLogger(Authetication.class.getName()).log(Level.SEVERE, null, ex);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(Authetication.class.getName()).log(Level.SEVERE, null, ex);
                }

             
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet demo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet demo at " + request.getContextPath() + "</h1>");
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
