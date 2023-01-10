package common;

import model.Email;

import java.util.Properties;


import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class EmailUtils {

	public static void send(Email email) {
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true"); // TLS
		
		Session session  = Session.getInstance(prop, new Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication (email.getFrom(), email.getFromPassword());
			}
			});
		

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(email.getFrom()));

			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email.getTo()));
			message.setSubject (email.getSubject());

			message.setText(email.getContent());

			Transport.send(message) ;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}
	public static void main(String[] args) throws Exception {
		
//		Email e = new Email();
//
//		e.setFrom("20130303@st.hcmuaf.edu.vn") ;
//
//		e.setFromPassword("velskbpkvhqryfar");
//		e.setTo("20130303@st.hcmuaf.edu.vn");
//		e.setSubject("Forgot Password Function");
//
//		StringBuilder sb = new StringBuilder();
//
//		sb.append("Chào ").append("Lênh") .append("<br>");
//		sb.append("Bạn đã quên mật khẩu thành công. <br> ");
//		sb.append("Mật khẩu mới của bạn là: ").append("1234").append("</b>");
//		sb. append("Trân trọng!<br>");
//
//		sb.append("Form VnExpress Admin") ;
//
//		e.setContent(sb.toString());
//		send(e);
	}
}
