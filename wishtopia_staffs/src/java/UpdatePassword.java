/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Win7
 */
@WebServlet(urlPatterns = {"/UpdatePassword"})
public class UpdatePassword extends HttpServlet {

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
           //  String staff_id=request.getSession().getAttribute("staffid").toString();
                    //    Cookie ck[]= request.getCookies();         
                String staffid =  DOA_Services.getLastStaffidLogin();
            String aid=DOA_Services.getStaffaid(staffid);
            String pwd=request.getParameter("conpwd");
            int res=DOA_Services.updatePwd(staffid, pwd);
            //  String staffid= request.getSession().getAttribute("staffid").toString();
           // String aid=DOA_Services.getStaffaid(staffid);
             String staffname=DOA_Services.getStaffnameById(staffid);
              request.setAttribute("staffname", staffname);
                request.setAttribute("staffname", staffname);
             DateFormat tdateFormat = new SimpleDateFormat("HH:mm:ss aa");
                Date tdate = new Date();
                String logoutime = tdateFormat.format(tdate);
                DOA_Services.update_staffs_in(aid, logoutime);
            if(res>=0){
                request.setAttribute("msg", "Password updated Successfully");
              RequestDispatcher dis = request.getRequestDispatcher("Dashbord");
            dis.forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdatePassword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdatePassword at " + request.getContextPath() + "</h1>");
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
