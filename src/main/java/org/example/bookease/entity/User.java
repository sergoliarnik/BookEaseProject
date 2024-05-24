package org.example.bookease.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity(name = "users")
@Getter
@Setter
public class User {
    @Id
    private String id;

    @Column(nullable = false, unique = true, length = 100)
    private String email;

    @Column(nullable = false, length = 100)
    private String name;

    @Column(nullable = false, length = 100)
    private String surname;

    private String password;

    @Enumerated
    @Column(nullable = false)
    private UserRole role;

    @OneToMany(mappedBy = "user")
    private List<TableReservation> tableReservationList;

    @OneToMany(mappedBy = "user")
    private List<RoomReservation> roomReservationList;

    @OneToOne(mappedBy = "user")
    private Company company;
}
