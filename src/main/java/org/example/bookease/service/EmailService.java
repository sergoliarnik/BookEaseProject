package org.example.bookease.service;

import org.example.bookease.dto.request.RequestDto;

public interface EmailService {
    void sendNewRequestNotificationEmail(String to, RequestDto requestDto);
}
