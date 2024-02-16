package org.example.bookease.service.impl;

import org.example.bookease.entity.Company;
import org.example.bookease.repository.CompanyRepo;
import org.example.bookease.service.CompanyService;
import org.springframework.stereotype.Service;

@Service
public class CompanyServiceImpl extends AbstractCrudServiceImpl<Company> implements CompanyService {
    public CompanyServiceImpl(CompanyRepo repo) {
        super(repo);
    }
}
