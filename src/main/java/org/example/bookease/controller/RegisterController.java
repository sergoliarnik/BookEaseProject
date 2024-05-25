package org.example.bookease.controller;

import org.example.bookease.dto.user.LoginUserDto;
import org.example.bookease.dto.user.RegisterUserDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
    @GetMapping("/register")
    public ModelAndView register() {
        return new ModelAndView("register", "registerUserDto", new RegisterUserDto());
    }

    @GetMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("login", "loginUserDto", new LoginUserDto());
    }
}
