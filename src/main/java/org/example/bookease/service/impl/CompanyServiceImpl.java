package org.example.bookease.service.impl;

import org.example.bookease.entity.Company;
import org.example.bookease.repository.CompanyRepo;
import org.springframework.stereotype.Service;

@Service
public class CompanyServiceImpl extends AbstractCrudServiceImpl<Company> {
    public CompanyServiceImpl(CompanyRepo repo) {
        super(repo);
    }
}
