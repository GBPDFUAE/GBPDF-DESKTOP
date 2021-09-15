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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Win7
 */
@WebServlet(urlPatterns = {"/SharedQuestions"})
public class SharedQuestions extends HttpServlet {

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
             String staffid = request.getSession().getAttribute("staffid").toString();
            String sid[]=request.getParameterValues("stud");
            String qid[]=request.getParameterValues("qid");
            String sub=request.getParameter("sub");
            String startdatetime=request.getParameter("fdate")+" "+request.getParameter("ftime");
             String enddatetime=request.getParameter("tdate")+" "+request.getParameter("ttime");
             
             for(int i=0;i<sid.length;i++)
             {
             String sname=sid[i];
             for(int j=0;j<qid.length;j++)
             {
                 String ques=qid[j];
                 DOA_Services.Forwardques(staffid, ques, sname, sub, startdatetime, enddatetime);
             }
                 
             }
             
            String aid=DOA_Services.getStaffaid(staffid);
            
             DateFormat tdateFormat = new SimpleDateFormat("HH:mm:ss aa");
                Date tdate = new Date();
                String logoutime = tdateFormat.format(tdate);
                DOA_Services.update_staffs_in(aid, logoutime);
              ArrayList<ArrayList> questionlist = DOA_Services.getAllquesbyStaff(staffid);
            request.setAttribute("ques", questionlist);
             ArrayList sl=DOA_Services.getStudents();
            request.setAttribute("sl", sl);
            request.setAttribute("msg", "send successfully");
            RequestDispatcher dis = request.getRequestDispatcher("Questions.jsp");
            dis.forward(request, response);
            out.println("<!DOCTYPE html>");
             
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SharedQuestions</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SharedQuestions at " + request.getContextPath() + "</h1>");
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
