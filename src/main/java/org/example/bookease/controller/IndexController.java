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

import java.util.List;

@Controller
@RequiredArgsConstructor
public class IndexController {
    private final HotelService hotelService;

    @GetMapping
    public ModelAndView index() {
        Pageable pageable = PageRequest.of(0, 10_000_000);
        Page<Hotel> hotels = hotelService.findAll(pageable);

        List<String> cities = hotelService.findAllHotelsCities();

        return new ModelAndView("index")
                .addObject(hotels.getContent())
                .addObject("cities", cities);
    }
}
