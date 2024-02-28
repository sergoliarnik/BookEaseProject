package org.example.bookease.controller;

import org.example.bookease.entity.Hotel;
import org.example.bookease.service.HotelService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hotels")
public class HotelController extends AbstractController<Hotel> {
    protected HotelController(HotelService service) {
        super(service);
    }
}
