package org.example.bookease.controller;

import org.example.bookease.entity.User;
import org.example.bookease.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class UserController extends AbstractController<User> {
    protected UserController(UserService service) {
        super(service);
    }
}
