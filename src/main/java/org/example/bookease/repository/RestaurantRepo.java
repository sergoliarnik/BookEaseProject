package org.example.bookease.repository;

import org.example.bookease.entity.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RestaurantRepo extends JpaRepository<Restaurant, String> {
}