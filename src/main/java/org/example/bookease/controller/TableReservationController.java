package org.example.bookease.controller;

import org.example.bookease.entity.Company;
import org.example.bookease.service.CrudService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/table-reservation")
public class TableReservationController extends AbstractController<Company> {
    protected TableReservationController(CrudService<Company> service) {
        super(service);
    }
}
