/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(urlPatterns = {"/AddSendStaffLink"})
public class AddSendStaffLink extends HttpServlet {

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
            
             String title=request.getParameter("title");
            String msg=request.getParameter("message");
            msg=msg+"\nhttps://staff.wishtopia.in/teacher_onboarding_form";
            String emailList=request.getParameter("emails");
            String ea[]=emailList.split(",");
            
             String mnlist=request.getParameter("mno");
              DOA_Services.addSendStaffLink(title, msg, emailList,mnlist);
            String mnos[]=mnlist.split(",");
           int sz=ea.length;
           for(int i=0;i<sz;i++)
           {
               String email=ea[i];
                try {
                    
                    mail.mailsendSc(title, msg, email);
                    
                } catch (MessagingException ex) {
                    Logger.getLogger(SendStaffMessage.class.getName()).log(Level.SEVERE, null, ex);
                    ex.printStackTrace();
                    System.out.println(""+ex.getMessage());
                }
                       
           }
           
            for(int i=0;i<mnos.length;i++)
           {
               String mn=mnos[i];
                try {
                    
                    DOA_Services.SendSms(msg, mn);
                    
                } catch (Exception ex) {
                    Logger.getLogger(SendStaffMessage.class.getName()).log(Level.SEVERE, null, ex);
                    System.out.println(""+ex.getMessage());
                }
                       
           }
          
            ArrayList<ArrayList> students=DOA_Services.getAllStaffSendLinks();
             request.setAttribute("sndlkns",students);
              RequestDispatcher dis = request.getRequestDispatcher("SendLinkStaffs.jsp");
            dis.forward(request, response);
            out.println("<!DOCTYPE html>");
            
            
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddSendStaffLink</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddSendStaffLink at " + request.getContextPath() + "</h1>");
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
