
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Random;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Win7
 */
public class DOA_Services {

    public static Connection con;
    public static Statement stmt;
    public static ResultSet rs;

    public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost:3306/tecklearning";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "");
        return con;
    }

//      public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
//        String url = "jdbc:mysql://localhost:3306/dizinely_tecklearn";
//        Class.forName("com.mysql.jdbc.Driver");
//        con = DriverManager.getConnection(url, "dizinely_tecklearn", "dP$XCuWRyrSd");
//        return con;
//    }
    public static ArrayList<ArrayList> getOnlineTestResults() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `student_onlinetest_res` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static String getStaffidbyMobno(String mobno) {
        String staffid = "0";

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT `staffid` FROM `staffs_profile` where phone='" + mobno + "'";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);

            while (rs.next()) {

                staffid = rs.getString(1);

            }
        } catch (Exception ex) {
        }
        return staffid;
    }

    public static String getStaffidbyEmail(String mobno) {
        String staffid = "0";

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT `email` FROM `staffs_profile` where phone='" + mobno + "'";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);

            while (rs.next()) {

                staffid = rs.getString(1);

            }
        } catch (Exception ex) {
        }
        return staffid;
    }
    
    
    
       public static String getStudentbyName(String mobno) {
        String staffid = "0";

        try {
            Connection con1 = getDBConnection();
        Statement    stmt1 = con1.createStatement();
            String sql = "SELECT `stud_name` FROM `student` WHERE `stud_mobno`='" + mobno + "'";
            System.out.println(sql);
           ResultSet rs1 = stmt1.executeQuery(sql);

            while (rs1.next()) {

                staffid = rs1.getString(1);

            }
        } catch (Exception ex) {
        }
        return staffid;
    }

    public static String getOTP() {
        String r = "";
        Random rv = new Random();
        r = "" + rv.nextInt(10) + rv.nextInt(10) + rv.nextInt(10) + rv.nextInt(10);
        return r;
    }

    public static ArrayList<ArrayList> getStaffAttendance() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `staff_attendance`  ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getStudentAttendance() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `student_attendance`  ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getStudentDetails() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `student` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getMappingVideoDetails() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `videoclassmapping` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));

                }
                System.out.println(data.toString());
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getMappingVideoDetailsById(String sid) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `videoclassmapping` where mapid='" + sid + "'";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));

                }
                System.out.println(data.toString());
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    // website become a Teacher
    public static ArrayList<ArrayList> getBecomeATeacher() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `web_tech_staffs` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    // 
    public static ArrayList<ArrayList> getStaffList() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `staffs_profile` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getBookedTutorList() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `findtutor`";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static int bookStudent(String studname, String mno, String srtme, String endtme, String subject, String studyarea) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `findtutor` ( `studentname`, `mno`, `frmtme`, `totme`, `sub`, `staffid`)"
                    + " VALUES ( '" + studname + "', '" + mno + "', '" + srtme + "', '" + endtme + "', '" + subject + "','" + studyarea + "');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return res;
    }

    public static ArrayList<ArrayList> getBookedTutorListById(String fid) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `findtutor` where fid='" + fid + "'";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList getStaffListbyID(String staffid) {
        ArrayList dptdata = new ArrayList();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `staffs_profile` where staffid='" + staffid + "' ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {

                for (int i = 1; i <= noCol; i++) {
                    dptdata.add(rs.getString(i));
                }

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static int getTotalStaffs() {
        int c = 0;

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT count(`staffid`) FROM `staffs_profile`";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {

                c = rs.getInt(1);

            }
        } catch (Exception ex) {
        }
        return c;
    }

    public static int getTotalStudents() {
        int c = 0;

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT COUNT(`stud_id`) FROM `student` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {

                c = rs.getInt(1);

            }
        } catch (Exception ex) {
        }
        return c;
    }

    public static int getTotalCrashCourse() {
        int c = 0;

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT COUNT(`tuttype`) FROM `findtutor` where tuttype='3' ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);

            while (rs.next()) {

                c = rs.getInt(1);

            }
        } catch (Exception ex) {
        }
        return c;
    }

    public static int getTotalLanguageLearning() {
        int c = 0;

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT COUNT(`tuttype`) FROM `findtutor` where tuttype='2' ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);

            while (rs.next()) {

                c = rs.getInt(1);

            }
        } catch (Exception ex) {
        }
        return c;
    }

    public static int getTotalTution() {
        int c = 0;

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT COUNT(`tuttype`) FROM `findtutor` where tuttype='1' ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);

            while (rs.next()) {

                c = rs.getInt(1);

            }
        } catch (Exception ex) {
        }
        return c;
    }

    public static ArrayList<ArrayList> getStaffschool(String staffid) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `staffs_school` where staffid='" + staffid + "' ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getStaffEducational(String staffid) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `staffs_educational` where staffid='" + staffid + "' ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getStaffTution(String staffid) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `staffs_tution` where staffid='" + staffid + "' ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    //admin_sendstaff_links
    public static ArrayList<ArrayList> getAllStaffSendLinks() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM admin_sendstaff_links ORDER BY asid DESC ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getWebCounselling() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `counselling` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
               // for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(1));
                     data.add(rs.getString(2));

                //}

                String mno = rs.getString(2);
               //  data.add(mno);

                ArrayList clr = getWebCounsellingByid(mno);
                int sz = clr.size();
              //  System.out.println(""+sz);
                if (sz > 0) {
                    data.add(clr.get(0));
                    data.add(clr.get(1));
                    data.add(clr.get(2));
                } else {
                    data.add("-");
                    data.add("-");
                    data.add("-");
//
                }

                dptdata.add(data);
