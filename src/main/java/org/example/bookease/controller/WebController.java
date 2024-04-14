package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.entity.Hotel;
import org.example.bookease.entity.Room;
import org.example.bookease.service.HotelService;
import org.example.bookease.service.RoomService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class WebController {
    private final HotelService hotelService;
    private final RoomService roomService;

    @GetMapping
    public ModelAndView index() {
        Pageable pageable = PageRequest.of(0, 10_000_000);
        Page<Hotel> hotels = hotelService.findAll(pageable);

        List<String> cities = hotelService.findAllHotelsCities();

        return new ModelAndView("index")
                .addObject(hotels.getContent())
                .addObject("cities", cities);
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/blog")
    public String blog() {
        return "blog";
    }

    @GetMapping("/blog-single")
    public String blogSingle() {
        return "blog-single";
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }

    @GetMapping("/restaurant")
    public String restaurant() {
        return "restaurant";
    }

    @GetMapping("/rooms-single")
    public String roomsSingle() {
        return "rooms-single";
    }

    @GetMapping("/rooms")
    public ModelAndView rooms() {
        Pageable pageable = PageRequest.of(0, 10_000_000);
        Page<Room> rooms = roomService.findAll(pageable);
        return new ModelAndView("rooms")
                .addObject(rooms.getContent());
    }

    @GetMapping("/hotels/{hotelId}/rooms")
    public ModelAndView hotelRooms(@PathVariable String hotelId) {
        Pageable pageable = PageRequest.of(0, 10_000_000);
        Page<Room> rooms = roomService.findAllByHotelId(hotelId, pageable);
        return new ModelAndView("rooms")
                .addObject(rooms.getContent());
    }
}
