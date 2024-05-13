package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.HotelDto;
import org.example.bookease.dto.HotelFilterDto;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class HotelController {
    private final HotelService hotelService;

    @GetMapping("/hotels/{hotelId}")
    public ModelAndView getHotel(@PathVariable String hotelId) {

        HotelWithRoomsDto hotelWithRoomsDto = hotelService.findByIdWithRooms(hotelId);

        return new ModelAndView("hotel")
                .addObject("hotelWithRoomsDto", hotelWithRoomsDto);
    }

    @GetMapping("/hotels")
    public ModelAndView getHotels(HotelFilterDto hotelFilterDto) {

        List<HotelDto> hotels = hotelService.findAll(hotelFilterDto);

        List<String> cities = hotelService.findAllHotelsCities();

        return new ModelAndView("hotels")
                .addObject("hotels", hotels)
                .addObject("cities", cities)
                .addObject("hotelFilterDto", hotelFilterDto);
    }
}
