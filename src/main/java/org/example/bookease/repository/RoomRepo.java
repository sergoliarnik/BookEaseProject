package org.example.bookease.repository;

import org.example.bookease.entity.Room;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoomRepo extends JpaRepository<Room, String> {
    List<Room> findAllByHotelId(String hotelId);
}