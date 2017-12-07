package jungle.util;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class GmailMailSender {

	public boolean sendMail(String email, String title, String contents) {
		boolean ret = true;
		
		Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");     // gmail은 무조건 true 고정
        p.put("mail.smtp.host", "mail.jungle.co.kr");      // smtp 서버 주소
        p.put("mail.smtp.auth","true");                 // gmail은 무조건 true 고정
        p.put("mail.smtp.port", "587");                 // gmail 포트
           
        Authenticator auth = new MailAuthentication();
         
        //session 생성 및  MimeMessage생성
        Session session = Session.getInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
         
        try{
            //편지보낸시간
            msg.setSentDate(new Date());
            InternetAddress from = new InternetAddress() ;
            from = new InternetAddress("contest@jungle.co.kr");
            // 이메일 발신자
            msg.setFrom(from);
            // 이메일 수신자
            InternetAddress to = new InternetAddress(email);
            msg.setRecipient(Message.RecipientType.TO, to);
             
            // 이메일 제목
            msg.setSubject(title, "UTF-8");
            // 이메일 내용
            msg.setText(contents, "UTF-8");
            // 이메일 헤더
            msg.setHeader("content-Type", "text/html");
             
            //메일보내기
            javax.mail.Transport.send(msg);
             
        }catch (AddressException addr_e) {
        	//System.out.println(" MailSenderTest AddressException : "+addr_e);
            //addr_e.printStackTrace();
			System.out.println("AddressException 오류 발생");
            ret = false;
        }catch (MessagingException msg_e) {
        	//System.out.println("MailSenderTest MessagingException : "+msg_e);
            //msg_e.printStackTrace();
			System.out.println("AddressException 오류 발생");
            ret = false;
        }
        return ret;

	}

}


