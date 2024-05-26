package org.example.bookease.service.impl;

import lombok.SneakyThrows;
import org.example.bookease.dto.request.RequestDto;
import org.example.bookease.service.HtmlPageBuilder;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Service
public class HtmlPageBuilderImpl implements HtmlPageBuilder {
    @Override
    @SneakyThrows
    public String getNewRequestNotification(String to, RequestDto requestDto) {
        Path path = Paths.get(Thread.currentThread()
                .getContextClassLoader()
                .getResource("templates/emails/new_request_notification.html")
                .toURI());
        String page = Files.readString(path, StandardCharsets.UTF_8);

        page = page.replace("${to}", to);
        page = page.replace("${from}", requestDto.getName());
        page = page.replace("${subject}", requestDto.getSubject());
        page = page.replace("${message}", requestDto.getMessage());

        return page;
    }
}
