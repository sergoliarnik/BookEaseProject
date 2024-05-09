package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.HotelDto;
import org.example.bookease.dto.RoomFilterDto;
import org.example.bookease.entity.RoomType;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class IndexController {
    private final HotelService hotelService;

    @GetMapping
    public ModelAndView index() {
        List<HotelDto> hotels = hotelService.findAll();

        List<String> cities = hotelService.findAllHotelsCities();

        RoomFilterDto roomFilterDto = new RoomFilterDto();

        return new ModelAndView("index")
                .addObject("hotels", hotels)
                .addObject("cities", cities)
                .addObject("roomTypes", RoomType.values())
                .addObject("roomFilterDto", roomFilterDto);
    }
}
