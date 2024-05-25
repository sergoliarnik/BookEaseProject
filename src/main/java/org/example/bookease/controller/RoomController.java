package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.hotel.HotelWithRoomsDto;
import org.example.bookease.dto.room.AddRoomDto;
import org.example.bookease.dto.room.BookDto;
import org.example.bookease.dto.room.RoomDto;
import org.example.bookease.dto.room.RoomFilterDto;
import org.example.bookease.dto.user.UserDto;
import org.example.bookease.entity.RoomType;
import org.example.bookease.entity.UserRole;
import org.example.bookease.service.CompanyService;
import org.example.bookease.service.HotelService;
import org.example.bookease.service.RoomService;
import org.example.bookease.service.UserService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;
    private final HotelService hotelService;
    private final UserService userService;
    private final CompanyService companyService;

    @PostMapping("/rooms")
    @PreAuthorize("hasAnyAuthority('OWNER', 'MANAGER')")
    public String addRoom(AddRoomDto addRoomDto) {
        roomService.save(addRoomDto);

        return "redirect:/rooms";
    }

    @GetMapping("/rooms/add")
    @PreAuthorize("hasAnyAuthority('OWNER', 'MANAGER')")
    public ModelAndView getAddRoom(AddRoomDto addRoomDto, Principal principal) {
        UserDto user = userService.findByEmail(principal.getName());

        ModelAndView modelAndView = new ModelAndView("add-room");

        if (user.getRole() == UserRole.MANAGER) {
            modelAndView.addObject("hotelId", hotelService.findByManagerId(user.getId()).getId());
        } else if (user.getRole() == UserRole.OWNER) {
            String companyId = companyService.findByOwnerEmail(principal.getName()).getId();
            modelAndView.addObject("hotels", hotelService.findAllByCompanyId(companyId));
        }

        return modelAndView
                .addObject("role", user.getRole())
                .addObject("addRoomDto", addRoomDto)
                .addObject("roomTypes", RoomType.values());
    }

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
        RoomDto roomDto = roomService.findById(roomId);

        BookDto bookDto = new BookDto();
        bookDto.setRoomId(roomId);

        return new ModelAndView("rooms-single")
                .addObject("bookDto", bookDto)
                .addObject("room", roomDto);
    }
}
