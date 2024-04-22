package org.example.bookease.controller;

import org.example.bookease.dto.RegisterUserDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
    @GetMapping("/register")
    public ModelAndView register() {
        return new ModelAndView("register", "registerUserDto", new RegisterUserDto());
    }
}
