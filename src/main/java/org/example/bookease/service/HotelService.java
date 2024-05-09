package org.example.bookease.service;

import org.example.bookease.dto.HotelDto;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.dto.RoomFilterDto;

import java.util.List;

public interface HotelService {

    List<HotelDto> findAll();

    HotelWithRoomsDto findByIdWithRooms(String id);

    List<HotelWithRoomsDto> findAllWithRooms();

    List<HotelWithRoomsDto> findAllWithRooms(RoomFilterDto filter);

    List<String> findAllHotelsCities();
}
