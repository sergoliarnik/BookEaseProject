package org.example.bookease.service.impl;

import org.example.bookease.dto.hotel.HotelDto;
import org.example.bookease.dto.hotel.HotelFilterDto;
import org.example.bookease.entity.Hotel;
import org.example.bookease.mapper.HotelMapper;
import org.example.bookease.repository.HotelRepo;
import org.example.bookease.repository.RoomReservationRepo;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class HotelServiceImplTest {
    @Mock
    private HotelRepo hotelRepo;
    @Mock
    private RoomReservationRepo roomReservationRepo;
    @Mock
    private HotelMapper hotelMapper;
    @InjectMocks
    private HotelServiceImpl hotelService;

    @Test
    void findAll() {
        Hotel hotel = new Hotel();
        HotelDto hotelDto = new HotelDto();

        when(hotelRepo.findAll()).thenReturn(List.of(hotel));
        when(hotelMapper.hotelToHotelDto(hotel)).thenReturn(hotelDto);

        List<HotelDto> result = hotelService.findAll();

        assertEquals(hotelDto, result.get(0));
    }

    @Test
    void findAllWithFilter() {
        String city = "Uzhhorod";

        HotelFilterDto filter = new HotelFilterDto();
        filter.setCity(city);

        Hotel hotel = new Hotel();
        hotel.setCity(city);
        HotelDto hotelDto = new HotelDto();

        when(hotelRepo.findAll()).thenReturn(List.of(hotel));
        when(hotelMapper.hotelToHotelDto(hotel)).thenReturn(hotelDto);

        List<HotelDto> result = hotelService.findAll(filter);

        assertEquals(hotelDto, result.get(0));
    }

    @Test
    void findAllWithFilter_WhenFilterDoesNotMatch_ShouldNotReturnHotel() {
        String filterCity = "Uzhhorod";
        String city = "Lviv";

        HotelFilterDto filter = new HotelFilterDto();
        filter.setCity(filterCity);

        Hotel hotel = new Hotel();
        hotel.setCity(city);

        when(hotelRepo.findAll()).thenReturn(List.of(hotel));

        List<HotelDto> result = hotelService.findAll(filter);

        assertTrue(result.isEmpty());

        verify(hotelMapper, never()).hotelToHotelDto(any());
    }
}