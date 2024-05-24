package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.example.bookease.dto.hotel.AddHotelDto;
import org.example.bookease.dto.hotel.HotelDto;
import org.example.bookease.dto.hotel.HotelFilterDto;
import org.example.bookease.dto.hotel.HotelWithRoomsDto;
import org.example.bookease.dto.room.RoomFilterDto;
import org.example.bookease.entity.Hotel;
import org.example.bookease.mapper.HotelMapper;
import org.example.bookease.repository.HotelRepo;
import org.example.bookease.repository.RoomReservationRepo;
import org.example.bookease.service.HotelService;
import org.example.bookease.util.ErrorMessages;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class HotelServiceImpl implements HotelService {
    private final HotelRepo hotelRepo;
    private final RoomReservationRepo roomReservationRepo;
    private final HotelMapper hotelMapper;

    @Override
    public List<HotelDto> findAll() {
        List<Hotel> hotels = hotelRepo.findAll();
        return hotels.stream().map(hotelMapper::hotelToHotelDto).toList();
    }

    @Override
    public List<HotelDto> findAll(HotelFilterDto filter) {
        List<Hotel> hotels = hotelRepo.findAll();
        List<Hotel> filteredHotels = hotels.stream()
                .filter(h -> ObjectUtils.isEmpty(filter.getCity()) || h.getCity().equalsIgnoreCase(filter.getCity()))
                .toList();
        return filteredHotels.stream().map(hotelMapper::hotelToHotelDto).toList();
    }


    @Override
    public HotelWithRoomsDto findByIdWithRooms(String id) {
        Hotel hotel = hotelRepo.findById(id)
                .orElseThrow(() -> new NoSuchElementException(ErrorMessages.getNotFound("Hotel", "id", id)));
        return hotelMapper.hotelToHotelWithRoomsDto(hotel);
    }

    @Override
    @SneakyThrows
    public HotelWithRoomsDto findByIdWithRooms(String id, RoomFilterDto filter) {
        if (filter.getFrom() != null && filter.getTo() != null && filter.getFrom().isAfter(filter.getTo())) {
            throw new IllegalAccessException(ErrorMessages.getFromDateMustBeBeforeToDate());
        }

        Hotel hotel = hotelRepo.findById(id)
                .orElseThrow(() -> new NoSuchElementException(ErrorMessages.getNotFound("Hotel", "id", id)));

        hotel.setRooms(
                hotel.getRooms().stream()
                        .filter(r -> filter.getPeopleCount() == null || r.getMaxPeople() >= filter.getPeopleCount())
                        .filter(r -> filter.getRoomType() == null || r.getType() == filter.getRoomType())
                        .toList()
        );

        HotelWithRoomsDto mappedFilteredHotel = hotelMapper.hotelToHotelWithRoomsDto(hotel);

        if (filter.getFrom() != null && filter.getTo() != null) {
            mappedFilteredHotel.getRooms()
                    .forEach(r -> r.setBooked(roomReservationRepo.isBooked(r.getId(), filter.getFrom(), filter.getTo())));

        }

        return mappedFilteredHotel;
    }

    @Override
    @SneakyThrows
    public List<HotelWithRoomsDto> findAllWithRooms(RoomFilterDto filter) {
        if (filter.getFrom() != null && filter.getTo() != null && filter.getFrom().isAfter(filter.getTo())) {
            throw new IllegalAccessException(ErrorMessages.getFromDateMustBeBeforeToDate());
        }

        List<Hotel> hotels = hotelRepo.findAll();
        List<Hotel> filteredHotels = hotels.stream()
                .filter(h -> ObjectUtils.isEmpty(filter.getCity()) || h.getCity().equals(filter.getCity()))
                .toList();
        filteredHotels
                .forEach(fh -> fh.setRooms(
                                fh.getRooms().stream()
                                        .filter(r -> filter.getPeopleCount() == null || r.getMaxPeople() >= filter.getPeopleCount())
                                        .filter(r -> filter.getRoomType() == null || r.getType() == filter.getRoomType())
                                        .toList()
                        )
                );

        List<HotelWithRoomsDto> mappedFilteredHotels = filteredHotels.stream()
                .map(hotelMapper::hotelToHotelWithRoomsDto)
                .toList();

        if (filter.getFrom() != null && filter.getTo() != null) {
            mappedFilteredHotels.stream()
                    .flatMap(mfh -> mfh.getRooms().stream())
                    .forEach(r -> r.setBooked(roomReservationRepo.isBooked(r.getId(), filter.getFrom(), filter.getTo())));

        }

        return mappedFilteredHotels;
    }

    @Override
    public List<String> findAllHotelsCities() {
        return hotelRepo.findAllHotelsCities();
    }

    @Override
    public void save(AddHotelDto addHotelDto) {
        Hotel hotel = hotelMapper.addHotelDtoToHotel(addHotelDto);
        hotel.setId(UUID.randomUUID().toString());
        hotelRepo.save(hotel);
    }
}
