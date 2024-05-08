package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.HotelDto;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.entity.Hotel;
import org.example.bookease.mapper.HotelMapper;
import org.example.bookease.repository.HotelRepo;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class HotelServiceImpl implements HotelService {
    private final HotelRepo hotelRepo;
    private final HotelMapper hotelMapper;

    @Override
    public List<HotelDto> findAll() {
        List<Hotel> hotels = hotelRepo.findAll();
        return hotels.stream().map(hotelMapper::hotelToHotelDto).toList();
    }


    @Override
    public HotelWithRoomsDto findByIdWithRooms(String id) {
        Hotel hotel = hotelRepo.findById(id)
                .orElseThrow(() -> new NoSuchElementException("Hotel with id " + id + " not found"));
        return hotelMapper.hotelToHotelWithRoomsDto(hotel);
    }

    @Override
    public List<HotelWithRoomsDto> findAllWithRooms() {
        List<Hotel> hotels = hotelRepo.findAll();
        return hotels.stream().map(hotelMapper::hotelToHotelWithRoomsDto).toList();
    }

    @Override
    public List<String> findAllHotelsCities() {
        return hotelRepo.findAllHotelsCities();
    }
}
