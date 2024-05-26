package org.example.bookease.service;

public interface EmailSender {
    void sendEmail(String to, String subject, String html);
}
