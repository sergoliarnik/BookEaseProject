package org.example.bookease.service.impl;

import org.example.bookease.entity.Restaurant;
import org.example.bookease.repository.RestaurantRepo;
import org.example.bookease.service.RestaurantService;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImpl extends AbstractCrudServiceImpl<Restaurant> implements RestaurantService {
    protected RestaurantServiceImpl(RestaurantRepo repo) {
        super(repo);
    }
}
