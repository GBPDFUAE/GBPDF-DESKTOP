/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MailServices;

/**
 *
 * @author Win7
 */
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendAttachmentInEmail {
   public static void main(String[] args) {
      // Recipient's email ID needs to be mentioned.
      String email = "hlrinfotech@gmail.com";

      String[] to = {email,"buju1986@yahoo.com","jammyjai2012@icloud.com"};
      // Sender's email ID needs to be mentioned
      String from = "wishtopia.in@gmail.com";

      final String username = "Wish topia";//change accordingly
      final String pass = "Elogin10";//change accordingly

      // Assuming you are sending email through relay.jangosmtp.net
      String host = "smtp.gmail.com";

      Properties props = new Properties();
//      props.put("mail.smtp.auth", "true");
//      props.put("mail.smtp.starttls.enable", "true");
//      props.put("mail.smtp.host", host);
//      props.put("mail.smtp.port", "587");
//      
       // Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // added this line
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");

      // Get the Session object.
//      Session session = Session.getInstance(props,
//         new javax.mail.Authenticator() {
//            protected PasswordAuthentication getPasswordAuthentication() {
//               return new PasswordAuthentication(username, pass);
//            }
//         });

      try {
            Session session = Session.getDefaultInstance(props, null);
         // Create a default MimeMessage object.
         Message message = new MimeMessage(session);

//           Session session = Session.getDefaultInstance(props, null);
//    MimeMessage message = new MimeMessage(session);
//    message.setFrom(new InternetAddress(from));
         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

          InternetAddress[] toAddress = new InternetAddress[to.length];
         // Set To: header field of the header.
//         message.setRecipients(Message.RecipientType.TO,
//            InternetAddress.parse(to));

         // Set Subject: header field
         message.setSubject("Wishtopia-Ask Doubt");

         // Create the message part
         BodyPart messageBodyPart = new MimeBodyPart();

         // Now set the actual message
         messageBodyPart.setText("Test Qustion 1?");

         // Create a multipar message
         Multipart multipart = new MimeMultipart();

         // Set text message part
         multipart.addBodyPart(messageBodyPart);

         // Part two is attachment
         messageBodyPart = new MimeBodyPart();
         String filename = "D:\\ERP\\c111230-36-638.jpg";
         DataSource source = new FileDataSource(filename);
         messageBodyPart.setDataHandler(new DataHandler(source));
         messageBodyPart.setFileName(filename);
         multipart.addBodyPart(messageBodyPart);

         // Send the complete message parts
         message.setContent(multipart);

         // Send message
       //  Transport.send(message);
         
           for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
         
         Transport transport = session.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();

         System.out.println("Sent message successfully....");
  
      } catch (MessagingException e) {
         throw new RuntimeException(e);
      }
   }
   
   
     public static void sendAttachment(String subject,String msg,String attachment) {
      // Recipient's email ID needs to be mentioned.
      String email = "hlrinfotech@gmail.com";

      String[] to = {email,"buju1986@yahoo.com","jammyjai2012@icloud.com"};
      // Sender's email ID needs to be mentioned
      String from = "wishtopia.in@gmail.com";

    //  final String username = "Wish topia";//change accordingly
      final String pass = "Elogin10";//change accordingly

      // Assuming you are sending email through relay.jangosmtp.net
      String host = "smtp.gmail.com";

      Properties props = new Properties();
//      props.put("mail.smtp.auth", "true");
//      props.put("mail.smtp.starttls.enable", "true");
//      props.put("mail.smtp.host", host);
//      props.put("mail.smtp.port", "587");
//      
       // Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // added this line
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");

      // Get the Session object.
//      Session session = Session.getInstance(props,
//         new javax.mail.Authenticator() {
//            protected PasswordAuthentication getPasswordAuthentication() {
//               return new PasswordAuthentication(username, pass);
//            }
//         });

      try {
            Session session = Session.getDefaultInstance(props, null);
         // Create a default MimeMessage object.
         Message message = new MimeMessage(session);

//           Session session = Session.getDefaultInstance(props, null);
//    MimeMessage message = new MimeMessage(session);
//    message.setFrom(new InternetAddress(from));
         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

          InternetAddress[] toAddress = new InternetAddress[to.length];
         // Set To: header field of the header.
//         message.setRecipients(Message.RecipientType.TO,
//            InternetAddress.parse(to));

         // Set Subject: header field
         message.setSubject(subject);

         // Create the message part
         BodyPart messageBodyPart = new MimeBodyPart();

         // Now set the actual message
         messageBodyPart.setText(msg);

         // Create a multipar message
         Multipart multipart = new MimeMultipart();

         // Set text message part
         multipart.addBodyPart(messageBodyPart);

         // Part two is attachment
         messageBodyPart = new MimeBodyPart();
         String filename = attachment;
         DataSource source = new FileDataSource(filename);
         messageBodyPart.setDataHandler(new DataHandler(source));
         messageBodyPart.setFileName(filename);
         multipart.addBodyPart(messageBodyPart);

         // Send the complete message parts
         message.setContent(multipart);

         // Send message
       //  Transport.send(message);
         
           for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
         
         Transport transport = session.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();

         System.out.println("Sent message successfully....");
  
      } catch (MessagingException e) {
         throw new RuntimeException(e);
      }
   }
}