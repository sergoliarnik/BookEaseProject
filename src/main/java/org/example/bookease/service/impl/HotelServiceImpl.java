package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.HotelDto;
import org.example.bookease.entity.Hotel;
import org.example.bookease.mapper.HotelMapper;
import org.example.bookease.repository.HotelRepo;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public List<String> findAllHotelsCities() {
        return hotelRepo.findAllHotelsCities();
    }
}
