package org.example.bookease.controller;

import org.example.bookease.entity.Restaurant;
import org.example.bookease.service.RestaurantService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/restaurants")
public class RestaurantController extends AbstractController<Restaurant> {
    protected RestaurantController(RestaurantService service) {
        super(service);
    }
}
