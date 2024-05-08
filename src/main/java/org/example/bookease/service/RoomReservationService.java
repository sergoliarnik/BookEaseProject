package org.example.bookease.service;

import org.example.bookease.dto.BookDto;

public interface RoomReservationService {
    void reserve(BookDto bookDto, String email);
}
