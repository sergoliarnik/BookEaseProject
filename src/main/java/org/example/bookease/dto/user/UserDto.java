package org.example.bookease.dto.user;

import lombok.Data;
import org.example.bookease.entity.UserRole;

@Data
public class UserDto {
    private String id;
    private String email;
    private String name;
    private String surname;
    private UserRole role;
}
