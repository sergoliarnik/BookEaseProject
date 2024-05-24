package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.company.CompanyDto;
import org.example.bookease.dto.hotel.AddHotelDto;
import org.example.bookease.dto.hotel.HotelDto;
import org.example.bookease.dto.hotel.HotelFilterDto;
import org.example.bookease.dto.hotel.HotelWithRoomsDto;
import org.example.bookease.service.CompanyService;
import org.example.bookease.service.HotelService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class HotelController {
    private final HotelService hotelService;
    private final CompanyService companyService;

    @PostMapping("/hotels")
    @PreAuthorize("hasAnyAuthority('OWNER')")
    public String addHotel(AddHotelDto addHotelDto) {
        hotelService.save(addHotelDto);

        return "redirect:/hotels";
    }

    @GetMapping("/hotels/add")
    @PreAuthorize("hasAnyAuthority('OWNER')")
    public ModelAndView getAddHotel(AddHotelDto addHotelDto, Principal principal) {
        CompanyDto company = companyService.findByOwnerEmail(principal.getName());

        return new ModelAndView("add-hotel")
                .addObject("addHotelDto", addHotelDto)
                .addObject("companyId", company.getId());
    }

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
