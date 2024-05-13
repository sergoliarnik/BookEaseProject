package org.example.bookease.service;

import org.example.bookease.dto.HotelDto;
import org.example.bookease.dto.HotelFilterDto;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.dto.RoomFilterDto;

import java.util.List;

public interface HotelService {

    List<HotelDto> findAll();

    List<HotelDto> findAll(HotelFilterDto hotelFilterDto);

    HotelWithRoomsDto findByIdWithRooms(String id);

    HotelWithRoomsDto findByIdWithRooms(String id, RoomFilterDto filter);

    List<HotelWithRoomsDto> findAllWithRooms();

    List<HotelWithRoomsDto> findAllWithRooms(RoomFilterDto filter);

    List<String> findAllHotelsCities();
}
