package org.example.bookease.service;

import org.example.bookease.dto.request.RequestDto;

public interface HtmlPageBuilder {
    String getNewRequestNotification(String to, RequestDto requestDto);
}
