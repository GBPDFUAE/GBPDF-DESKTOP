/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB_SERVICE;


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

/**
 *
 * @author Win7
 */
public class DOA_Service {

    public static Connection con;
    public static Statement stmt;
    public static ResultSet rs;

  //  Local Database
    public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost:3306/tecklearning";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "");
        return con;
    }

//  public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
//        String url = "jdbc:mysql://localhost:3306/dizinely_tecklearn";
//        Class.forName("com.mysql.jdbc.Driver");
//        con = DriverManager.getConnection(url, "dizinely_tecklearn", "dP$XCuWRyrSd");
//        return con;
//    }
  //Add Teachser
    /*
  
  
     String fullname,String phoneNumber,String gender,String subject_export,String email,String dob,String martial_status,String referal_code,String degree,String pincode
     */
    public static int addWebTeacher(String fullname, String phoneNumber, String gender, String subject_export, String email, String dob, String martial_status, String referal_code, String degree, String pincode) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `web_tech_staffs` (`fullname`, `phoneNumber`, `gender`, `subject_export`, `email`, `dob`, `martial_status`, `referal_code`, `degree`, `pincode`, `st`) "
                    + "VALUES ( '" + fullname + "', '" + phoneNumber + "', '" + gender + "', '" + subject_export + "', '" + email + "', '" + dob + "', '" + martial_status + "', '" + referal_code + "', '" + degree + "', '" + pincode + "', '1');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }

    
      public static int upDatePwd(String studentname, String cpwd) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "UPDATE `student` SET `password`='"+cpwd+"'  WHERE `stud_name`='"+studentname+"'";
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
    
    
    
    
    
    
    
    
   public  static String getAlphaNumericString(int n) 
    { 
  
        // chose a Character random from this String 
        String AlphaNumericString = "ABCDEFGHIJKLMNPQRSTUVWXYZ"
                                    + "123456789"
                                    + "abcdefghijklmnpqrstuvxyz"; 
  
        // create StringBuffer size of AlphaNumericString 
        StringBuilder sb = new StringBuilder(n); 
  
        for (int i = 0; i < n; i++) { 
  
            // generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index 
                = (int)(AlphaNumericString.length() 
                        * Math.random()); 
  
            // add Character one by one in end of sb 
            sb.append(AlphaNumericString 
                          .charAt(index)); 
        } 
  
        return sb.toString(); 
    } 
    
    
    
    
    
    
     public static void SendSms(String massage ,String phno)
    {
        try {
//String recipient = "+441234567890";
//String message = " Greetings from Mr. Gupta! Have a nice day!";
//String username = "admin";
//String password = "abc123";
//String originator = "+440987654321";
            //https://login.easywaysms.com/app/smsapi/index.php?key=45F1187EF85C82&campaign=0&routeid=7&type=text&contacts=6382556797&&senrid=WISHTO&msg=HIIIde
String msg=URLEncoder.encode(massage, "UTF-8");
String requestUrl  = "https://login.easywaysms.com/app/smsapi/index.php?key=45F1187EF85C82&campaign=0&routeid=7&type=text"+
        "&contacts="+phno+""+
        "&senderid=WISHTO&msg="+msg;
      
            System.out.println(""+requestUrl);
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
     
     
   //Add student  
   public static  int addStudent(String stud_name,String stud_mobno,String stud_pincode,String stud_cls,String stud_email,String pwd)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO student ( stud_name, stud_mobno, stud_pincode, stud_cls,stud_email, password)"
              + " VALUES ( '"+stud_name+"', '"+stud_mobno+"', '"+stud_pincode+"', '"+stud_cls+"','"+stud_email+"', '"+pwd+"');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
   
   
   
      public static  int bookStudent(String studname,String mno,String srtme,String endtme,String subject,String studyarea)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `findtutor` ( `studentname`, `mno`, `frmtme`, `totme`, `sub`, `staffid`)"
              + " VALUES ( '"+studname+"', '"+mno+"', '"+srtme+"', '"+endtme+"', '"+subject+"','"+studyarea+"', '1');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
   
   
   
     public static  int updatePassword(String stud_mobno,String pwd)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="UPDATE `student` SET `password` = '"+pwd+"' WHERE `student`.`stud_mobno` = '"+stud_mobno+"'";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
   
   
   
    //Add Tution  
   
   
   /*
   
   Add Tution
   
   */
   public static  int addTution(String studentname,String contnum,String pincode,String email,String nboard,String stime,String endtime,String standard,String subject,String txtsub)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `tution` ( `studentname`, `contnum`, `pincode`, `email`, `board`, `tut_time`,`endtme`, `standard`, `subject`, `txtsub`) "
              + "VALUES ('"+studentname+"', '"+contnum+"', '"+pincode+"', '"+email+"', '"+nboard+"', '"+stime+"','"+endtime+"' ,'"+standard+"', '"+subject+"', '"+txtsub+"');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
   
   
      
   
  
   /*
   
   Add Contact Message
   
   */
   
    public static  int addContactMessage(String studentname,String parentname,String email,String Mobno,String message)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `contactas` ( `stud_name`, `parent_name`, `email`, `mobno`, `message`) VALUES"
              + " ( '"+studentname+"', '"+parentname+"', '"+email+"', '"+Mobno+"', '"+message+"');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
   
   
  public static  String getOTP()
  {
      String r="";
      Random rv=new Random();
      r=""+rv.nextInt(10)+rv.nextInt(10)+rv.nextInt(10)+rv.nextInt(10);
      return r; 
  }
   //View Student Profile   
  
  
  
   public static int student_in(String sid, String logindate, String logintime) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "INSERT INTO `student_attendance` ( `studid`, `attend_date`, `logintime`, `logouttime`)"
                    + " VALUES ('"+sid+"', '"+logindate+"', '"+logintime+"', '-');";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
   
   
    public static ArrayList<ArrayList> getStudentAttendance(String staffid)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `student_attendance` WHERE `studid`='"+staffid+"' ";
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
   
    public static ArrayList getStudentinfo(String mno ) throws SQLException, ClassNotFoundException {
        
      
        ArrayList al=new ArrayList();
        Connection con1 = getDBConnection();
        stmt = con1.createStatement();
        String sql = "SELECT * FROM student where stud_mobno='"+mno+"'";
        System.out.println(sql);
        rs = stmt.executeQuery(sql);
        ResultSetMetaData rm=rs.getMetaData();
        int cl_sz=rm.getColumnCount();
        while (rs.next()) {
           
            for(int i=1;i<cl_sz;i++)
            {
            al.add(rs.getString(i));
 
            }
           }

    
       
        con1.close();
        return al;
    }
    
    
     public static String getStudentEmail(String mno )  {
        
      
     String email="";
     try{
        Connection con1 = getDBConnection();
        stmt = con1.createStatement();
        String sql = "SELECT stud_email FROM student where stud_mobno='"+mno+"'";
        System.out.println(sql);
        rs = stmt.executeQuery(sql);
       
        while (rs.next()) {
           
           
            email=rs.getString(1);
 
           
           }

    
       
        con1.close();
     }catch(Exception ex)
     {
         System.out.println(""+ex.getMessage());
     }
        return email;
    }
     
     
     
     
     
     
     
     
      public static String getStaffidByVideo(String sid )  {
        
      
     String email="no";
     try{
        Connection con1 = getDBConnection();
        stmt = con1.createStatement();
        String sql = "SELECT staffid FROM videoclassmapping where studentid='"+sid+"'";
        System.out.println(sql);
        rs = stmt.executeQuery(sql);
       
        while (rs.next()) {
           
           
            email=rs.getString(1);
 
           
           }

    
       
        con1.close();
     }catch(Exception ex)
     {
         System.out.println(""+ex.getMessage());
     }
        return email;
    }
     
     
     
     
     
     
     
     
          public static String getStudentNameByid(String sid)
     {
        String Staffmaxaid="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT stud_name FROM `student` WHERE  `stud_id`='"+sid+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffmaxaid=rs.getString(1);                
                    
                 }
         }catch(Exception ex){}
          return Staffmaxaid;
     }   
          
          
           public static ArrayList<ArrayList> getMappingVideoDetails(String sid) {
        ArrayList<ArrayList> dptdata = new ArrayList<ArrayList>();

        try {
            Connection con1 = getDBConnection();
            stmt = con1.createStatement();
            String sql = "SELECT * FROM `videoclassmapping` where studentid='"+sid+"'";
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
         
            public static String getStudentMobileByid(String sid)
     {
        String Staffmaxaid="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT stud_id FROM `student` WHERE  `stud_mobno`='"+sid+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffmaxaid=rs.getString(1);                
                    
                 }
         }catch(Exception ex){}
          return Staffmaxaid;
     }   
          
              
          public static String getStaffidbystduid(String sid)
     {
        String Staffmaxaid="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT staffid FROM `videoclassmapping` WHERE  `studentid`='"+sid+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffmaxaid=rs.getString(1);                
                    
                 }
         }catch(Exception ex){}
          return Staffmaxaid;
     }   
         
          
         
     
     
     
     
     
     
     
       
            public static String getStudentAid(String sid)
     {
        String Staffmaxaid="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT max(aid) FROM `student_attendance` WHERE  `studid`='"+sid+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffmaxaid=rs.getString(1);                
                    
                 }
         }catch(Exception ex){}
          return Staffmaxaid;
     }   
         
            
            public static String getStudentName(String mno )  {
        
      
     String email="";
     try{
        Connection con1 = getDBConnection();
        stmt = con1.createStatement();
        String sql = "SELECT stud_name FROM student where stud_mobno='"+mno+"'";
        System.out.println(sql);
        rs = stmt.executeQuery(sql);
       
        while (rs.next()) {
           
           
            email=rs.getString(1);
 
           
           }

    
       
        con1.close();
     }catch(Exception ex)
     {
         System.out.println(""+ex.getMessage());
     }
        return email;
    }
            
            
            
               public static String getStudid2Mobno(String sid )  {
        
      
     String email="";
     try{
        Connection con1 = getDBConnection();
        stmt = con1.createStatement();
        String sql = "SELECT stud_mobno FROM student where stud_id='"+sid+"'";
        System.out.println(sql);
        rs = stmt.executeQuery(sql);
       
        while (rs.next()) {
           
           
            email=rs.getString(1);
 
           
           }

    
       
        con1.close();
     }catch(Exception ex)
     {
         System.out.println(""+ex.getMessage());
     }
        return email;
    }
            
             public static String getStudentLastMobileNumber()
     {
        String Staffmaxaid="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT stud_mobno FROM `student` ORDER BY `student`.`stud_id` DESC " ;
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffmaxaid=rs.getString(1);                
                    
                 }
         }catch(Exception ex){}
          return Staffmaxaid;
     }  
             
             
                   public static String getStudentLastMobileNumberbyid()
     {
        String Staffmaxaid="";
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT studid FROM `student_attendance` ORDER BY `student`.`studid` DESC " ;
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);                
                
                 while (rs.next()) {
                 
                  Staffmaxaid=rs.getString(1);                
                    
                 }
         }catch(Exception ex){}
          return Staffmaxaid;
     }  
         
          public static int update_Student_Out( String aid, String logoutime) {
        int res = 0;
        try {
            Connection con = getDBConnection();
            Statement st = con.createStatement();

            String sql = "UPDATE `student_attendance` SET `logouttime` = '"+logoutime+"' WHERE `aid` = '"+aid+"'";
            System.out.println("" + sql);
            res = st.executeUpdate(sql);
        } catch (Exception ex) {
        }
        return res;

    }
     
     
      public static  int addTekytale(String sid,String stud_name,String schoolname,String stud_class,String stud_pincode,String dob,String title,String ttfile)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO tekytale (sid, stud_name, schoolname, stud_class, dob, pincode, title, ttfile )"
              + " VALUES ('"+sid+"','"+stud_name+"', '"+schoolname+"', '"+stud_class+"', '"+dob+"', '"+stud_pincode+"', '"+title+"', '"+ttfile+"');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
     
      
       public static  int addCareers(String firstname,String lname,String email,String mobno,String resume)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `careers` ( `fname`, `laname`, `email`, `mobno`, `resume`) "
              + "VALUES ( '"+firstname+"', '"+lname+"', '"+email+"', '"+mobno+"', '"+resume+"');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
     
      
        public static  int addAskdoubts(String mobno,String cls,String qa,String sub,String clrdbts,String uploadimg,String txtsub,String txtcall,String ans)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `web_askdoubts` ( `mobno`, `stadard`, `subject`, `questions`, `clrdbts`, `uploadimg`, `uploadattach`, `ans`, `st`, `txtsub`, `txtcall`, `qdate`, `ansdate`)"
              + " VALUES ( '"+mobno+"', '"+cls+"', '"+sub+"', '"+qa+"', '"+clrdbts+"', '"+uploadimg+"', '"+mobno+"', '"+ans+"', '1', '"+txtsub+"', '"+txtcall+"', CURRENT_TIMESTAMP, ' ');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
     
     
     
         public static ArrayList<ArrayList> getAskdoubts(String mobno)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `web_askdoubts`  where mobno='"+mobno+"'";
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
         
         
         
         
         
        public static ArrayList<ArrayList> getAllques(String sname)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT staff_question.question,staff_question.opt1,staff_question.opt2,staff_question.opt3,staff_question.opt4,staff_question.ans FROM staff_question LEFT JOIN fwd_ques ON staff_question.qid = fwd_ques.qid\n" +
