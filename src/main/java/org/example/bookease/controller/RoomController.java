package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.BookDto;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.dto.RoomFilterDto;
import org.example.bookease.entity.RoomType;
import org.example.bookease.service.HotelService;
import org.example.bookease.service.RoomService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;
    private final HotelService hotelService;

    @GetMapping("/rooms")
    public ModelAndView rooms(RoomFilterDto roomFilterDto, BindingResult result) {
        if (roomFilterDto.getFrom() != null && roomFilterDto.getTo() != null && roomFilterDto.getFrom().isAfter(roomFilterDto.getTo())) {
            result.rejectValue("from", "error.from_date_must_not_be_after_to_date");
            result.rejectValue("to", "error.to_date_must_not_be_before_from_date");
        }

        List<String> cities = hotelService.findAllHotelsCities();

        if (result.hasErrors()) {
            return new ModelAndView("rooms")
                    .addObject("roomTypes", RoomType.values())
                    .addObject("roomFilterDto", roomFilterDto)
                    .addObject("cities", cities);
        }

        List<HotelWithRoomsDto> hotelsWithRooms = hotelService.findAllWithRooms(roomFilterDto);

        return new ModelAndView("rooms")
                .addObject("hotelsWithRooms", hotelsWithRooms)
                .addObject("roomTypes", RoomType.values())
                .addObject("roomFilterDto", roomFilterDto)
                .addObject("cities", cities);
    }

    @GetMapping("/hotels/{hotelId}/rooms")
    public ModelAndView hotelRooms(@PathVariable String hotelId, RoomFilterDto roomFilterDto, BindingResult result) {
        if (roomFilterDto.getFrom() != null && roomFilterDto.getTo() != null && roomFilterDto.getFrom().isAfter(roomFilterDto.getTo())) {
            result.rejectValue("from", "error.from_date_must_not_be_after_to_date");
            result.rejectValue("to", "error.to_date_must_not_be_before_from_date");
        }

        if (result.hasErrors()) {
            return new ModelAndView("rooms")
                    .addObject("roomTypes", RoomType.values())
                    .addObject("roomFilterDto", roomFilterDto)
                    .addObject("hotelId", hotelId);
        }

        List<HotelWithRoomsDto> hotelsWithRooms = List.of(hotelService.findByIdWithRooms(hotelId, roomFilterDto));

        return new ModelAndView("rooms")
                .addObject("hotelsWithRooms", hotelsWithRooms)
                .addObject("roomTypes", RoomType.values())
                .addObject("roomFilterDto", roomFilterDto)
                .addObject("hotelId", hotelId);
    }


    @GetMapping("/rooms/{roomId}")
    public ModelAndView roomsSingle(@PathVariable String roomId) {
        BookDto bookDto = new BookDto();
        bookDto.setRoomId(roomId);

        return new ModelAndView("rooms-single")
                .addObject("bookDto", bookDto);
    }
}
