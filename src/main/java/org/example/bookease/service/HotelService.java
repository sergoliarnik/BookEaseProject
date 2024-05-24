package org.example.bookease.service;

import org.example.bookease.dto.hotel.AddHotelDto;
import org.example.bookease.dto.hotel.HotelDto;
import org.example.bookease.dto.hotel.HotelFilterDto;
import org.example.bookease.dto.hotel.HotelWithRoomsDto;
import org.example.bookease.dto.room.RoomFilterDto;

import java.util.List;

public interface HotelService {

    List<HotelDto> findAll();

    List<HotelDto> findAll(HotelFilterDto hotelFilterDto);

    HotelWithRoomsDto findByIdWithRooms(String id);

    HotelWithRoomsDto findByIdWithRooms(String id, RoomFilterDto filter);

    List<HotelWithRoomsDto> findAllWithRooms(RoomFilterDto filter);

    List<String> findAllHotelsCities();

    void save(AddHotelDto addHotelDto);
}
