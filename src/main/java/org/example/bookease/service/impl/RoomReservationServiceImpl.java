package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.example.bookease.dto.room.BookDto;
import org.example.bookease.dto.room.RoomReservationDto;
import org.example.bookease.entity.Room;
import org.example.bookease.entity.RoomReservation;
import org.example.bookease.entity.User;
import org.example.bookease.mapper.RoomReservationMapper;
import org.example.bookease.repository.RoomRepo;
import org.example.bookease.repository.RoomReservationRepo;
import org.example.bookease.repository.UserRepo;
import org.example.bookease.service.RoomReservationService;
import org.example.bookease.util.ErrorMessages;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class RoomReservationServiceImpl implements RoomReservationService {

    private final RoomRepo roomRepo;
    private final UserRepo userRepo;
    private final RoomReservationRepo roomReservationRepo;

    private final RoomReservationMapper roomReservationMapper;


    @SneakyThrows
    @Override
    public void reserve(BookDto bookDto, String email) {
        if (bookDto.getFrom() == null || bookDto.getTo() == null) {
            throw new IllegalAccessException(ErrorMessages.getMustNotBeEmpty("From", "To"));
        }
        if (bookDto.getFrom().isAfter(bookDto.getTo())) {
            throw new IllegalAccessException(ErrorMessages.getFromDateMustBeBeforeToDate());
        }
        Room room = roomRepo.findById(bookDto.getRoomId())
                .orElseThrow(() -> new NoSuchElementException(
                        ErrorMessages.getNotFound("Room", "id", bookDto.getRoomId())));

        if (roomReservationRepo.isBooked(room.getId(), bookDto.getFrom(), bookDto.getTo())) {
            List<RoomReservation> roomReservations =
                    roomReservationRepo.findAllByRoomIdAndFromDateGreaterThanEqual(room.getId(), LocalDate.now());
            List<Pair<LocalDate, LocalDate>> bookedDates = roomReservations.stream()
                    .map(rr -> Pair.of(rr.getFromDate(), rr.getToDate()))
                    .toList();
            throw new IllegalAccessException(ErrorMessages.getDatesHaveBeenBooked(bookedDates));
        }

        User user = userRepo.findByEmail(email)
                .orElseThrow(() -> new NoSuchElementException(ErrorMessages.getNotFound("User", "email", email)));

        RoomReservation roomReservation = new RoomReservation();
        roomReservation.setId(UUID.randomUUID().toString());
        roomReservation.setRoom(room);
        roomReservation.setUser(user);
        roomReservation.setFromDate(bookDto.getFrom());
        roomReservation.setToDate(bookDto.getTo());

        roomReservationRepo.save(roomReservation);
    }

    @Override
    public List<RoomReservationDto> getReservation(String email) {
        User user = userRepo.findByEmail(email)
                .orElseThrow(() -> new NoSuchElementException(ErrorMessages.getNotFound("User", "email", email)));

        List<RoomReservation> roomReservations = user.getRoomReservationList();

        return roomReservations.stream()
                .map(roomReservationMapper::roomReservationToRoomReservationDto)
                .toList();
    }
}
