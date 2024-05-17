package org.example.bookease.repository;

import org.example.bookease.entity.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HotelRepo extends JpaRepository<Hotel, String> {
    @Query("SELECT DISTINCT h.city FROM Hotel h")
    List<String> findAllHotelsCities();
}