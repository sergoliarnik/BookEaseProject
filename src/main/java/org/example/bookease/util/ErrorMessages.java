package org.example.bookease.util;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.springframework.data.util.Pair;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public final class ErrorMessages {
    public static String getNotFound(String entityName, String field, String fieldValue) {
        return String.format("'%s' with '%s': '%s' not found", entityName, field, fieldValue);
    }

    public static String getFromDateMustBeBeforeToDate() {
        return "'From' date must be before 'To' date";
    }

    public static String getMustNotBeEmpty(String... fields) {
        String fieldsWithSeparator = Arrays.stream(fields)
                .map(f -> String.format("'%s'", f))
                .collect(Collectors.joining(" and "));
        return String.format("%s must not be empty", fieldsWithSeparator);
    }

    public static String getDatesHaveBeenBooked(List<Pair<LocalDate, LocalDate>> dates) {
        String datesWithSeparator = dates.stream()
                .map(p -> String.format("%s - %s", p.getFirst(), p.getSecond()))
                .collect(Collectors.joining(", ", "[", "]"));

        return "These dates have been booked: " + datesWithSeparator;
    }

    public static String getUserIsNotOwner(String email) {
        return String.format("User with 'email': %s is not 'OWNER'", email);
    }
}
