package org.example.bookease.service;

import org.example.bookease.dto.room.BookDto;
import org.example.bookease.dto.room.RoomReservationDto;

import java.util.List;

public interface RoomReservationService {
    void reserve(BookDto bookDto, String email);

    List<RoomReservationDto> getReservation(String email);
}
