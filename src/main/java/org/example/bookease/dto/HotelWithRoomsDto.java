package org.example.bookease.dto;

import lombok.Data;

import java.util.List;

@Data
public class HotelWithRoomsDto {
    private String id;
    private String name;
    private List<RoomDto> rooms;
}
