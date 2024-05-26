package org.example.bookease.dto.request;

import lombok.Data;

@Data
public class AddRequestDto {
    private String name;

    private String email;

    private String subject;

    private String message;

    private boolean newCompanyRequest;
}
