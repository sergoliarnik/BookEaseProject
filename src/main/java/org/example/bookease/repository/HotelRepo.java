package org.example.bookease.repository;

import org.example.bookease.dto.hotel.HotelDto;
import org.example.bookease.entity.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface HotelRepo extends JpaRepository<Hotel, String> {
    @Query("SELECT DISTINCT h.city FROM Hotel h")
    List<String> findAllHotelsCities();

    Optional<HotelDto> findByUserId(String managerId);
}