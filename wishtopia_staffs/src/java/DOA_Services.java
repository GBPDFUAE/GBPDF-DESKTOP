


import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
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
  public static String staffid="",Staffname="";

    public static String getStaffid() {
        return staffid;
    }

    public static void setStaffid(String staffid) {
        DOA_Services.staffid = staffid;
    }

    public static String getStaffname() {
        return Staffname;
    }

    public static void setStaffname(String Staffname) {
        DOA_Services.Staffname = Staffname;
    }
    public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost:3306/tecklearning";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "");
        return con;
    }
    
    
        public static ArrayList<ArrayList> getStudentDetails()
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `student` ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }
        
        
        
        
        
        // website become a Teacher
        
        
        
 public static ArrayList<ArrayList> getBecomeATeacher()
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `web_tech_staffs` ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }       
        
        
  public static  String getOTP()
  {
      String r="";
      Random rv=new Random();
      r=""+rv.nextInt(10)+rv.nextInt(10)+rv.nextInt(10)+rv.nextInt(10);
      return r; 
  }
 
 
      
    
    
     public static void SendSms(String massage ,String phno)
    {
        try {

            //https://login.easywaysms.com/app/smsapi/index.php?key=45F1187EF85C82&campaign=0&routeid=7&type=text&contacts=6382556797&&senrid=WISHTO&msg=HIIIde
String msg=URLEncoder.encode(massage, "UTF-8");
String requestUrl  = "https://login.easywaysms.com/app/smsapi/index.php?key=45F1187EF85C82&campaign=0&routeid=7&type=text"+
        "&contacts="+phno+""+
        "&senderid=WISHTO&msg="+msg;
        
//        "http://127.0.0.1:9501/api?action=sendmessage&" +
// "username=" + URLEncoder.encode(username, "UTF-8") +
// "&password=" + URLEncoder.encode(password, "UTF-8") +
// "&recipient=" + URLEncoder.encode(recipient, "UTF-8") +
// "&messagetype=SMS:TEXT" +
// "&messagedata=" + URLEncoder.encode(message, "UTF-8") +
// "&originator=" + URLEncoder.encode(originator, "UTF-8") +
// "&serviceprovider=GSMModem1" +
// "&responseformat=html";
URL url = new URL(requestUrl);
HttpURLConnection uc = (HttpURLConnection)url.openConnection();
System.out.println(uc.getResponseMessage());
uc.disconnect();
} catch(Exception ex) {
System.out.println(ex.getMessage());
}

    }
     
 //admin_sendstaff_links
  public static ArrayList<ArrayList> getAllStaffSendLinks()
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `admin_sendstaff_links` ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     } 
  
  
  
    public static ArrayList<ArrayList> getAllquesbyStaff(String staffid)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staff_question` where staffid='"+staffid+"' ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }




 public static ArrayList<ArrayList> getWebcontactus()
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `contactas` ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }   
 
 
 
 
 
 
 
 
 
  public static ArrayList<ArrayList> getOnlineTestResults(String Staffid)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `student_onlinetest_res` WHERE `staffid`='"+Staffid+"' ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
  public static ArrayList getStaffListbyID(String staffid)
     {
         ArrayList dptdata=new ArrayList();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staffs_profile` where staffid='"+staffid+"' ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                   
                 for(int i=1;i<=noCol;i++)
                 {
                    dptdata.add(rs.getString(i));
                 }
                  
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }     
 
 
 
 
 
 public static ArrayList<ArrayList> getStaffschool(String staffid)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staffs_school` where staffid='"+staffid+"' ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }     
 
 
 public static ArrayList<ArrayList> getStaffEducational(String staffid)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staffs_educational` where staffid='"+staffid+"' ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }     
 
 
 
 
 
 
 
  public static ArrayList<ArrayList> getStaffTution(String staffid)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staffs_tution` where staffid='"+staffid+"' ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }
  
   public static ArrayList<ArrayList> getStaffAttendance(String staffid)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staff_attendance` WHERE `staffid`='"+staffid+"' ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                    ArrayList data=new ArrayList();
                 for(int i=1;i<=noCol;i++)
                 {
                    data.add(rs.getString(i));
                 }
                  dptdata.add(data);
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }
 
 
 
 
 //INSERT INTO `filesharing` (`fid`, `filename`, `stud`, `created_at`) VALUES ('1', 'kola.jpg', 'all', CURRENT_TIMESTAMP);
 
  
   public static int addFtp(String fname, String stud) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `filesharing` (`filename`, `stud`, `created_at`) VALUES ( '"+fname+"', '"+stud+"', CURRENT_TIMESTAMP);";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
   
   
   
   
     public static int updatePwd(String staffid, String pwd) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "UPDATE `staffs_profile` SET `pwd` = '"+pwd+"' WHERE `staffs_profile`.`staffid` = '"+staffid+"'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
   
     
     public static int updatePwdByMno(String mno, String pwd) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "UPDATE `staffs_profile` SET `pwd` = '"+pwd+"' WHERE `staffs_profile`.`phone` = '"+mno+"'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
   
   //INSERT INTO `staff_question` (`qid`, `staffid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `st`) VALUES ('1', '31', 'who is father of computer', 'bill gates', 'lorry page', 'charless babbage', 'tin cook', 'option 3', '1');
   
   
   
      public static int addQuestions(String staffid, String question,String opt1,String opt2,String opt3,String opt4,String ans) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `staff_question` ( `staffid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`, `st`) VALUES"
                    + " ( '"+staffid+"', '"+question+"', '"+opt1+"', '"+opt2+"', '"+opt3+"', '"+opt4+"', '"+ans+"', '1');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
      
      
      
      
      public static int Forwardques(String staffid, String ques,String sname,String sub,String startdatetime,String enddatetime) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `fwd_ques` ( `staffid`, `qid`, `sname`, `sub`, `start`, `end`)"
                    + " VALUES ( '"+staffid+"', '"+ques+"', '"+sname+"', '"+sub+"', '"+startdatetime+"', '"+enddatetime+"');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
   
 //Add Send Link
 
     public static int addSendStaffLink(String title, String msg, String email) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `admin_sendstaff_links` ( `title`, `email`, `message`, `about`, `personal`, `educational`, `bank`)"
                    + " VALUES ( '"+title+"', '"+email+"', '"+msg+"', '0', '0', '0', '0');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
     
 /*
     
     
     INSERT INTO `staffs_profile` (`staffid`, `first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `subject`, `address`, `fathers_name`, `mothers_name`, `pan_num`, `pan_img`, `adhar_num`, `adhar_frnt_img`, `adhar_bck_img`, `happies`, `bankname`, `ifsc`, `mirc`, `bnkimg`, `bankaddres`, `st`)
     VALUES ('1', 'Rajesh', 'Kumar', 'tecklearnings@gmail.com', '987543210', 'male', '02-05-1986', 'Englih', 'fldkmfdlfmdlk fdlfkmdlfmd fmldkfmdf', 'Ponnusamy', 'malayarasi', 'B1234aj23', 'ban1.jpg', '7071723933', 'adharfront.jpg', 'adharback.jpg', 'cricket,foodbal', 'Axis', 'A1001C002', '1005434', 'bnk.jpg', 'k k nagar', '0');
     
     `first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `subject`,
     `address`, `fathers_name`, `mothers_name`, `pan_num`, `pan_img`, `adhar_num`, `adhar_frnt_img`, 
     `adhar_bck_img`, `happies`, `bankname`, `ifsc`, `mirc`, `bnkimg`, `bankaddres`
     
     
     Add Profile
     */    
     
    public static int addStaffProfile(String first_name, String last_name, String email,String phone,
            String gender,String dob,String subject,String address,String fathers_name,String alternatecon_num,String pan_num,String panimg,String adhar_num,
   String adhar_frnt_img,String adhar_bck_img,String happies,String bankname,String ifsc,String mirc,String bnkimg,String bankaddres,String abt,String llo,String ll) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `staffs_profile` (`first_name`, `last_name`, `email`, `phone`, `gender`, `dob`, `subject`, `address`, `fathers_name`, `alternatecon_num`, `pan_num`, `pan_img`, `adhar_num`, `adhar_frnt_img`, `adhar_bck_img`, `happies`,`abt`, `bankname`, `ifsc`, `mirc`, `bnkimg`, `bankaddres`,`llo`,`ll`)" +
