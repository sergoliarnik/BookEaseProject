package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.example.bookease.dto.BookDto;
import org.example.bookease.entity.Room;
import org.example.bookease.entity.RoomReservation;
import org.example.bookease.entity.User;
import org.example.bookease.repository.RoomRepo;
import org.example.bookease.repository.RoomReservationRepo;
import org.example.bookease.repository.UserRepo;
import org.example.bookease.service.RoomReservationService;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RoomReservationServiceImpl implements RoomReservationService {

    private final RoomRepo roomRepo;
    private final UserRepo userRepo;
    private final RoomReservationRepo roomReservationRepo;


    @SneakyThrows
    @Override
    public void reserve(BookDto bookDto, String email) {
        if (bookDto.getFrom() == null || bookDto.getTo() == null) {
            throw new IllegalAccessException("From and To date must not be empty");
        }
        if (bookDto.getFrom().isAfter(bookDto.getTo())) {
            throw new IllegalAccessException("From date must not be after To date");
        }
        Room room = roomRepo.findById(bookDto.getRoomId())
                .orElseThrow(() -> new NoSuchElementException("Room with id " + bookDto.getRoomId() + " not found"));

        if (roomReservationRepo.isBooked(room.getId(), bookDto.getFrom(), bookDto.getTo())) {
            List<RoomReservation> roomReservations =
                    roomReservationRepo.findAllByRoomIdAndFromDateGreaterThanEqual(room.getId(), LocalDate.now());
            String bookedDates = roomReservations.stream()
                    .map(rr -> rr.getFromDate().toString() + " " + rr.getToDate().toString())
                    .collect(Collectors.joining(", ", "[", "]"));
            throw new IllegalAccessException("This dates have been booked " + bookedDates);
        }

        User user = userRepo.findByEmail(email)
                .orElseThrow(() -> new NoSuchElementException("User with email " + email + " not found"));

        RoomReservation roomReservation = new RoomReservation();
        roomReservation.setId(UUID.randomUUID().toString());
        roomReservation.setRoom(room);
        roomReservation.setUser(user);
        roomReservation.setFromDate(bookDto.getFrom());
        roomReservation.setToDate(bookDto.getTo());

        roomReservationRepo.save(roomReservation);
    }
}
