package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.entity.Room;
import org.example.bookease.service.RoomService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;
    @GetMapping("/rooms")
    public ModelAndView rooms() {
        Pageable pageable = PageRequest.of(0, 10_000_000);
        Page<Room> rooms = roomService.findAll(pageable);
        return new ModelAndView("rooms")
                .addObject(rooms.getContent());
    }

    @GetMapping("/rooms-single")
    public String roomsSingle() {
        return "rooms-single";
    }

    @GetMapping("/hotels/{hotelId}/rooms")
    public ModelAndView hotelRooms(@PathVariable String hotelId) {
        Pageable pageable = PageRequest.of(0, 10_000_000);
        Page<Room> rooms = roomService.findAllByHotelId(hotelId, pageable);
        return new ModelAndView("rooms")
                .addObject(rooms.getContent());
    }
}
