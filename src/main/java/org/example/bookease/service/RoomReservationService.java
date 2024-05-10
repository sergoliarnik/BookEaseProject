package org.example.bookease.service;

import org.example.bookease.dto.BookDto;
import org.example.bookease.dto.RoomReservationDto;

import java.util.List;

public interface RoomReservationService {
    void reserve(BookDto bookDto, String email);

    List<RoomReservationDto> getReservation(String email);
}
