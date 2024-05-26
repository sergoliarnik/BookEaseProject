package org.example.bookease.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Columns;

@Entity
@Getter
@Setter
public class Request {
    @Id
    private String id;

    private String name;

    private String email;

    private String subject;

    @Column(length = 3000)
    private String message;

    private boolean newCompanyRequest;
}
