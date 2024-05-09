package org.example.bookease.dto;

import lombok.Data;
import org.example.bookease.entity.RoomType;

@Data
public final class RoomDto {
    private String id;
    private String imageUrl;
    private RoomType type;
    private int pricePerNight;
    private int maxPeople;
    private int beds;
    private Boolean booked;
}
