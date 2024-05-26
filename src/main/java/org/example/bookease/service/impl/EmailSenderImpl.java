package org.example.bookease.service.impl;

import jakarta.mail.Message;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.example.bookease.service.EmailSender;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmailSenderImpl implements EmailSender {
    private final JavaMailSender emailSender;

    @Value("${mail.sender_email}")
    private String fromEmail;

    @Value("${mail.admin_email}")
    private String toEmail;

    @SneakyThrows
    public void sendEmail(String to, String subject, String html) {
        to = toEmail;

        MimeMessage message = emailSender.createMimeMessage();

        message.setFrom(new InternetAddress(fromEmail));
        message.setRecipients(Message.RecipientType.TO, to);
        message.setSubject(subject);
        message.setContent(html, "text/html;charset=utf-8");

        emailSender.send(message);
    }
}
