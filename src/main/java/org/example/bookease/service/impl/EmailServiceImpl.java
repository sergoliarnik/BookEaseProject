package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.request.RequestDto;
import org.example.bookease.service.EmailSender;
import org.example.bookease.service.EmailService;
import org.example.bookease.service.HtmlPageBuilder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmailServiceImpl implements EmailService {
    private final EmailSender emailSender;
    private final HtmlPageBuilder htmlPageBuilder;

    @Override
    public void sendNewRequestNotificationEmail(String to, RequestDto requestDto) {
        String body = htmlPageBuilder.getNewRequestNotification(to, requestDto);
        emailSender.sendEmail(to, "New Request", body);
    }
}
