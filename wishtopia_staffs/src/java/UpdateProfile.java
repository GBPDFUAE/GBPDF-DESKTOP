/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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

/**
 *
 * @author Win7
 */
@WebServlet(urlPatterns = {"/UpdateProfile"})
public class UpdateProfile extends HttpServlet {

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

        String first_name = "";
        String last_name = "";
        String email = "";
        String phone = "";
        String gender = "";
        String dob = "";
        String subject = "";
        String address = "";
        String fathers_name = "";
        String alternatecon_num = "";
        String pan_num = "";
        String panimg = "";
        String adhar_num = "";
        String adhar_frnt_img = "";
        String adhar_bck_img = "";

        String happies = "";
        String bankname = "";
        String ifsc = "";
        String mirc = "";
        String bnkimg = "";
        String bankaddres = "";
        String std = "";

        String ssid = "";
        List<String> instition = new ArrayList<String>();
        List<String> degree = new ArrayList<String>();

        List<String> schoolname = new ArrayList<String>();
        List<String> wrkexp = new ArrayList<String>();
        List<String> board = new ArrayList<String>();

        List<String> subjectnam = new ArrayList<String>();
        List<String> starttimehrs = new ArrayList<String>();
        List<String> endtimehrs = new ArrayList<String>();

        List<String> sttds = new ArrayList<String>();
        List<String> endtimemins = new ArrayList<String>();

        List fileItemsList = null;

        String relativePath = getServletContext().getRealPath("");

        relativePath = relativePath.replace("build", "");
        if (ServletFileUpload.isMultipartContent(request)) {

            System.out.println("=======================================================");
            ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());

            try {
                fileItemsList = servletFileUpload.parseRequest(request);
            } catch (FileUploadException ex) {
                Logger.getLogger(CompleteProfile.class.getName()).log(Level.SEVERE, null, ex);
            }

