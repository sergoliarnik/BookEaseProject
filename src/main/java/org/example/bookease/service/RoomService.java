package org.example.bookease.service;

import org.example.bookease.entity.Room;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface RoomService extends CrudService<Room> {
    Page<Room> findAllByHotelId(String hotelId, Pageable pageable);
}
