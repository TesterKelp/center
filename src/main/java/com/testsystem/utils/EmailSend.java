package com.testsystem.utils;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.testsystem.admin.vo.Email;

public class EmailSend {

	
	/**
	 * @param to
	 * @param subject
	 * @param content
	 * @throws IOException
	 * @throws AddressException
	 * @throws MessagingException
	 */
	public static void send_email(String to ,String subject,String content,Email email) throws IOException, AddressException, MessagingException{
//	String to = "49862849@qq.com";
//    String subject = "subject";
//    String content = "content";
		
		System.out.println(email.getSmtpserver()+email.getSmtpport()+email.getFromemail()+email.getSmtpname()+email.getSmtppass());
    Properties properties = new Properties();
    properties.put("mail.smtp.host", email.getSmtpserver());
    properties.put("mail.smtp.port", email.getSmtpport());
    properties.put("mail.smtp.auth", "true");
    Authenticator authenticator = new Email_Authenticator(email.getSmtpname(), email.getSmtppass());
    javax.mail.Session sendMailSession = javax.mail.Session.getDefaultInstance(properties, authenticator);
    MimeMessage mailMessage = new MimeMessage(sendMailSession);
    mailMessage.setFrom(new InternetAddress(email.getSmtpname()));
    // Message.RecipientType.TO���Ա�ʾ�����ߵ�����ΪTO
    mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
    mailMessage.setSubject(subject, "UTF-8");
    mailMessage.setSentDate(new Date());
    // MiniMultipart����һ�������࣬����MimeBodyPart���͵Ķ���
    Multipart mainPart = new MimeMultipart();
    // ����һ������HTML���ݵ�MimeBodyPart
    BodyPart html = new MimeBodyPart();
    html.setContent(content.trim(), "text/html; charset=utf-8");
    mainPart.addBodyPart(html);
    mailMessage.setContent(mainPart);
    Transport.send(mailMessage);
	}
	public static void send_email() throws IOException, AddressException, MessagingException{
	String to = "49862849@qq.com";
    String subject = "subject";
    String content = "content";
    Properties properties = new Properties();
    properties.put("mail.smtp.host", "smtp.163.com");
    properties.put("mail.smtp.port", "25");
    properties.put("mail.smtp.auth", "true");
    Authenticator authenticator = new Email_Authenticator("54mengxiangbin@163.com", "qazxcvbnm");
    javax.mail.Session sendMailSession = javax.mail.Session.getDefaultInstance(properties, authenticator);
    MimeMessage mailMessage = new MimeMessage(sendMailSession);
    mailMessage.setFrom(new InternetAddress("54mengxiangbin@163.com"));
    // Message.RecipientType.TO���Ա�ʾ�����ߵ�����ΪTO
    mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
    mailMessage.setSubject(subject, "UTF-8");
    mailMessage.setSentDate(new Date());
    // MiniMultipart����һ�������࣬����MimeBodyPart���͵Ķ���
    Multipart mainPart = new MimeMultipart();
    // ����һ������HTML���ݵ�MimeBodyPart
    BodyPart html = new MimeBodyPart();
    html.setContent(content.trim(), "text/html; charset=utf-8");
    mainPart.addBodyPart(html);
    mailMessage.setContent(mainPart);
    Transport.send(mailMessage);
	}
	
	
	
	
}
