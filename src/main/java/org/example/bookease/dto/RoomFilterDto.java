package org.example.bookease.dto;

import lombok.Data;
import org.example.bookease.entity.RoomType;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
public class RoomFilterDto {

    @DateTimeFormat(pattern = "yyyy-MM-dd") // needed for input value
    private LocalDate from;
    @DateTimeFormat(pattern = "yyyy-MM-dd") // needed for input value
    private LocalDate to;
    private RoomType roomType;
    private Integer peopleCount;
    private String city;
}
