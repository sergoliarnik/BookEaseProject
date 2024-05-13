package org.example.bookease.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Getter
@Setter
public class Room {
    @Id
    private String id;

    @Enumerated(EnumType.STRING)
    private RoomType type;

    private int pricePerNight;

    private int maxPeople;

    private int beds;

    private int size;

    private String description;

    private String view;

    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

    @OneToMany(mappedBy = "room")
    private List<RoomReservation> roomReservationList;

    @OneToMany(mappedBy = "room")
    private List<RoomImage> images;
}

