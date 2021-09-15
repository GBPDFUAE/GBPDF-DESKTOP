/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

/**
 *
 * @author cloudsim
 */
@WebServlet(urlPatterns = {"/AddCompleteProfile"})
public class AddCompleteProfile extends HttpServlet {

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
        ///  String sa = "0";
        //   String sd = "0";
        List fileItemsList = null;
        float filesize = 0;
        String _fileLink;
        String _fileName = null;
        //   String _uploadDir = getServletContext().getRealPath("//myfile//");
//Change upload with your directory
        //   HttpSession session = request.getSession(true);

        if (ServletFileUpload.isMultipartContent(request)) {
            ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());

            try {
                fileItemsList = servletFileUpload.parseRequest(request);
            } catch (FileUploadException ex) {
                Logger.getLogger(AddCompleteProfile.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("" + ex.getMessage());
                //Change above line replace FileUploadExample with your file name
            }

            String optionalFileName = "";
            String panfileimg = "";
            String aharfilebackimg = "";
            String aharfilefrntimg = "";
            String bankimg = "";
            String dob = "";
            String title = "";
            String cls = "";
            String std = "";
            FileItem fileItem = null;

            long srt = System.currentTimeMillis();

            Iterator it = fileItemsList.iterator();
            while (it.hasNext()) {
                FileItem fileItemTemp = (FileItem) it.next();
                if (fileItemTemp.isFormField()) {
                    if (fileItemTemp.getFieldName().equals("panumberimg")) {
                        panfileimg = fileItemTemp.getString();
                       
                    }
                    
                    if (fileItemTemp.getFieldName().equals("aadharfimg")) {
                        aharfilefrntimg = fileItemTemp.getString();
                       
                    }
                    
                    if (fileItemTemp.getFieldName().equals("aadharbimg")) {
                        aharfilebackimg = fileItemTemp.getString();
                       
                    }
                    
                    if (fileItemTemp.getFieldName().equals("records")) {
                        bankimg = fileItemTemp.getString();
                       
                    }

                  
                } else {
                    fileItem = fileItemTemp;
                }
            }

           
            long size_long = fileItem.getSize();
            if (fileItem != null && size_long > 0) {
                
                filesize = size_long / 1024;
                filesize = filesize / 1000;

                if (filesize > 60.0) {

                } else {
                    _fileName = fileItem.getName();
                    if (fileItem.getSize() > 0) {

                        if (optionalFileName.trim().equals("")) {
                            _fileName = FilenameUtils.getName(_fileName);
                        } else {
                            _fileName = panfileimg;
                        }  
                        _fileLink = "//pan//" + _fileName;
                        try {
                            out.println("fnz:" + fileItem.getName() + filesize);

//                            String relativePath = getServletContext().getRealPath("");
//                            System.out.println("relativePath = " + relativePath);
//                            relativePath = relativePath.replace("build", "");
//                            String panpath = relativePath.trim() + "\\pan\\";
//                             String atharpath = relativePath.trim() + "\\adhar\\";
//                              String bankpath = relativePath.trim() + "\\Bank\\";
//                            //  String aadharnum=DOA_Services.getAadhaarNum();
//                            File file = new File(panpath + fileItem.getName());
//                            fileItem.write(file);
//              
                        } catch (Exception e) {
                            e.printStackTrace();
                        }

                    }
                }
            }

            // String referer = request.getHeader("Referer");
            // response.sendRedirect(referer);
        }

        try {
            /* TODO output your page here
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet upload</title>");
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet upload at " + request.getContextPath () + "</h1>");
             out.println("</body>");
             out.println("</html>");
             */
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
