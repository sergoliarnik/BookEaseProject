package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

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
}
