package org.example.bookease.service.impl;

import org.example.bookease.entity.Table;
import org.example.bookease.repository.TableRepo;
import org.example.bookease.service.TableService;
import org.springframework.stereotype.Service;

@Service
public class TableServiceImpl extends AbstractCrudServiceImpl<Table> implements TableService {
    public TableServiceImpl(TableRepo repo) {
        super(repo);
    }

}
