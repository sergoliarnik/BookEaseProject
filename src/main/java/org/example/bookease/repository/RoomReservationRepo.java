package org.example.bookease.repository;

import org.example.bookease.entity.RoomReservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomReservationRepo extends JpaRepository<RoomReservation, String> {
}