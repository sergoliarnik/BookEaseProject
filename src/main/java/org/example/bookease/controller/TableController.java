package org.example.bookease.controller;

import org.example.bookease.entity.Table;
import org.example.bookease.service.TableService;
import org.springframework.stereotype.Controller;

@Controller
public class TableController extends AbstractController<Table> {
    protected TableController(TableService service) {
        super(service);
    }
}
