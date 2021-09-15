/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author cloudsim
 */
@WebServlet(urlPatterns = {"/SubmitCareers"})
public class SubmitCareers extends HttpServlet {

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
                Logger.getLogger(UploadTakcyTale.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("" + ex.getMessage());
                //Change above line replace FileUploadExample with your file name
            }

            String optionalFileName = "";
            String fname = "";
            String frstname = "";
            String lanme = "";
            String email = "";
            String mno = "";
           
           
            FileItem fileItem = null;

            long srt = System.currentTimeMillis();

            Iterator it = fileItemsList.iterator();
            while (it.hasNext()) {
                FileItem fileItemTemp = (FileItem) it.next();
                if (fileItemTemp.isFormField()) {
                    if (fileItemTemp.getFieldName().equals("myfile")) {
                        fname = fileItemTemp.getString();
                        System.out.println(optionalFileName);
                    }

                    if (fileItemTemp.getFieldName().equals("lanme")) {
                        lanme = fileItemTemp.getString();
                        System.out.println(optionalFileName);
                    }

                    if (fileItemTemp.getFieldName().equals("email")) {
                        email = fileItemTemp.getString();
                        System.out.println(optionalFileName);
                    }

                    if (fileItemTemp.getFieldName().equals("mno")) {
                        mno = fileItemTemp.getString();
                        System.out.println(optionalFileName);
                    }

                    if (fileItemTemp.getFieldName().equals("fname")) {
                        frstname = fileItemTemp.getString();
                        //System.out.println(usrtyp);
                    }

                 

                } else {
                    fileItem = fileItemTemp;
                }
            }

            System.out.println("====>"+fname);
            long size_long = fileItem.getSize();
            if (fileItem != null && size_long > 0) {
                //long size_long = fileItem.getSize();
                filesize = size_long / 1024;
                filesize = filesize / 1000;

                if (filesize > 60.0) {

                } else {
                    _fileName = fileItem.getName();
                    if (fileItem.getSize() > 0) {

                        if (optionalFileName.trim().equals("")) {
                            _fileName = FilenameUtils.getName(_fileName);
                        } else {
                            _fileName = fname;
                        }
                        _fileLink = "//careers//" + _fileName;
                        try {
                            out.println("fnz:" + fileItem.getName() + filesize);

                            String relativePath = getServletContext().getRealPath("");
                            System.out.println("relativePath = " + relativePath);
                            relativePath = relativePath.replace("build", "");
                            String path = relativePath.trim() + "\\careers\\";
                            //  String aadharnum=DOA_Services.getAadhaarNum();
                            File file = new File(path + fileItem.getName());
                            fileItem.write(file);
                       //  String currendate="2019-05-23";

           // addUserComplaints(String uid,String csno,String ntype,String ndate,String section,String compdesc,String rprtby,String status,String compltme,String compdate,String fname)                
                           
                            DB_SERVICE.DOA_Service.addCareers(frstname, lanme, email, mno, fileItem.getName());
                            
                   request.setAttribute("msg","Career Submited Successfully");
                 RequestDispatcher dis = request.getRequestDispatcher("career.jsp");
 dis.forward(request, response);

//                            request.setAttribute("fn", file.getName());
//                            request.setAttribute("fz", filz);
//                            request.setAttribute("SHA", sh + " bytes");
//                            request.setAttribute("fmac", mac);
//                            request.setAttribute("umac", umac);
//                            RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp?email=" + email+"&type="+usrtyp);
//                            dispatcher.forward(request, response);
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
