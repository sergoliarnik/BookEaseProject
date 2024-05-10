package org.example.bookease.mapper;

import org.example.bookease.dto.HotelDto;
import org.example.bookease.dto.HotelWithRoomsDto;
import org.example.bookease.dto.RoomReservationDto;
import org.example.bookease.entity.Hotel;
import org.example.bookease.entity.RoomReservation;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface RoomReservationMapper {
    @Mapping(source = "fromDate", target = "from")
    @Mapping(source = "toDate", target = "to")
    @Mapping(source = "room.id", target = "roomId")
    @Mapping(source = "room.type", target = "roomType")
    @Mapping(source = "room.hotel.name", target = "hotelName")
    RoomReservationDto roomReservationToRoomReservationDto(RoomReservation roomReservation);
}
