package org.example.bookease.mapper;

import org.example.bookease.dto.room.AddRoomDto;
import org.example.bookease.dto.room.RoomDto;
import org.example.bookease.entity.Room;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface RoomMapper {
    RoomDto roomToRoomDto(Room room);

    @Mapping(source = "hotelId", target = "hotel.id")
    Room addRoomDtoToRoom(AddRoomDto addRoomDto);
}
