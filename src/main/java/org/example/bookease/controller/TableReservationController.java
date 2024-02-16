package org.example.bookease.controller;

import org.example.bookease.entity.Company;
import org.example.bookease.service.CrudService;
import org.springframework.stereotype.Controller;

@Controller
public class TableReservationController extends AbstractController<Company> {
    protected TableReservationController(CrudService<Company> service) {
        super(service);
    }
}
