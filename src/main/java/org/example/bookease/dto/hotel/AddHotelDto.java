package org.example.bookease.dto.hotel;

import lombok.Data;

@Data
public class AddHotelDto {
    private String name;

    private String imageUrl;

    private String city;

    private String description;

    private String shortDescription;

    private String companyId;
}
