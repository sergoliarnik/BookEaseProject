package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.RoomDto;
import org.example.bookease.service.RoomService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;

    @GetMapping("/rooms")
    public ModelAndView rooms() {
        List<RoomDto> rooms = roomService.findAll();
        return new ModelAndView("rooms")
                .addObject("rooms", rooms);
    }

    @GetMapping("/rooms-single")
    public String roomsSingle() {
        return "rooms-single";
    }

    @GetMapping("/hotels/{hotelId}/rooms")
    public ModelAndView hotelRooms(@PathVariable String hotelId) {
        List<RoomDto> rooms = roomService.findAllByHotelId(hotelId);
        return new ModelAndView("rooms")
                .addObject("rooms", rooms);
    }
}
