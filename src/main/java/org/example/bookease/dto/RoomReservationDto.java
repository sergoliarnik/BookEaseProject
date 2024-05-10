package org.example.bookease.dto;

import lombok.Data;
import org.example.bookease.entity.RoomType;

import java.time.LocalDate;

@Data
public class RoomReservationDto {
    private String hotelName;
    private RoomType roomType;
    private String roomId;
    private LocalDate from;
    private LocalDate to;
}
