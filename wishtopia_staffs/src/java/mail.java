

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author Administrator
 */

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.swing.JOptionPane;

public class mail {

    
    public static String  getLocalServerIP()
    {  String ipaddr="";
        try {
        ipaddr = InetAddress.getLocalHost().getHostAddress().toString();
        } catch (UnknownHostException ex) {
            Logger.getLogger(mail.class.getName()).log(Level.SEVERE, null, ex);
        }
       return ipaddr;
    }

    public static String getSecurekey()
    {
        String uuid = UUID.randomUUID().toString();
System.out.println("uuid = " + uuid);
        return uuid;

    }





    public  static void mailsendSc(String title,String msg, String email ) throws MessagingException {

       
           
       String host = "smtp.gmail.com";
     String from = "wishtopia.ai@gmail.com";
    String pass = "MohanRaj10@";
    Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // added this line
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");

    String[] to = {email}; // added this line

    Session session = Session.getDefaultInstance(props, null);
    MimeMessage message = new MimeMessage(session);
    message.setFrom(new InternetAddress(from));

    InternetAddress[] toAddress = new InternetAddress[to.length];

    // To get the array of addresses
    for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
    message.setSubject(title);
   
  
    message.setText(msg);
      Transport transport = session.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
   // JOptionPane.showMessageDialog(null,"KEY sucessfully send to mail");



}




    public static void main(String a[])
    {
        try {
            String message ="test mail";
          //  mailsendSc("wishtopia",message, "tecklearnings@gmail.com");
            mailsendSc("wishtopia",message, "iammohanraj.t@gmail.com");
           //tecklearnings@gmail.com,iammohanraj.t@gmail.com 
            
        } catch (MessagingException ex) {
            Logger.getLogger(mail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