"VALUES( '"+first_name+"', '"+last_name+"', '"+email+"', '"+phone+"', '"+gender+"', '"+dob+"', '"+subject+"', '"+address+"', '"+fathers_name+"', '"+alternatecon_num+"', '"+pan_num+"', '"+panimg+"', '"+adhar_num+"',"
                    + " '"+adhar_frnt_img+"', '"+adhar_bck_img+"', '"+happies+"','"+abt+"','"+bankname+"','"+ifsc+"','"+mirc+"', '"+bnkimg+"', '"+bankaddres+"','"+llo+"','"+ll+"');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    } 
    
    
    
    /*
    
    SELECT max(`staffid`) FROM `staffs_profile`
    */
    
      public static String getLastStaffid()
     {
        String staffid="0";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT max(`staffid`) FROM `staffs_profile`";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  staffid=rs.getString(1);
                 
                    
                 }
         }catch(Exception ex){}
          return staffid;
     } 
      
      
            public static String getLastStaffidLogin()
     {
        String staffid="0";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT `staffid`  FROM `staff_attendance`  ORDER BY `staff_attendance`.`aid` DESC limit 1";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  staffid=rs.getString(1);
                 
                    
                 }
         }catch(Exception ex){}
          return staffid;
     } 
    
               public static ArrayList<ArrayList> getMappingVideoDetails(String sid) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `videoclassmapping` where staffid='"+sid+"' GROUP BY `studentid`";
            System.out.println(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();
            int noCol = rsmd.getColumnCount();
            while (rs.next()) {
                ArrayList data = new ArrayList();
                for (int i = 1; i <= noCol; i++) {
                    data.add(rs.getString(i));
                   
                   // System.out.println(sname);
                    
                   
                }
                 String studid=rs.getString(3);
                    String sname=getStudentNameByvideoid(studid);
                 data.add(sname);
                // System.out.println(data.toString());
                dptdata.add(data);

            }
        } catch (Exception ex) {
            System.out.println(""+ex.getMessage());
        }
        return dptdata;
    }
          public static String getStaffidbyMobno(String mobno)
     {
        String staffid="0";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT `staffid` FROM `staffs_profile` where phone='"+mobno+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  staffid=rs.getString(1);
                 
                    
                 }
         }catch(Exception ex){}
          return staffid;
     } 
          
          
           public static String getStudentNameByvideoid(String sid)
     {
        String staffid="0";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT `stud_name` FROM `student` where stud_id='"+sid+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  staffid=rs.getString(1);
                 
                    
                 }
         }catch(Exception ex){}
          return staffid;
     } 
          
          
          
           public static String getStaffidbyEmail(String mobno)
     {
        String staffid="0";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT `email` FROM `staffs_profile` where phone='"+mobno+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  staffid=rs.getString(1);
                 
                    
                 }
         }catch(Exception ex){}
          return staffid;
     } 
         
          
          
         public static String getStaffnameById(String mobno)
     {
        String Staffname="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT `first_name`,`last_name` FROM `staffs_profile` where phone='"+mobno+"' or staffid='"+mobno+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffname=rs.getString(1)+" "+rs.getString(2);
                 
                    
                 }
         }catch(Exception ex){}
          return Staffname;
     } 
         
         
         
      
      
         
         
         
            public static String getStaffaid(String staffid)
     {
        String Staffmaxaid="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT max(aid) FROM `staff_attendance` WHERE  `staffid`='"+staffid+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffmaxaid=rs.getString(1);                
                    
                 }
         }catch(Exception ex){}
          return Staffmaxaid;
     }   
         
         
         
         
         
         
         
         
         
      /*
      
     INSERT INTO `staffs_educational` (`eid`, `staffid`, `instution_name`, `degree`) VALUES ('1', '1', 'kln', 'be'); 
      */
      
      
    public static int addstaffs_educational(String staffid, String instution_name, String degree) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `staffs_educational` ( `staffid`, `instution_name`, `degree`) VALUES ( '"+staffid+"', '"+instution_name+"', '"+degree+"'); ";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
    
    
    
    public static int staffs_in(String staffid, String logindate, String logintime) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `staff_attendance` ( `staffid`, `attend_date`, `logintime`, `logouttime`)"
                    + " VALUES ('"+staffid+"', '"+logindate+"', '"+logintime+"', '-');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
    
    
     public static int update_staffs_in( String aid, String logoutime) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "UPDATE `staff_attendance` SET `logouttime` = '"+logoutime+"' WHERE `aid` = '"+aid+"'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
    
    
    
    public static int addstaffs_school_exp(String staffid, String schoolname, String wrkexp,String board) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `staffs_school` ( `staffid`, `schoolname`, `wrkexp`,`board`) VALUES ( '"+staffid+"', '"+schoolname+"', '"+wrkexp+"','"+board+"'); ";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
    
    
    
       
    public static int addstaffs_tution(String staffid, String subject_name, String start_time,String endtime,String std) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `staffs_tution` ( `staffid`, `subject_name`, `start_time`,`end_time`,`std`) VALUES ( '"+staffid+"', '"+subject_name+"', '"+start_time+"','"+endtime+"','"+std+"'); ";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
    
    
    
     public static int DeletestaffProfile(String stdid) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "delete  FROM `staffs_profile` where staffid='"+stdid+"'";
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

            String sql = "delete  FROM `staffs_educational` where staffid='"+stdid+"'";
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

            String sql = "delete  FROM `staffs_school` where staffid='"+stdid+"'";
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

            String sql = "delete  FROM `staffs_tution` where staffid='"+stdid+"'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
      
      
            
           
         public static boolean  checkUserLogin(String stud_mobno,String pwd){
          boolean res=false;    
         try {
                
                 Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staffs_profile` WHERE `phone`='"+stud_mobno+"' and `pwd`='"+pwd+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);
                 // System.out.print("===>"+ rs.getFetchSize());
                 
                 
                 while (rs.next()) {
                     
                     
                     res=true;
                 }
                 
                 
                 
                 // con1.close();
               
             } catch (ClassNotFoundException ex) {
                 Logger.getLogger(DOA_Services.class.getName()).log(Level.SEVERE, null, ex);
             } catch (SQLException ex) {
                 Logger.getLogger(DOA_Services.class.getName()).log(Level.SEVERE, null, ex);
             }
               return res;
     }    
           
           
           
               public static boolean  checkStaffMobile(String stud_mobno){
          boolean res=false;    
         try {
                
                 Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `staffs_profile` WHERE `phone`='"+stud_mobno+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);
                 // System.out.print("===>"+ rs.getFetchSize());
                 
                 
                 while (rs.next()) {
                     
                     
                     res=true;
                 }
                 
                 
                 
                 // con1.close();
               
             } catch (ClassNotFoundException ex) {
                 Logger.getLogger(DOA_Services.class.getName()).log(Level.SEVERE, null, ex);
             } catch (SQLException ex) {
                 Logger.getLogger(DOA_Services.class.getName()).log(Level.SEVERE, null, ex);
             }
               return res;
     }    
           
           
         public static ArrayList getStudents()
     {
         ArrayList dptdata=new ArrayList();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT stud_name FROM `student`  ";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                  ResultSetMetaData rsmd=rs.getMetaData();
                 int noCol=rsmd.getColumnCount();
                 while (rs.next()) {
                   
                
                    dptdata.add(rs.getString(1));
                 
                  
                    
                 }
         }catch(Exception ex){}
          return dptdata;
     }      
        
        
        
}