//      clr.clear();
            }
        } catch (Exception ex) {
           ex.printStackTrace();
            System.out.println("" + ex.getMessage());
        }
        return dptdata;
    }

    
    
     public static ArrayList<ArrayList> getEnrollTuition() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `enrolltuition` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
               // for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(1));
                     data.add(rs.getString("uname"));
                     data.add(rs.getString("email"));
    data.add(rs.getString("mobile"));
      data.add(rs.getString("standard"));
       data.add(rs.getString("board"));
        data.add(rs.getString("subjects"));
         data.add(rs.getString("payment"));
         

                //}

                String mno = rs.getString("mobile");
               //  data.add(mno);

                ArrayList clr = getEnrollTuitionByid(mno);
                int sz = clr.size();
              //  System.out.println(""+sz);
                if (sz > 0) {
                    data.add(clr.get(0));
                    data.add(clr.get(1));
                    data.add(clr.get(2));
                } else {
                    data.add("-");
                    data.add("-");
                    data.add("-");
//
                }
  
                dptdata.add(data);
//      clr.clear();
            }
        } catch (Exception ex) {
           ex.printStackTrace();
            System.out.println("" + ex.getMessage());
        }
        return dptdata;
    }
     
     
     
     
       public static ArrayList getEnrollTuitionByid(String mno) {
        ArrayList dptdata = new ArrayList();

        try {
            Connection con1 = getDBConnection();
           Statement stmt1 = con1.createStatement();
            String sql = "SELECT cdate,status,remarks FROM `enrolltuitionreport` where contnum='" + mno + "' ";
            //System.out.println(sql);
           ResultSet rs1 = stmt1.executeQuery(sql);

            while (rs1.next()) {

                dptdata.add(rs1.getString(1));
                dptdata.add(rs1.getString(2));
                dptdata.add(rs1.getString(3));

            }
        } catch (Exception ex) {
            ex.printStackTrace();
            
        }
        return dptdata;
    }
    
    public static ArrayList getWebCounsellingByid(String mno) {
        ArrayList dptdata = new ArrayList();

        try {
            Connection con1 = getDBConnection();
           Statement stmt1 = con1.createStatement();
            String sql = "SELECT cdate,status,remarks FROM `cousellingreport` where contnum='" + mno + "' ";
            //System.out.println(sql);
           ResultSet rs1 = stmt1.executeQuery(sql);

            while (rs1.next()) {

                dptdata.add(rs1.getString(1));
                dptdata.add(rs1.getString(2));
                dptdata.add(rs1.getString(3));

            }
        } catch (Exception ex) {
            ex.printStackTrace();
            
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getWebCarrers() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `careers` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static ArrayList<ArrayList> getWebcontactus() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `contactas` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                }
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    public static void SendSms(String massage, String phno) {
        try {
//String recipient = "+441234567890";
//String message = " Greetings from Mr. Gupta! Have a nice day!";
//String username = "admin";
//String password = "abc123";
//String originator = "+440987654321";

            //https://login.easywaysms.com/app/smsapi/index.php?key=45F1187EF85C82&campaign=0&routeid=7&type=text&contacts=6382556797&senderid=WISHTO&msg=hello
            String msg = URLEncoder.encode(massage, "UTF-8");
            String requestUrl = "https://login.easywaysms.com/app/smsapi/index.php?key=45F1187EF85C82&campaign=0&routeid=7&type=text"
                    + "&contacts=" + phno + ""
                    + "&senderid=WISHTO&msg=" + msg;

//        "http://127.0.0.1:9501/api?action=sendmessage&" +
// "username=" + URLEncoder.encode(username, "UTF-8") +
// "&password=" + URLEncoder.encode(password, "UTF-8") +
// "&recipient=" + URLEncoder.encode(recipient, "UTF-8") +
// "&messagetype=SMS:TEXT" +
// "&messagedata=" + URLEncoder.encode(message, "UTF-8") +
// "&originator=" + URLEncoder.encode(originator, "UTF-8") +
// "&serviceprovider=GSMModem1" +
// "&responseformat=html";
            System.out.println("" + requestUrl);
            URL url = new URL(requestUrl);
            HttpURLConnection uc = (HttpURLConnection) url.openConnection();
            System.out.println(uc.getResponseMessage());
            uc.disconnect();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

    }

    //Add Send Link
    public static int addMappingVideoClass(String staffs, String students, String classfdate, String calssftime, String classtdate, String classttime) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `videoclassmapping` ( `staffid`, `studentid`, `cdate`, `ctime`,`todate`,`totime`, `st`)"
                    + " VALUES ( '" + staffs + "', '" + students + "', '" + classfdate + "', '" + calssftime + "','" + classtdate + "','" + classttime + "', '0');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return res;

    }

    public static int addSendStaffLink(String title, String msg, String email, String mno) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `admin_sendstaff_links` ( `title`, `email`, `message`, `about`, `personal`, `educational`, `bank`)"
                    + " VALUES ( '" + title + "', '" + email + "', '" + msg + "', '" + mno + "', '0', '0', '0');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return res;

    }

    //Delete Send Staff link
    public static int DeletestaffLink(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete from admin_sendstaff_links where asid='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    //Delete  Staff  Profile
    public static int DeletestaffProfile(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `staffs_profile` where staffid='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    public static int DeleteCounselling(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "DELETE FROM `counselling` WHERE `cid`='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    public static int DeleteCounsellingReport(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "DELETE FROM `cousellingreport` WHERE `cid`='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
    
     public static int DeleteEnrollingReport(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "DELETE FROM `enrolltuitionreport` WHERE `cid`='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    //Delete  Staff  Educational
    public static int Deletestaffeducational(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `staffs_educational` where staffid='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    //Delete  Staff  staffs_school
    public static int DeletestaffSchool(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `staffs_school` where staffid='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    //Delete  Staff  staffs_school
    public static int DeletestaffTution(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `staffs_tution` where staffid='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    public static int DeleteStudent(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `student` where stud_id='" + stdid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    public static int DeleteTutor(String tid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `findtutor` where fid='" + tid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    public static int DeleteVideoMap(String tid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `videoclassmapping` where mapid='" + tid + "'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    public static int addcounsellingReport(String entydate, String contnum, String status, String remark) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `cousellingreport` ( `cdate`, `contnum`, `status`, `remarks`) "
                    + "VALUES ( '" + entydate + "', '" + contnum + "', '" + status + "', '" + remark + "');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return res;

    }
    
     public static int addEnrollReport(String entydate, String contnum, String status, String remark) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `enrolltuitionreport` ( `cdate`, `contnum`, `status`, `remarks`) "
                    + "VALUES ( '" + entydate + "', '" + contnum + "', '" + status + "', '" + remark + "');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return res;

    }

    public static ArrayList<ArrayList> getCounsellingReportDetails() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `cousellingreport` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));

                }
                System.out.println(data.toString());
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }

    
    
      public static ArrayList<ArrayList> getEnrollReportDetails() {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `enrolltuitionreport` ";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));

                }
                System.out.println(data.toString());
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }
    
    public static ArrayList<ArrayList> getCounsellingReportDetailsById(String id) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `cousellingreport` where cid='" + id + "'";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));

                }
                System.out.println(data.toString());
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }
    
    
      public static ArrayList<ArrayList> getEnrollReportDetailsById(String id) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `enrolltuitionreport` where cid='" + id + "'";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));

                }
                System.out.println(data.toString());
                dptdata.add(data);

            }
        } catch (Exception ex) {
        }
        return dptdata;
    }
      
      
          public static ArrayList<ArrayList> getAskdoubts()
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT aid,stadard,subject,mobno,questions,uploadimg,qdate,ans,ansdate,txtcall FROM `web_askdoubts`";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 
                    data.add(rs.getString(1));
                    data.add(rs.getString(2));
                      data.add(rs.getString(3));
                        data.add(rs.getString(4));
                          data.add(rs.getString(5));
                            data.add(rs.getString(6));
                              data.add(rs.getString(7));
                                data.add(rs.getString(8));
                                  data.add(rs.getString(9));
                                   data.add(rs.getString(10));
                    String mobno=rs.getString(4);
                    String name=getStudentbyName(mobno);
                     data.add(name);
                
                  dptdata.add(data);
                    
                 }
                
         }catch(Exception ex){}
          return dptdata;
     }    
         

           public static int UpdateAnswer(String qid, String ans, String ansfile) {
        int res = 0;
        try {
            SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

             Timestamp timestamp = new Timestamp(System.currentTimeMillis());
       // System.out.println(timestamp);   
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "UPDATE `web_askdoubts` SET `ans` = '"+ans+"', `ansfile` = '"+ansfile+"',ansdate='"+timestamp+"' WHERE `web_askdoubts`.`aid` ='"+qid+"';";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return res;
    }
}

// website become a Teacher

