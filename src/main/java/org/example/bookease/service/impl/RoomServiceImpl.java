package org.example.bookease.service.impl;

import org.example.bookease.entity.Room;
import org.example.bookease.repository.RoomRepo;
import org.springframework.stereotype.Service;

@Service
public class RoomServiceImpl extends AbstractCrudServiceImpl<Room> {
    protected RoomServiceImpl(RoomRepo repo) {
        super(repo);
    }
}
