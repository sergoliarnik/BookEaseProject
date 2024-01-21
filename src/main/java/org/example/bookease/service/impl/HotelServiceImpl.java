package org.example.bookease.service.impl;

import org.example.bookease.entity.Hotel;
import org.example.bookease.repository.HotelRepo;
import org.springframework.stereotype.Service;

@Service
public class HotelServiceImpl extends AbstractCrudServiceImpl<Hotel> {
    public HotelServiceImpl(HotelRepo repo) {
        super(repo);
    }
}
