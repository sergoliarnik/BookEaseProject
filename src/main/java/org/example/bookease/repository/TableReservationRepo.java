package org.example.bookease.repository;

import org.example.bookease.entity.TableReservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TableReservationRepo extends JpaRepository<TableReservation, String> {
}