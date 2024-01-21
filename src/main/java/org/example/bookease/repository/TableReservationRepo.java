package org.example.bookease.repository;

import org.example.bookease.entity.TableReservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TableReservationRepo extends JpaRepository<TableReservation, String> {
}