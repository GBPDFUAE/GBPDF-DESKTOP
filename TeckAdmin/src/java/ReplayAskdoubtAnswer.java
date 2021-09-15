/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Win7
 */
@WebServlet(urlPatterns = {"/ReplayAskdoubtAnswer"})
public class ReplayAskdoubtAnswer extends HttpServlet {

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
             String fname="";
             String qid="";
             String ques="";
             String ans="";
             boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            if (!isMultipart) {
            } else {
                  FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                try {
                    items = upload.parseRequest(request);
                } catch (FileUploadException e) {
                    e.printStackTrace();
                }
                
                  Iterator itr = items.iterator();
             
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();
                    if (item.isFormField()) {
                    }else
                    {
                       
                         try {
                            long size_long = item.getSize();
                            
                            if (item != null && size_long>0) {
                                // if(item!=null){
                                String itemName = item.getName();
                               
                              
                                String relativePath = getServletContext().getRealPath("");
                                System.out.println("relativePath = " + relativePath);
                                relativePath = relativePath.replace("build", "");
                                String path = relativePath.trim() + "\\ans\\";
                                File savedFile = new File(path+itemName);
                                item.write(savedFile);
                                
                              //  out.println("<b>Your file has been saved at the loaction:</b>"+getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
                            }
                            if (item.isFormField()) {
                        if (item.getFieldName().equals("ansfile")) {
                            fname = item.getString();
                            System.out.println(fname);
                        }
                            
                        
                        
                         
                                         if (item.getFieldName().equals("qid")) {
                        qid = item.getString();
                        System.out.println(qid);
                    }
                                         
                                           if (item.getFieldName().equals("ques")) {
                        ques = item.getString();
                        System.out.println(ques);
                    }
                                             if (item.getFieldName().equals("ans")) {
                        ans = item.getString();
                       System.out.println(ans);
                    }
//                                               if (item.getFieldName().equals("deleteAfter")) {
//                        qid = item.getString();
//                        //System.out.println(usrtyp);
//                    }
                            }
                           
                        }catch(Exception ex){
                            ex.printStackTrace();
                        }
                    }
                     DOA_Services.UpdateAnswer(qid, ans, fname);
                
            }
               
                
            }
                        ArrayList<ArrayList> doubts=DOA_Services.getAskdoubts();
             request.setAttribute("doubts",doubts);
              RequestDispatcher dis = request.getRequestDispatcher("Doubts.jsp");
            dis.forward(request, response);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ReplayAskdoubtAnswer</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ReplayAskdoubtAnswer at " + request.getContextPath() + "</h1>");
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
