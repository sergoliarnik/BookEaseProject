package org.example.bookease.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity(name = "tables")
@Getter
@Setter
public class Table {
    @Id
    private String id;

    private String number;

    @OneToMany(mappedBy = "table")
    private List<TableReservation> tableReservationList;
}
