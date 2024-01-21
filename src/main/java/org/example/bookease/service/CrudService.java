package org.example.bookease.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CrudService<T> {
    T findById(String id);

    Page<T> findAll(Pageable pageable);

    T save(T t);

    T update(T t);

    void delete(String id);
}
