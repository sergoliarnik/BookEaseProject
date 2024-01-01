package org.example.bookease.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Getter
@Setter
public class Company {
    @Id
    private String id;

    private String name;

    @OneToMany(mappedBy = "company")
    List<Hotel> hotels;

    @OneToMany(mappedBy = "company")
    List<Restaurant> restaurants;
}
