package org.example.bookease.mapper;

import org.example.bookease.dto.room.RoomDto;
import org.example.bookease.entity.Room;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface RoomMapper {
    RoomDto roomToRoomDto(Room room);
}
