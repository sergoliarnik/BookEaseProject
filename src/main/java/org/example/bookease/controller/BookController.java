package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.BookDto;
import org.example.bookease.dto.RoomReservationDto;
import org.example.bookease.service.RoomReservationService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

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

    @GetMapping("/reservations")
    @PreAuthorize("isAuthenticated()")
    public ModelAndView getReservations(Principal principal) {
        List<RoomReservationDto> roomReservations = roomReservationService.getReservation(principal.getName());

        return new ModelAndView("room-reservations")
                .addObject("roomReservations", roomReservations);
    }
}
