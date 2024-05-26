package org.example.bookease.repository;

import org.example.bookease.entity.Request;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RequestRepo extends JpaRepository<Request, String> {
}
