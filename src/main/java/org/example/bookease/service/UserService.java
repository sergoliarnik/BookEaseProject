package org.example.bookease.service;

import org.example.bookease.dto.user.RegisterUserDto;
import org.example.bookease.dto.user.UserDto;

public interface UserService {

    void save(RegisterUserDto registerUserDto);

    UserDto findByEmail(String email);
}
