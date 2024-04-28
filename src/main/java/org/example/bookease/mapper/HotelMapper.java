package org.example.bookease.mapper;

import org.example.bookease.dto.HotelDto;
import org.example.bookease.entity.Hotel;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface HotelMapper {
    HotelDto hotelToHotelDto(Hotel hotel);
}
