package org.example.bookease.service.impl;

import org.example.bookease.service.TableService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class TableServiceImpl implements TableService {
}
