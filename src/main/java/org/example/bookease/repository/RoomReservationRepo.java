package org.example.bookease.repository;

import org.example.bookease.entity.RoomReservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface RoomReservationRepo extends JpaRepository<RoomReservation, String> {
    @Query("SELECT count(rr) > 0 FROM RoomReservation rr WHERE rr.room.id = :roomId AND (" +
           " :from >= rr.fromDate AND :to <= rr.toDate OR " +
           " :to >= rr.fromDate AND :to <= rr.toDate OR " +
           " :from >= rr.fromDate AND :from <= rr.toDate OR " +
           " :from <= rr.fromDate AND :to >= rr.toDate)")
    boolean isBooked(String roomId, LocalDate from, LocalDate to);

    List<RoomReservation> findAllByRoomIdAndFromDateGreaterThanEqual(String roomId, LocalDate fromDate);
}