import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class SendMail {
	
	public static void main(String[] args) {
		Properties props = new Properties(); 
		
		props.put("mail.smtp.auth", "true");

		props.put("mail.smtp.starttls.enable", "true");

		props.put("mail.smtp.host", "smtp.gmail.com");

		props.put("mail.smtp.port", "587");

		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("hashemiyashar@gmail.com", "sawthecow12");
				
				
			}
		}; 
		
		Session session = Session.getDefaultInstance(props, auth); 
		
		Message msg = new MimeMessage(session); 
		
		try {
			msg.setSubject("Dearest Ethan");
			msg.setText("u a hoe");
			msg.setFrom(new InternetAddress("hashemiyashar@gmail.com", "xxSWAGLORD420xx"));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress("ei2068@bard.edu"));
			for (int i = 0; i < 30; i++) {
			Transport.send(msg);
			}
		} catch (MessagingException | UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	System.out.println("Finished");
	}
	

}