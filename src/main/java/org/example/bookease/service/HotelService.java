package org.example.bookease.service;

import org.example.bookease.entity.Hotel;

import java.util.List;

public interface HotelService extends CrudService<Hotel> {
    List<String> findAllHotelsCities();
}
