package org.example.bookease.util;

import org.junit.jupiter.api.Test;
import org.springframework.data.util.Pair;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ErrorMessagesTest {

    @Test
    void getNotFound() {
        String message = ErrorMessages.getNotFound("User", "id", "1");

        assertEquals("'User' with 'id': '1' not found", message);
    }

    @Test
    void getFromDateMustBeBeforeToDate() {
        String message = ErrorMessages.getFromDateMustBeBeforeToDate();

        assertEquals("'From' date must be before 'To' date", message);
    }

    @Test
    void getMustNotBeEmpty_WhenSingleEmptyFiled_ShouldReturnMessageWithSingleField() {
        String message = ErrorMessages.getMustNotBeEmpty("name");

        assertEquals("'name' must not be empty", message);
    }

    @Test
    void getMustNotBeEmpty_WhenMultipleEmptyFiled_ShouldReturnMessageWithMultipleFields() {
        String message = ErrorMessages.getMustNotBeEmpty("name", "surname");

        assertEquals("'name' and 'surname' must not be empty", message);
    }

    @Test
    void getDatesHaveBeenBooked_WhenSingleBookedDate_ShouldReturnMessageWithSingleBookedDate() {
        LocalDate fromDate = LocalDate.of(2023, 5, 5);
        LocalDate toDate = LocalDate.of(2023, 5, 7);

        String message = ErrorMessages.getDatesHaveBeenBooked(List.of(Pair.of(fromDate, toDate)));

        assertEquals("These dates have been booked: [2023-05-05 - 2023-05-07]", message);
    }

    @Test
    void getDatesHaveBeenBooked_WhenMultipleBookedDate_ShouldReturnMessageWithMultipleBookedDate() {
        LocalDate firstFromDate = LocalDate.of(2023, 5, 5);
        LocalDate firstToDate = LocalDate.of(2023, 5, 7);

        LocalDate secondFromDate = LocalDate.of(2023, 5, 8);
        LocalDate secondToDate = LocalDate.of(2023, 5, 10);

        String message = ErrorMessages.getDatesHaveBeenBooked(List.of(Pair.of(firstFromDate, firstToDate), Pair.of(secondFromDate, secondToDate)));

        assertEquals("These dates have been booked: [2023-05-05 - 2023-05-07, 2023-05-08 - 2023-05-10]", message);
    }
}