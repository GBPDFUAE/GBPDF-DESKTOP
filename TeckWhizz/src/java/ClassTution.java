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
@WebServlet(urlPatterns = {"/ClassTution"})
public class ClassTution extends HttpServlet {

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
            String btnsub = request.getParameter("btnsub");
            if (btnsub.equalsIgnoreCase("Continue")) {
                String eotp = request.getParameter("otpnumber");
                String cotp = request.getParameter("cotp");
                String stud_mobno = request.getParameter("mno");
                String stud_email = request.getParameter("email");
                String stud_uname = request.getParameter("uname");

                if (cotp.equalsIgnoreCase(eotp)) {
                    request.setAttribute("cmsg", "Admin will Contact Soon  ");
                    RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
                    dis.forward(request, response);
                } else {
                    request.setAttribute("uname", stud_uname);
                    request.setAttribute("email", stud_email);
                    request.setAttribute("mno", stud_mobno);
                    request.setAttribute("otp", cotp);
                    request.setAttribute("msg", "Invalid OTP");

                    RequestDispatcher dis = request.getRequestDispatcher("ClassTution.jsp");
                    dis.forward(request, response);
                }
            } else {
                String standrd = request.getParameter("std");
                String board = request.getParameter("bord");
                String subs[] = request.getParameterValues("subs");
                String subjects ="";
                for(int i=0;i<subs.length;i++)
                {
                   subjects=subjects+subs[i]+","; 
                }

                String payment = request.getParameter("payment");
                String stud_mobno = request.getParameter("mno");
                String stud_email = request.getParameter("email");
                String stud_uname = request.getParameter("uname");
                DB_SERVICE.DOA_Service.addEntrollTuition(stud_uname, stud_email, stud_mobno, standrd, board, subjects, payment);
                String otp = DB_SERVICE.DOA_Service.getOTP();
                String otpmsg = "Welcome to WISHTOPIA LEARNINGS,To Register your One Time Password(OTP) for Verification-Enter OTP :" + otp;

                DB_SERVICE.DOA_Service.SendSms(otpmsg, stud_mobno);
                request.setAttribute("uname", stud_uname);
                request.setAttribute("email", stud_email);
                request.setAttribute("mno", stud_mobno);
                request.setAttribute("otp", otp);
                 request.setAttribute("msg", "");

                RequestDispatcher dis = request.getRequestDispatcher("ClassTution.jsp");
                dis.forward(request, response);
            }

//             String standrd=request.getParameter("");
//            String like_atten=request.getParameter("like_atten");
//            String board=request.getParameter("board");
//            String subjects=request.getParameter("subjects");
//            String start=request.getParameter("start");
//            String uname=request.getParameter("uname");
//            String email=request.getParameter("email");
//            String mno=request.getParameter("mno");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ClassTution</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ClassTution at " + request.getContextPath() + "</h1>");
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
