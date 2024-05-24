package org.example.bookease.service;

import org.example.bookease.dto.company.CompanyDto;

public interface CompanyService {
    CompanyDto findByOwnerEmail(String email);
}