            // System.out.println("===>"+fileItemsList.size());
            Iterator it = fileItemsList.iterator();
            while (it.hasNext()) {
                FileItem fileItemTemp = (FileItem) it.next();
                if (fileItemTemp.isFormField()) {

                    if (fileItemTemp.getFieldName().equals("firstname")) {
                        first_name = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("lastname")) {
                        last_name = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("email")) {
                        email = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("phone")) {
                        phone = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("gender")) {
                        gender = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("dob")) {
                        dob = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("subjects")) {
                        subject = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("address")) {
                        address = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("fathername")) {
                        fathers_name = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("alternatecon_num")) {
                        alternatecon_num = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("panumber")) {
                        pan_num = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("aadhar")) {
                        adhar_num = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("hobbies")) {
                        happies = fileItemTemp.getString();

                    }
                    if (fileItemTemp.getFieldName().equals("bankname")) {
                        bankname = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("ifsc")) {

                        ifsc = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("micr")) {
                        mirc = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("bank_address")) {
                        bankaddres = fileItemTemp.getString();

                    }

                    if (fileItemTemp.getFieldName().equals("instution")) {
                        instition.add(fileItemTemp.getString());

                    }
                    if (fileItemTemp.getFieldName().equals("degree")) {
                        degree.add(fileItemTemp.getString());

                    }

                     //Experiencr
                    if (fileItemTemp.getFieldName().equals("wrkschool")) {
                        schoolname.add(fileItemTemp.getString());

                    }

                    if (fileItemTemp.getFieldName().equals("wrkexp")) {
                        wrkexp.add(fileItemTemp.getString());

                    }

                    if (fileItemTemp.getFieldName().equals("brd")) {
                        board.add(fileItemTemp.getString());

                    }

                    //subject
                    if (fileItemTemp.getFieldName().equals("subject")) {
                        subjectnam.add(fileItemTemp.getString());

                    }

                    if (fileItemTemp.getFieldName().equals("sttme")) {
                        starttimehrs.add(fileItemTemp.getString());

                    }

                    if (fileItemTemp.getFieldName().equals("endtime")) {
                        endtimehrs.add(fileItemTemp.getString());

                    }

                    if (fileItemTemp.getFieldName().equals("std")) {
                        sttds.add(fileItemTemp.getString());

                    }
                    
                     if (fileItemTemp.getFieldName().equals("ssid")) {
                        ssid=fileItemTemp.getString();

                    }

//                          if (fileItemTemp.getFieldName().equals("endmins")) {
//                        endtimemins.add(fileItemTemp.getString());
//
//                    }
                                   //  String name = new File(fileItemTemp.getName()).getName();
//                    if (fileItemTemp.getFieldName().equals("panumberimg")) {
//                        String name = new File(fileItemTemp.getName()).getName();
//                        panimg = name;
//                        String path = relativePath.trim() + "\\pan\\";
//                        try {
//                            fileItemTemp.write(new File(path + File.separator + name));
//                        } catch (Exception ex) {
//                            Logger.getLogger(CompleteProfile.class.getName()).log(Level.SEVERE, null, ex);
//                        }
//
//                    }
//
//                    if (fileItemTemp.getFieldName().equals("aadharfimg")) {
//                        String name = new File(fileItemTemp.getName()).getName();
//                        adhar_frnt_img = name;
//                        String path = relativePath.trim() + "\\adhar\\";
//                        try {
//                            fileItemTemp.write(new File(path + File.separator + name));
//                        } catch (Exception ex) {
//                            Logger.getLogger(CompleteProfile.class.getName()).log(Level.SEVERE, null, ex);
//                        }
//
//                    }
//
//                    if (fileItemTemp.getFieldName().equals("aadharbimg")) {
//                        String name = new File(fileItemTemp.getName()).getName();
//                        adhar_bck_img = name;
//                        String path = relativePath.trim() + "\\adhar\\";
//                        try {
//                            fileItemTemp.write(new File(path + File.separator + name));
//                        } catch (Exception ex) {
//                            Logger.getLogger(CompleteProfile.class.getName()).log(Level.SEVERE, null, ex);
//                        }
//
//                    }
//
//                    if (fileItemTemp.getFieldName().equals("records")) {
//                        String name = new File(fileItemTemp.getName()).getName();
//                        bnkimg = name;
//                        String path = relativePath.trim() + "\\bank\\";
//                        try {
//                            fileItemTemp.write(new File(path + File.separator + name));
//                        } catch (Exception ex) {
//                            Logger.getLogger(CompleteProfile.class.getName()).log(Level.SEVERE, null, ex);
//                        }
//
//                    }
                }

            }
            try {
//
                int i = 0;
                List< FileItem> multiparts = fileItemsList;
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String name = new File(item.getName()).getName();
                        System.out.println("" + name);
                        if (i == 0) {
                            panimg = name;
                            String path = relativePath.trim() + "\\pan\\";
                            item.write(new File(path + File.separator + name));
                        }
                        if (i == 1) {
                            adhar_frnt_img = name;
                            String path = relativePath.trim() + "\\adhar\\";
                            item.write(new File(path + File.separator + name));
                        }

                        if (i == 2) {
                            adhar_bck_img = name;
                            String path = relativePath.trim() + "\\adhar\\";
                            item.write(new File(path + File.separator + name));
                        }

                        if (i == 3) {
                            bnkimg = name;
                            String path = relativePath.trim() + "\\bank\\";
                            item.write(new File(path + File.separator + name));
                        }
                        i++;

                    }
                }

                DOA_Services.DeletestaffProfile(ssid);
                DOA_Services.DeletestaffSchool(ssid);
                DOA_Services.DeletestaffTution(ssid);
                DOA_Services.Deletestaffeducational(ssid);
                DOA_Services.addStaffProfile(first_name, last_name, email, phone, gender, dob, subject, address, fathers_name, alternatecon_num, pan_num, panimg, adhar_num, adhar_frnt_img, adhar_bck_img, happies, bankname, ifsc, mirc, bnkimg, bankaddres,"","","");

                String staffid = DOA_Services.getLastStaffid();
                for (int j = 0; j < instition.size(); j++) {
                    String ins = instition.get(j).toString();
                    String deg = degree.get(j).toString();
                    DOA_Services.addstaffs_educational(staffid, ins, deg);
                }

                for (int j = 0; j < schoolname.size(); j++) {
                    String school = schoolname.get(j).toString();
                    String wrk = wrkexp.get(j).toString();
                    String brd = board.get(j).toString();
                    DOA_Services.addstaffs_school_exp(staffid, school, wrk, brd);
                }

                System.out.println(subjectnam.size() + "szzz:" + sttds.size());
                for (int x = 0; x < starttimehrs.size(); x++) {
                    String sub = subjectnam.get(x);
                    //   System.out.println("j="+sub);
                    String start = starttimehrs.get(x);
                    // System.out.println("j="+start);
                    String end = endtimehrs.get(x);
                    //   System.out.println(end+"-"+start);
                    for (String sttd : sttds) {
                        DOA_Services.addstaffs_tution(staffid, sub, start, end, sttd);
                    }
                    System.out.println("j=" + x);
                }

                request.setAttribute("success", "Thank You, Records Added Succesfully");

                out.println("<script>alert('Thank You, Records Added Succesfully')</script>");

                out.println("<script>window.location.href = 'https://admin.wishtopia.in/StaffList';</script>");
                //response.sendRedirect("http://www.dizinely.com/");
                //request.setAttribute("stafflst",students);
                //RequestDispatcher dis = request.getRequestDispatcher("http://www.dizinely.com/");
            } catch (Exception ex) {
                System.out.println("===>" + ex.getMessage());
                request.setAttribute("message", "File upload failed due to : " + ex);
            }
        } else {
            request.setAttribute("message", "Sorry this servlet only handles file upload request.");
        }
        //request.getRequestDispatcher("/result.jsp").forward(request, response);
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
