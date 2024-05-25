package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.user.RegisterUserDto;
import org.example.bookease.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @PostMapping("/user")
    public String saveUser(@ModelAttribute RegisterUserDto registerUserDto) {
        userService.save(registerUserDto);
        return "redirect:/";
    }
}
