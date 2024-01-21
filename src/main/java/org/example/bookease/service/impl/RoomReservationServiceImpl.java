package org.example.bookease.service.impl;

import org.example.bookease.entity.RoomReservation;
import org.example.bookease.repository.RoomReservationRepo;
import org.springframework.stereotype.Service;

@Service
public class RoomReservationServiceImpl extends AbstractCrudServiceImpl<RoomReservation> {
    protected RoomReservationServiceImpl(RoomReservationRepo repo) {
        super(repo);
    }
}
