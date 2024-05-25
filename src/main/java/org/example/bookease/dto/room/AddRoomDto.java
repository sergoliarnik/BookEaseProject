package org.example.bookease.dto.room;

import lombok.Data;
import org.example.bookease.entity.RoomType;

@Data
public final class AddRoomDto {
    private RoomType type;
    private int pricePerNight;
    private int maxPeople;
    private int beds;
    private int size;
    private String description;
    private String view;

    private String hotelId;
}
