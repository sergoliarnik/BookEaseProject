package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.RoomDto;
import org.example.bookease.entity.Room;
import org.example.bookease.mapper.RoomMapper;
import org.example.bookease.repository.HotelRepo;
import org.example.bookease.repository.RoomRepo;
import org.example.bookease.service.RoomService;
import org.example.bookease.util.ErrorMessages;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class RoomServiceImpl implements RoomService {
    private final RoomRepo roomRepo;
    private final RoomMapper roomMapper;
    private final HotelRepo hotelRepo;

    @Override
    public List<RoomDto> findAll() {
        List<Room> rooms = roomRepo.findAll();
        return rooms.stream().map(roomMapper::roomToRoomDto).toList();
    }

    @Override
    public List<RoomDto> findAllByHotelId(String hotelId) {
        if (!hotelRepo.existsById(hotelId)) {
            throw new NoSuchElementException(ErrorMessages.getNotFound("Hotel", "id", hotelId));
        }

        List<Room> rooms = roomRepo.findAllByHotelId(hotelId);
        return rooms.stream().map(roomMapper::roomToRoomDto).toList();
    }

    @Override
    public RoomDto findById(String roomId) {
        Room room = roomRepo.findById(roomId)
                .orElseThrow(() -> new NoSuchElementException(ErrorMessages.getNotFound("Room", "id", roomId)));
        return roomMapper.roomToRoomDto(room);
    }
}
