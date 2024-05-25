package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.example.bookease.dto.company.CompanyDto;
import org.example.bookease.entity.Company;
import org.example.bookease.entity.User;
import org.example.bookease.entity.UserRole;
import org.example.bookease.mapper.CompanyMapper;
import org.example.bookease.repository.CompanyRepo;
import org.example.bookease.repository.UserRepo;
import org.example.bookease.service.CompanyService;
import org.example.bookease.util.ErrorMessages;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CompanyServiceImpl implements CompanyService {
    private final CompanyRepo companyRepo;
    private final UserRepo userRepo;
    private final CompanyMapper companyMapper;

    @Override
    @SneakyThrows
    public CompanyDto findByOwnerEmail(String email) {
        User user = userRepo.findByEmail(email)
                .orElseThrow(() -> new NoSuchElementException(ErrorMessages.getNotFound("User", "email", email)));

        if (user.getRole() != UserRole.OWNER) {
            throw new IllegalAccessException(ErrorMessages.getUserHasNotExpectedRole(email, UserRole.OWNER));
        }

        Company company = companyRepo.findByUserEmail(email)
                .orElseThrow(() -> new NoSuchElementException(ErrorMessages.getNotFound("Company", "user email", email)));

        return companyMapper.toCompanyDto(company);
    }
}
