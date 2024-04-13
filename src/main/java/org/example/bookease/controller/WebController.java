package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.entity.Hotel;
import org.example.bookease.service.HotelService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class WebController {
    private final HotelService hotelService;

    @GetMapping
    public ModelAndView index() {
        Pageable pageable = PageRequest.of(0, 10_000_000);
        Page<Hotel> hotels = hotelService.findAll(pageable);
        return new ModelAndView("index")
                .addObject(hotels.getContent());
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
    public String rooms() {
        return "rooms";
    }
}
