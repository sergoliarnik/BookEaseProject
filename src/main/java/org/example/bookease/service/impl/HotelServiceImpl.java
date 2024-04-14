package org.example.bookease.service.impl;

import org.example.bookease.entity.Hotel;
import org.example.bookease.repository.HotelRepo;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotelServiceImpl extends AbstractCrudServiceImpl<Hotel> implements HotelService {
    private final HotelRepo hotelRepo;

    public HotelServiceImpl(HotelRepo hotelRepo) {
        super(hotelRepo);
        this.hotelRepo = hotelRepo;
    }

    @Override
    public List<String> findAllHotelsCities() {
        return hotelRepo.findAllHotelsCities();
    }
}
