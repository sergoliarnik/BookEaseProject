package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.BookDto;
import org.example.bookease.service.RoomReservationService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class BookController {
    private final RoomReservationService roomReservationService;

    @PostMapping("/book")
    @PreAuthorize("isAuthenticated()")
    public String book(BookDto bookDto, Principal principal) {
        roomReservationService.reserve(bookDto, principal.getName());
        return "redirect:/";
    }
}
