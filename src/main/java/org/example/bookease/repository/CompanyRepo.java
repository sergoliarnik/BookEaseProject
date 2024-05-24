package org.example.bookease.repository;

import org.example.bookease.entity.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CompanyRepo extends JpaRepository<Company, String> {
    Optional<Company> findByUserEmail(String email);
}