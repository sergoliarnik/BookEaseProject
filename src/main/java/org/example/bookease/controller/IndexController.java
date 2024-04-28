package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.HotelDto;
import org.example.bookease.service.HotelService;
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
        List<HotelDto> hotels = hotelService.findAll();

        List<String> cities = hotelService.findAllHotelsCities();

        return new ModelAndView("index")
                .addObject("hotels", hotels)
                .addObject("cities", cities);
    }
}
