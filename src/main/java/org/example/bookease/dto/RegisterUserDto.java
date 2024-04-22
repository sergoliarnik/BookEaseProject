package org.example.bookease.dto;

import lombok.Data;

@Data
public class RegisterUserDto {
    private String email;
    private String name;
    private String surname;
    private String password;
}
