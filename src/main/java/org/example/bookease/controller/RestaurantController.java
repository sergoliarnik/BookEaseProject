package org.example.bookease.controller;

import org.example.bookease.entity.Restaurant;
import org.example.bookease.service.RestaurantService;
import org.springframework.stereotype.Controller;

@Controller
public class RestaurantController extends AbstractController<Restaurant> {
    protected RestaurantController(RestaurantService service) {
        super(service);
    }
}
