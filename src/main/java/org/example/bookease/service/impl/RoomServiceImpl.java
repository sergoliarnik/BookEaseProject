package org.example.bookease.service.impl;

import org.example.bookease.entity.Room;
import org.example.bookease.repository.RoomRepo;
import org.example.bookease.service.RoomService;
import org.springframework.stereotype.Service;

@Service
public class RoomServiceImpl extends AbstractCrudServiceImpl<Room> implements RoomService {
    protected RoomServiceImpl(RoomRepo repo) {
        super(repo);
    }
}
