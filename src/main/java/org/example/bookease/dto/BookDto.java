package org.example.bookease.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class BookDto {
    private String roomId;
    private LocalDate from;
    private LocalDate to;
}
