package org.example.bookease.dto.hotel;

import lombok.Data;
import org.example.bookease.dto.room.RoomDto;

import java.util.List;

@Data
public class HotelWithRoomsDto {
    private String id;
    private String name;
    private String description;
    private String shortDescription;
    private String imageUrl;

    private List<RoomDto> rooms;
    private List<HotelImageDto> images;
}
