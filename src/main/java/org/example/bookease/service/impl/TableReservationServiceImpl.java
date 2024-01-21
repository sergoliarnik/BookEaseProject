package org.example.bookease.service.impl;

import org.example.bookease.entity.TableReservation;
import org.example.bookease.repository.TableReservationRepo;
import org.springframework.stereotype.Service;

@Service
public class TableReservationServiceImpl extends AbstractCrudServiceImpl<TableReservation> {
    protected TableReservationServiceImpl(TableReservationRepo repo) {
        super(repo);
    }
}
