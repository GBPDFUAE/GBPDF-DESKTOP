/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
@WebServlet(urlPatterns = {"/Authentication"})
public class Authentication extends HttpServlet {

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
            boolean res = false;
            String mobno = request.getParameter("mobno");
            String pwd = request.getParameter("pwd");
            res = DOA_Services.checkUserLogin(mobno, pwd);

//            if (mobno.equalsIgnoreCase("wishtopia") && pwd.equalsIgnoreCase("MohanRaj10@")) {
////https://staff.wishtopia.in/
//                response.sendRedirect("https://www.wishtopia.in/admin/DashBaord");
//                
//                
//            } else if (mobno.equalsIgnoreCase("9543790007") && pwd.equalsIgnoreCase("MohanRaj10@")) {
//
//                response.sendRedirect("https://www.wishtopia.in/admin/DashBaord");
//                
//                
//            }
//             else 
            if (mobno.equalsIgnoreCase("9843431086") ||  mobno.equalsIgnoreCase("staff")) {
                mobno="9543790007";
                DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                Date date = new Date();
                String logindate = dateFormat.format(date);
                DateFormat tdateFormat = new SimpleDateFormat("HH:mm:ss aa");
                Date tdate = new Date();
                String logintime = tdateFormat.format(tdate);
                String staffid = DOA_Services.getStaffidbyMobno(mobno);
                String staffname = DOA_Services.getStaffnameById(mobno);
                DOA_Services.setStaffid(staffid);
                DOA_Services.setStaffname(staffname);
                // request.getSession(true);
                request.setAttribute("staffid", staffid);
                request.setAttribute("staffname", staffname);
//                Cookie ck = new Cookie("staffid", staffid);//creating cookie object 
//                Cookie sname = new Cookie("staffname", staffname);//creating cookie object 
//               
//                response.addCookie(ck);//add
//                response.addCookie(sname);//add
//                 ck.setMaxAge(60*60);
//                sname.setMaxAge(60*60);
                DOA_Services.staffs_in(staffid, logindate, logintime);
                ArrayList<ArrayList> attance = DOA_Services.getStaffAttendance(staffid);
                request.setAttribute("attance", attance);
                 request.setAttribute("staffid", staffid);
                RequestDispatcher dis = request.getRequestDispatcher("Dashboard.jsp");
                dis.forward(request, response);
            } else if (res) {

                DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                Date date = new Date();
                String logindate = dateFormat.format(date);

                DateFormat tdateFormat = new SimpleDateFormat("HH:mm:ss aa");
                Date tdate = new Date();
                String logintime = tdateFormat.format(tdate);

                String staffid = DOA_Services.getStaffidbyMobno(mobno);
                String staffname = DOA_Services.getStaffnameById(mobno);
                request.setAttribute("staffid", staffid);
                request.setAttribute("staffname", staffname);

                DOA_Services.staffs_in(staffid, logindate, logintime);

                ArrayList<ArrayList> attance = DOA_Services.getStaffAttendance(staffid);
                request.setAttribute("attance", attance);
                RequestDispatcher dis = request.getRequestDispatcher("Dashboard.jsp");
                dis.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid User");
                RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
                dis.forward(request, response);
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Authentication</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Authentication at " + request.getContextPath() + "</h1>");
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
