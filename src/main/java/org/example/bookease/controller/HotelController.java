package org.example.bookease.controller;

import org.example.bookease.entity.Hotel;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Controller;

@Controller
public class HotelController extends AbstractController<Hotel> {
    protected HotelController(HotelService service) {
        super(service);
    }
}
