package org.example.bookease.controller;

import org.example.bookease.entity.Company;
import org.example.bookease.service.CompanyService;
import org.springframework.stereotype.Controller;

@Controller
public class CompanyController extends AbstractController<Company> {
    protected CompanyController(CompanyService service) {
        super(service);
    }
}
