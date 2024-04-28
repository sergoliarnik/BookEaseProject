package org.example.bookease.service;

import org.example.bookease.dto.HotelDto;

import java.util.List;

public interface HotelService {

    List<HotelDto> findAll();

    List<String> findAllHotelsCities();
}
