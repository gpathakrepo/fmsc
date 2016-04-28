package edu.model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class EmailUtility {
 public static boolean sendEmail(User user){
	 boolean isMailSend = false;
     String to = user.getEmail();
     String from = "gpathak@ilstu.edu";

     Properties props = System.getProperties();
     props.put("mail.smtp.starttls.enable", "true");
     props.put("mail.smtp.port", "587");
     props.put("mail.smtp.host", "m.outlook.com");
     props.put("mail.smtp.auth", "true");


     Session session = Session.getInstance(props,
     new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
             return new PasswordAuthentication("gpathak@ilstu.edu", "password");
         }
     });

     try {
         // Create a default MimeMessage object.
         MimeMessage message = new MimeMessage(session);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.addRecipient(Message.RecipientType.TO,
                 new InternetAddress(to));

         // Set Subject: header field
         message.setSubject("Welcome "+user.getFirstname());
        
         MimeMultipart content = new MimeMultipart("related");
        
         MimeBodyPart textPart = new MimeBodyPart();
         String txtReceipt = "";
         for (Donation donation : user.getDonations()) {
        	 txtReceipt += "You have made donation with reveal name as: "
        			 +donation.getRevealName()+" and your donation amount is: "+donation.getPerMealPrice() * donation.getNumberOfMeals()+"<br/>";
		}
         
         textPart.setText("<html><head>"

            + "</head>"

            + "<body><div><strong>Hi "+user.getFirstname()+" "+user.getLastname()+"!</strong></div>"

            + "<div>Thank you for donating!! Below is your donation receipt: <br/> </div>"
            + "First Name: "+user.getFirstname()+"<br/>"
            + "Last Name: "    + user.getLastname()+"<br/>"
            + "User Id: "     + user.getUserId()+"<br/>"
            + txtReceipt
            + " <br/>Thanks,<br/> FMSC Family<br/></body></html>",

            "US-ASCII", "html");

         content.addBodyPart(textPart);
         // Send the actual HTML message, as big as you like
         message.setContent(content);

         // Send message
         Transport.send(message);
     } catch (MessagingException mex) {
         mex.printStackTrace();
         isMailSend = false;
     } 
	 return isMailSend;
 }
}