"where fwd_ques.sname='"+sname+"' ORDER BY staff_question.qid;";
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
         
         
         
         
           public static ArrayList<ArrayList> getFtps()
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `filesharing` ORDER BY `filesharing`.`created_at` DESC limit 1";
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
        
           
                     public static ArrayList<ArrayList> getTutor( String board, String sub,  String grade)
     {
         ArrayList<ArrayList> dptdata=new ArrayList<ArrayList>();
               
         
          try{
         Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT sp.first_name, sp.last_name,sp.abt FROM staffs_profile sp LEFT JOIN staffs_school ss ON sp.staffid = ss.staffid LEFT JOIN staffs_tution st ON sp.staffid = st.staffid"
                         + " where  sp.subject='"+sub+"' ";
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
        
        
       
    public static ArrayList getTeckyTale(String stid ) throws SQLException, ClassNotFoundException {
        
      
        ArrayList al=new ArrayList();
        Connection con1 = getDBConnection();
        stmt = con1.createStatement();
        String sql = "SELECT * FROM tekytale where sid='"+stid+"' ";
        System.out.println(sql);
        rs = stmt.executeQuery(sql);
        ResultSetMetaData rm=rs.getMetaData();
        int cl_sz=rm.getColumnCount();
        while (rs.next()) {
           
            for(int i=1;i<=cl_sz;i++)
            {
            al.add(rs.getString(i));
 
            }
           }

    
       
        con1.close();
        return al;
    }
     
   //INSERT INTO `tecklearning`.`tekytale` (`sid`, `stud_name`, `schoolname`, `stud_class`, `dob`, `pincode`, `title`, `ttfile`, `ttdate`) VALUES ('1', 'Rajesh', 'de brito hr sec school', 'KG', '2018-05-23', '625001', 'test', 'test.doc', CURRENT_TIMESTAMP);  
     
   
    
    
    
    //Add Counselling
    
       public static  int addConselling(String stud_mobno)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `Counselling` (`mobilenumber`) VALUES ('"+stud_mobno+"');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
       
       
           public static  int addDownloadApp(String stud_mobno)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `downloadapp` (`mobile`) VALUES ('"+stud_mobno+"');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
   
   
           
           
           
           
         public static boolean  checkUserLogin(String stud_mobno,String pwd){
          boolean res=false;    
         try {
                
                 Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `student` WHERE `stud_mobno`='"+stud_mobno+"' and `password`='"+pwd+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);
                 // System.out.print("===>"+ rs.getFetchSize());
                 
                 
                 while (rs.next()) {
                     
                     
                     res=true;
                 }
                 
                 
                 
                 // con1.close();
               
             } catch (ClassNotFoundException ex) {
                 Logger.getLogger(DOA_Service.class.getName()).log(Level.SEVERE, null, ex);
             } catch (SQLException ex) {
                 Logger.getLogger(DOA_Service.class.getName()).log(Level.SEVERE, null, ex);
             }
               return res;
     }    
           
           
           
               public static boolean  checkUserMobile(String stud_mobno){
          boolean res=false;    
         try {
                
                 Connection con1 = getDBConnection();
                 stmt = con1.createStatement();
                 String sql = "SELECT * FROM `student` WHERE `stud_mobno`='"+stud_mobno+"'";
                 System.out.println(sql);
                 rs = stmt.executeQuery(sql);
                 // System.out.print("===>"+ rs.getFetchSize());
                 
                 
                 while (rs.next()) {
                     
                     
                     res=true;
                 }
                 
                 
                 
                 // con1.close();
               
             } catch (ClassNotFoundException ex) {
                 Logger.getLogger(DOA_Service.class.getName()).log(Level.SEVERE, null, ex);
             } catch (SQLException ex) {
                 Logger.getLogger(DOA_Service.class.getName()).log(Level.SEVERE, null, ex);
             }
               return res;
     }    
           
           
         public static  int addEntrollTuition(String stud_uname,String stud_email,String stud_mobno,String standrd,String board,String subjects,String payment)
  {
      int res=0;
      try{
      Connection con=getDBConnection();
      Statement st=con.createStatement();
    
      String sql="INSERT INTO `enrolltuition` ( `uname`, `email`, `mobile`, `standard`, `board`, `subjects`, `payment`, `st`)"
              + " VALUES ('"+stud_uname+"', '"+stud_email+"', '"+stud_mobno+"', '"+standrd+"', '"+board+"', '"+subjects+"', '"+payment+"', '0');";
          System.out.println(""+sql);
      res=st.executeUpdate(sql);
      }catch(Exception ex){
            System.out.println(ex.getMessage());
                  }
      return res;
  }
       
           
           
           
    
    
    public static void main(String a[])
     {
      //  int n = 8; 
  
        // Get and display the alphanumeric string 
       //  SendSms("hiii", "9092776543");
        System.out.println(getAlphaNumericString(6)); 
     }
     
     
     
     
     
     
     


}
