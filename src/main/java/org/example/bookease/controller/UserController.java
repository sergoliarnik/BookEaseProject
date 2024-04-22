package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.RegisterUserDto;
import org.example.bookease.entity.User;
import org.example.bookease.entity.UserRole;
import org.example.bookease.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.UUID;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @PostMapping("/user")
    public String saveUser(@ModelAttribute RegisterUserDto registerUserDto) {
        User user = new User();
        user.setId(UUID.randomUUID().toString());
        user.setName(registerUserDto.getName());
        user.setSurname(registerUserDto.getSurname());
        user.setEmail(registerUserDto.getEmail());
        user.setPassword(registerUserDto.getPassword());
        user.setRole(UserRole.CUSTOMER);

        userService.save(user);
        return "redirect:/";
    }
}
