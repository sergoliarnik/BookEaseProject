package org.example.bookease.service.impl;

import org.example.bookease.entity.Room;
import org.example.bookease.repository.RoomRepo;
import org.example.bookease.service.HotelService;
import org.example.bookease.service.RoomService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class RoomServiceImpl extends AbstractCrudServiceImpl<Room> implements RoomService {
    private final HotelService hotelService;
    private final RoomRepo roomRepo;

    protected RoomServiceImpl(RoomRepo roomRepo, HotelService hotelService) {
        super(roomRepo);
        this.hotelService = hotelService;
        this.roomRepo = roomRepo;
    }

    @Override
    public Page<Room> findAllByHotelId(String hotelId, Pageable pageable) {
        hotelService.findById(hotelId);
        return roomRepo.findAllByHotelId(hotelId, pageable);
    }
}
