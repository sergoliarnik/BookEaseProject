package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.BookDto;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.dto.RoomDto;
import org.example.bookease.service.HotelService;
import org.example.bookease.service.RoomService;
import org.springframework.stereotype.Controller;
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
    public ModelAndView rooms() {
        List<HotelWithRoomsDto> hotelsWithRooms = hotelService.findAllWithRooms();
        return new ModelAndView("rooms")
                .addObject("hotelsWithRooms", hotelsWithRooms);
    }

    @GetMapping("/rooms/{roomId}")
    public ModelAndView roomsSingle(@PathVariable String roomId) {
        BookDto bookDto = new BookDto();
        bookDto.setRoomId(roomId);

        return new ModelAndView("rooms-single")
                .addObject("bookDto", bookDto);
    }

    @GetMapping("/hotels/{hotelId}/rooms")
    public ModelAndView hotelRooms(@PathVariable String hotelId) {
        List<HotelWithRoomsDto> hotelsWithRooms = List.of(hotelService.findByIdWithRooms(hotelId));
        return new ModelAndView("rooms")
                .addObject("hotelsWithRooms", hotelsWithRooms);
    }
}
