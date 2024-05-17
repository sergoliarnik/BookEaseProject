package org.example.bookease.service;

import org.example.bookease.dto.room.RoomDto;

import java.util.List;

public interface RoomService {
    List<RoomDto> findAll();

    List<RoomDto> findAllByHotelId(String hotelId);

    RoomDto findById(String roomId);
}
