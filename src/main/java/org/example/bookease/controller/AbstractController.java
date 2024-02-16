package org.example.bookease.controller;

import org.example.bookease.service.CrudService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public abstract class AbstractController<T> {
    protected CrudService<T> service;

    protected AbstractController(CrudService<T> service) {
        this.service = service;
    }

    ResponseEntity<T> findById(String id) {
        return ResponseEntity.ok(service.findById(id));
    }

    ResponseEntity<Page<T>> findAll(Pageable pageable) {
        return ResponseEntity.ok(service.findAll(pageable));
    }

    ResponseEntity<T> save(T t) {
        return ResponseEntity.status(HttpStatus.CREATED).body(service.save(t));
    }

    ResponseEntity<T> update(T t) {
        return ResponseEntity.ok(service.update(t));
    }

    ResponseEntity<Void> delete(String id) {
        service.delete(id);
        return ResponseEntity.noContent().build();
    }
}
