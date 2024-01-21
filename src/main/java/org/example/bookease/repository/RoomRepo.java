package org.example.bookease.repository;

import org.example.bookease.entity.Room;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepo extends JpaRepository<Room, String> {
}