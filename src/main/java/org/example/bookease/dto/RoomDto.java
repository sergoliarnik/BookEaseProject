package org.example.bookease.dto;

import lombok.Data;
import org.example.bookease.entity.RoomType;

import java.util.List;

@Data
public final class RoomDto {
    private String id;
    private RoomType type;
    private int pricePerNight;
    private int maxPeople;
    private int beds;
    private int size;
    private String description;
    private String view;
    private Boolean booked;

    private List<RoomImageDto> images;

}
