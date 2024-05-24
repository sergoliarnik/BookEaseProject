package org.example.bookease.mapper;

import org.example.bookease.dto.hotel.AddHotelDto;
import org.example.bookease.dto.hotel.HotelDto;
import org.example.bookease.dto.hotel.HotelWithRoomsDto;
import org.example.bookease.entity.Hotel;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface HotelMapper {
    HotelDto hotelToHotelDto(Hotel hotel);

    HotelWithRoomsDto hotelToHotelWithRoomsDto(Hotel hotel);

    @Mapping(source = "companyId", target = "company.id")
    Hotel addHotelDtoToHotel(AddHotelDto addHotelDto);
}
